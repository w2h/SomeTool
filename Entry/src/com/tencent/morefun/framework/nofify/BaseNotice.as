package com.tencent.morefun.framework.nofify
{
   public class BaseNotice
   {
       
      public function BaseNotice()
      {
         super();
      }
      
      public function send() : void
      {
         NotifyCenter.notify(this);
      }
      
      public function getType() : String
      {
         throw new Error("必须由子类实现");
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
