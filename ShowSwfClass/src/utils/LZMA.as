package utils
{
	import flash.system.Capabilities;
	import flash.utils.ByteArray;
	
	public class LZMA{
		
		public static function decode(data:ByteArray):ByteArray{
			if(data==null||data.length<16)return null;
			var outputData:ByteArray=new ByteArray();
			outputData.length=data[5]|data[6]<<8|data[7]<<16|data[8]<<24;
			return new Decoder().decode(data[0],data,13,outputData,0,outputData.length)?outputData:null;
		}
		
		public static function decodeSWF(data:ByteArray):ByteArray{
//			if(int(Capabilities.version.split(/[ ,]+/)[1])>10)return data;
			if(data==null||data.length<32)return null;
			var outputData:ByteArray=new ByteArray();
			outputData.length=data[4]|data[5]<<8|data[6]<<16|data[7]<<24;
			if(!new Decoder().decode(data[12],data,17,outputData,8,outputData.length-8)){
				return null;
			}
			for(var i:int=0;i<8;i++){
				outputData[i]=data[i];
			}
			outputData[0]=70;
			outputData[3]=data[13]>0?data[13]:10;
			return outputData;
		}
	}
}

import flash.utils.ByteArray;
class Decoder{
	
	private var code:int=0;
	private var range:int=-1;
	private var inputPos:int=5;
	private var inputData:ByteArray;
	
	public function decode(props:int,inputData:ByteArray,inputPos:int,
		outputData:ByteArray,outputPos:int,outputSize:int):Boolean{
		var bit:int,len:int,state:int,prevByte:int,nowPos64:int;
		var i:int,rep0:int,rep1:int,rep2:int,rep3:int;
		var posStates:int=1<<(props/9/5);
		var numPosBits:int=props/9%5;
		var numPrevBits:int=props%9;
		var posMask:int=(1<<numPosBits)-1;
		var numStates:int=1<<(numPrevBits+numPosBits);
		var posDecoders:Vector.<int>=new Vector.<int>(114,true);
		var isRepDecoders:Vector.<int>=new Vector.<int>(12,true);
		var isRepG0Decoders:Vector.<int>=new Vector.<int>(12,true);
		var isRepG1Decoders:Vector.<int>=new Vector.<int>(12,true);
		var isRepG2Decoders:Vector.<int>=new Vector.<int>(12,true);
		var isMatchDecoders:Vector.<int>=new Vector.<int>(192,true);
		var isRep0LongDecoders:Vector.<int>=new Vector.<int>(192,true);
		var decoders:Vector.<Vector.<int>>=new Vector.<Vector.<int>>(numStates,true);
		var posSlotDecoder:Vector.<BitTreeDecoder>=new Vector.<BitTreeDecoder>(4,true);
		var posAlignDecoder:BitTreeDecoder=new BitTreeDecoder(4);
		var repLenDecoder:LenDecoder=new LenDecoder(posStates);
		var lenDecoder:LenDecoder=new LenDecoder(posStates--);
		initBitModels(isRep0LongDecoders);
		initBitModels(isRepG0Decoders);
		initBitModels(isRepG1Decoders);
		initBitModels(isRepG2Decoders);
		initBitModels(isMatchDecoders);
		initBitModels(isRepDecoders);
		initBitModels(posDecoders);
		for(i=0;i<numStates;i++){
			initBitModels(decoders[i]=new Vector.<int>(0x300,true));
		}
		for(i=0;i<4;i++){
			posSlotDecoder[i]=new BitTreeDecoder(6);
		}
		for(i=0;i<5;i++){
			code=(code<<8)|inputData[inputPos+i];
		}
		this.inputPos+=inputPos;
		this.inputData=inputData;
		while(nowPos64<outputSize){
			var posState:int=nowPos64&posStates;
			if(decodeBit(isMatchDecoders,(state<<4)+posState)==0){
				i=((nowPos64&posMask)<<numPrevBits)+((prevByte&0xFF)>>>(8-numPrevBits));
				if(state<7){
					for(prevByte=1;prevByte<0x100;){
						prevByte=(prevByte<<1)|decodeBit(decoders[i],prevByte);
					}
				}
				else{
					var matchByte:int=outputData[outputPos-rep0-1];
					for(prevByte=1;prevByte<0x100;matchByte<<=1){
						var matchBit:int=(matchByte>>7)&1;
						bit=decodeBit(decoders[i],((1+matchBit)<<8)+prevByte);
						prevByte=(prevByte<<1)|bit;
						if(matchBit!=bit){
							while(prevByte<0x100){
								prevByte=(prevByte<<1)|decodeBit(decoders[i],prevByte);
							}
							break;
						}
					}
				}
				state=state<4?0:state<10?state-3:state-6;
				outputData[outputPos++]=prevByte;
				nowPos64++;
			}
			else{
				if(decodeBit(isRepDecoders,state)==1){
					len=0;
					if(decodeBit(isRepG0Decoders,state)==0){
						if(decodeBit(isRep0LongDecoders,(state<<4)+posState)==0){
							state=state<7?9:11;
							len=1;
						}
					}
					else{
						var distance:int;
						if(decodeBit(isRepG1Decoders,state)==0) distance=rep1;
						else{
							if(decodeBit(isRepG2Decoders,state)==0) distance=rep2;
							else{
								distance=rep3;
								rep3=rep2;
							}
							rep2=rep1;
						}
						rep1=rep0;
						rep0=distance;
					}
					if(len==0){
						len=repLenDecoder.decode(this,posState)+2;
						state=state<7?8:11;
					}
				}
				else{
					rep3=rep2;
					rep2=rep1;
					rep1=rep0;
					state=state<7?7:10;
					len=lenDecoder.decode(this,posState)+2;
					var posSlot:int=posSlotDecoder[len-2<4?len-2:3].decode(this);
					if(posSlot>=4){
						var numDirectBits:int=(posSlot>>1)-1;
						rep0=((2|(posSlot&1))<<numDirectBits);
						if(posSlot<14){
							var m:int=1;
							var symbol:int=0;
							var startIndex:int=rep0-posSlot-1;
							for(var bitIndex:int=0;bitIndex<numDirectBits;bitIndex++){
								bit=decodeBit(posDecoders,startIndex+m);
								m<<=1;
								m+=bit;
								symbol|=(bit<<bitIndex);
							}
							rep0+=symbol;
						}
						else{
							rep0+=(decodeDirectBits(numDirectBits-4)<<4);
							rep0+=posAlignDecoder.reverseDecode(this);
							if(rep0<0){
								if(rep0==-1)break;
								return false;
							}
						}
					}
					else rep0=posSlot;
				}
				for(i=0;i<len;i++){
					outputData[outputPos]=outputData[outputPos-rep0-1];
					outputPos++;
				}
				nowPos64+=len;
				prevByte=outputData[outputPos-1];
			}
		}
		inputData=null;
		return true;
	}
	
