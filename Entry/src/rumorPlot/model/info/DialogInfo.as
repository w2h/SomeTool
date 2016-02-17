package rumorPlot.model.info
{
   public class DialogInfo
   {
       
      public var curIndex:int;
      
      public var curTitle:String;
      
      public var curPos:int;
      
      public var pos1:String;
      
      public var pos2:String;
      
      public var pos3:String;
      
      public var pos4:String;
      
      public var pos5:String;
      
      public var pos6:String;
      
      public var addPhotoID:String;
      
      public var addPhotoType:int;
      
      public var addPhotoPos:int;
      
      public var removePhotoPos:String;
      
      public var removePhotoType:int;
      
      public var msg:String;
      
      public var bgID:int;
      
      public var bgType:int;
      
      public var bgEffect:int;
      
      public var soundID:int;
      
      public var shockType:int;
      
      public var dialogType:int;
      
      public var curFace:String;
      
      public function DialogInfo()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         this.curIndex = param1.@curIndex;
         this.curTitle = param1.@curTitle;
         this.curPos = param1.@curPos;
         this.pos1 = param1.@pos1;
         this.pos2 = param1.@pos2;
         this.pos3 = param1.@pos3;
         this.pos4 = param1.@pos4;
         this.pos5 = param1.@pos5;
         this.pos6 = param1.@pos6;
         this.addPhotoID = param1.@addPhotoID;
         this.addPhotoType = param1.@addPhotoType;
         this.addPhotoPos = param1.@addPhotoPos;
         this.removePhotoPos = param1.@removePhotoPos;
         this.removePhotoType = param1.@removePhotoType;
         this.msg = param1.@msg;
         this.bgID = param1.@bgID;
         this.bgType = param1.@bgType;
         this.bgEffect = param1.@bgEffect;
         this.soundID = param1.@soundID;
         this.shockType = param1.@shockType;
         this.dialogType = param1.@dialogType;
         this.curFace = param1.@curFace;
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <DialogInfo/>;
         this.curIndex && (_loc1_.@curIndex = this.curIndex);
         this.curTitle && (_loc1_.@curTitle = this.curTitle);
         this.curPos && (_loc1_.@curPos = this.curPos);
         this.pos1 && (_loc1_.@pos1 = this.pos1);
         this.pos2 && (_loc1_.@pos2 = this.pos2);
         this.pos3 && (_loc1_.@pos3 = this.pos3);
         this.pos4 && (_loc1_.@pos4 = this.pos4);
         this.pos5 && (_loc1_.@pos5 = this.pos5);
         this.pos6 && (_loc1_.@pos6 = this.pos6);
         this.addPhotoID && (_loc1_.@addPhotoID = this.addPhotoID);
         this.addPhotoType && (_loc1_.@addPhotoType = this.addPhotoType);
         this.addPhotoPos && (_loc1_.@addPhotoPos = this.addPhotoPos);
         this.removePhotoPos && (_loc1_.@removePhotoPos = this.removePhotoPos);
         this.removePhotoType && (_loc1_.@removePhotoType = this.removePhotoType);
         this.msg && (_loc1_.@msg = this.msg);
         this.bgID && (_loc1_.@bgID = this.bgID);
         this.bgType && (_loc1_.@bgType = this.bgType);
         this.bgEffect && (_loc1_.@bgEffect = this.bgEffect);
         this.soundID && (_loc1_.@soundID = this.soundID);
         this.shockType && (_loc1_.@shockType = this.shockType);
         this.dialogType && (_loc1_.@dialogType = this.dialogType);
         this.curFace && (_loc1_.@curFace = this.curFace);
         return _loc1_;
      }
   }
}
