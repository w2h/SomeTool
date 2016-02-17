package com.tencent.morefun.framework.nofify
{
   public class StringArgsNotice extends BaseNotice
   {
       
      public var arg1:String;
      
      public var arg2:String;
      
      public var arg3:String;
      
      public function StringArgsNotice(param1:String = null, param2:String = null, param3:String = null)
      {
         super();
         this.arg1 = param1;
         this.arg2 = param2;
         this.arg3 = param3;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this.arg1 = null;
         this.arg2 = null;
         this.arg3 = null;
      }
   }
}
