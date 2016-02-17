package com.tencent.morefun.framework.nofify.interfaces
{
   import com.tencent.morefun.framework.nofify.BaseNotice;
   
   public interface IReceiver
   {
       
      function receive(param1:BaseNotice) : void;
      
      function getType() : String;
   }
}