	public function decodeBit(probs:Vector.<int>,index:int):int{
		var prob:int=probs[index];
		var newBound:int=(range>>>11)*prob;
		if((code^0x80000000)<(newBound^0x80000000)){
			range=newBound;
			probs[index]=prob+((2048-prob)>>>5);
			if((range&0xff000000)==0){
				code=(code<<8)|inputData[inputPos];
				inputPos++;
				range<<=8;
			}
			return 0;
		}
		else{
			range-=newBound;
			code-=newBound;
			probs[index]=prob-((prob)>>>5);
			if((range&0xff000000)==0){
				code=(code<<8)|inputData[inputPos];
				inputPos++;
				range<<=8;
			}
			return 1;
		}
	}
	
	public function decodeDirectBits(numTotalBits:int):int{
		var result:int=0;
		for(var i:int=numTotalBits;i!=0;i--){
			range>>>=1;
			var t:int=((code-range)>>>31);
			code-=range&(t-1);
			result=(result<<1)|(1-t);
			if((range&0xff000000)==0){
				code=(code<<8)|inputData[inputPos];
				inputPos++;
				range<<=8;
			}
		}
		return result;
	}
}

class LenDecoder{
	
	private var lowCoder:Vector.<BitTreeDecoder>=new Vector.<BitTreeDecoder>(16,true);
	private var midCoder:Vector.<BitTreeDecoder>=new Vector.<BitTreeDecoder>(16,true);
	private var highCoder:BitTreeDecoder=new BitTreeDecoder(8);
	private var choice:Vector.<int>=new Vector.<int>(2,true);
	
	public function LenDecoder(posStates:int){
		initBitModels(choice);
		for(var i:int=0;i<posStates;i++){
			lowCoder[i]=new BitTreeDecoder(3);
			midCoder[i]=new BitTreeDecoder(3);
		}
	}
	
	public function decode(decoder:Decoder,posState:int):int{
		if(decoder.decodeBit(choice,0)==0){
			return lowCoder[posState].decode(decoder);
		}
		var symbol:int=8;
		if(decoder.decodeBit(choice,1)==0){
			symbol+=midCoder[posState].decode(decoder);
		}
		else{
			symbol+=8+highCoder.decode(decoder);
		}
		return symbol;
	}
}

class BitTreeDecoder{
	
	private var numBitLevels:int;
	private var models:Vector.<int>;
	
	public function BitTreeDecoder(level:int){
		models=new Vector.<int>(1<<level,true);
		initBitModels(models);
		numBitLevels=level;
	}
	
	public function decode(decoder:Decoder):int{
		var m:int=1;
		for(var bitIndex:int=numBitLevels;bitIndex!=0;bitIndex--){
			m=(m<<1)+decoder.decodeBit(models,m);
		}
		return m-(1<<numBitLevels);
	}
	
	public function reverseDecode(decoder:Decoder):int{
		var m:int=1;
		var symbol:int=0;
		for(var bitIndex:int=0;bitIndex<numBitLevels;bitIndex++){
			var bit:int=decoder.decodeBit(models,m);
			m<<=1;
			m+=bit;
			symbol|=(bit<<bitIndex);
		}
		return symbol;
	}
}

function initBitModels(probs:Vector.<int>):void{
	for(var i:int=0,n:int=probs.length;i<n;i++){
		probs[i]=1024;
	}
}
