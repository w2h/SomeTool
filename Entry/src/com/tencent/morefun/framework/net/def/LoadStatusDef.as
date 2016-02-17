package com.tencent.morefun.framework.net.def
{
   public class LoadStatusDef
   {
      
      public static const WAIT:String = "wait";
      
      public static const LOADING:String = "loading";
      
      public static const COMPLETE:String = "complete";
      
      public static const DISPOSED:String = "disposed";
       
      public function LoadStatusDef()
      {
         super();
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
