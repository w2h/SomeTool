package com.tencent.morefun.naruto.sound.data
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.naruto.sound.def.BgMusicDef;
   import com.tencent.morefun.naruto.sound.def.BgMusicTypeDef;
   
   public class BgMusicConfig
   {
      
      private namespace bgm = "com.tencent.morefun.naruto.sound.data:BgMusicConfig/private:bgm";
       
      private var dict:Dictionary;
      
      public function BgMusicConfig()
      {
         super();
      }
      
      public function importConfig(param1:XML) : void
      {
         var _loc2_:BgMusicInfo = null;
         var _loc3_:XML = null;
         this.dict = new Dictionary(false);
         for each(_loc3_ in param1.item)
         {
            _loc2_ = this.decodeMusicInfo(_loc3_);
            this.dict[_loc2_.id] = _loc2_;
         }
      }
      
      private function decodeMusicInfo(param1:XML) : BgMusicInfo
      {
         var _loc2_:BgMusicInfo = new BgMusicInfo();
         _loc2_.id = this.parseInt(param1.@id);
         _loc2_.envAudio = this.url2std(param1.@envAudio);
         _loc2_.bgMusics = this.str2vec(param1.@bgMusics,this.url2std);
         _loc2_.interval = this.parseInt(param1.@interval);
         _loc2_.gapBegining = this.parseInt(param1.@gapBegining);
         _loc2_.gapEnding = this.parseInt(param1.@gapEnding);
         if(!this.isEmpty(param1.@fadeIn))
         {
            _loc2_.durationFadeIn = this.parseInt(param1.@fadeIn);
         }
         if(!this.isEmpty(param1.@fadeOut))
         {
            _loc2_.durationFadeOut = this.parseInt(param1.@fadeOut);
         }
         _loc2_.description = this.value(param1.@desc);
         return _loc2_;
      }
      
      function parseInt(param1:String) : uint
      {
         return parseInt(this.value(param1));
      }
      
      function value(param1:String) : String
      {
         return this.isEmpty(param1)?"":param1;
      }
      
      private function isEmpty(param1:String) : Boolean
      {
         return new RegExp("^\\{[^}]+\\}$").test(param1) || param1 == "";
      }
      
      private function url2std(param1:String) : String
      {
         return param1.replace(new RegExp("\\s*|\\s*$","g"),"").replace(new RegExp("\\\\","g"),"/");
      }
      
      private function str2vec(param1:String, param2:Function = null) : Vector.<String>
      {
         var _loc3_:Vector.<String> = Vector.<String>(param1.split(new RegExp(",","g")));
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc3_[_loc4_] = this.value(_loc3_[_loc4_]);
            if(this.isEmpty(_loc3_[_loc4_]))
            {
               _loc3_.splice(_loc4_--,1);
            }
            else if(param2 != null)
            {
               _loc3_[_loc4_] = param2.call(null,_loc3_[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function getDefaultMusicPool(param1:uint) : Vector.<BgMusicInfo>
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function getDefaultMusicInfo(param1:uint) : BgMusicInfo
      {
         var _loc2_:Vector.<BgMusicInfo> = this.getDefaultMusicPool(param1);
         var _loc3_:BgMusicInfo = _loc2_.length?_loc2_[_loc2_.length * Math.random() >> 0]:null;
         return _loc3_;
      }
      
      public function getMusicInfo(param1:uint) : BgMusicInfo
      {
         return this.dict[param1];
      }
   }
}
