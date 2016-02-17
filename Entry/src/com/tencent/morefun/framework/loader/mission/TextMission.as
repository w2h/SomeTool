package com.tencent.morefun.framework.loader.mission
{
   import flash.utils.ByteArray;
   
   public class TextMission extends Mission
   {
       
      public var text:String;
      
      public function TextMission(param1:String, param2:String, param3:Boolean = true, param4:uint = 1, param5:String = null, param6:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function convert(param1:ByteArray) : void
      {
         original = param1;
         var _loc2_:ByteArray = bytes;
         uncompress(_loc2_);
         _loc2_.position = 0;
         this.text = _loc2_.toString();
         complete();
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this.text = null;
      }
   }
}
