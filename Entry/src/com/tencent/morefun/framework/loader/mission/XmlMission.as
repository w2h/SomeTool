package com.tencent.morefun.framework.loader.mission
{
   import flash.utils.ByteArray;
   import flash.system.System;
   
   public class XmlMission extends Mission
   {
       
      public var xml:XML;
      
      public function XmlMission(param1:String, param2:String, param3:Boolean = true, param4:uint = 1, param5:String = null, param6:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function convert(param1:ByteArray) : void
      {
         var source:ByteArray = param1;
         original = source;
         var useBytes:ByteArray = bytes;
         uncompress(useBytes);
         useBytes.position = 0;
         try
         {
            this.xml = XML(useBytes.toString());
            complete();
            return;
         }
         catch(err:Error)
         {
            error();
            return;
         }
      }
      
      override public function destroy() : void
      {
         System.disposeXML(this.xml);
         this.xml = null;
         super.destroy();
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this.xml = null;
      }
   }
}
