package com.tencent.morefun.framework.view
{
   import com.tencent.morefun.framework.nofify.interfaces.IReceiver;
   import com.tencent.morefun.framework.nofify.NotifyCenter;
   import com.tencent.morefun.framework.nofify.BaseNotice;
   import com.tencent.morefun.naruto.model.BaseModel;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   
   public class ViewCenter implements IReceiver
   {
       
      public function ViewCenter()
      {
         super();
         this.init();
      }
      
      public function getType() : String
      {
         throw new Error("该接口必须由子类实现");
      }
      
      public function init() : void
      {
         NotifyCenter.registerReceive(this);
      }
      
      public function dispose() : void
      {
         NotifyCenter.unRegisterReceive(this);
      }
      
      public function receive(param1:BaseNotice) : void
      {
      }
      
      public function getModel(param1:String) : BaseModel
      {
         return Facade.getInstance().getPluginManager().retrieveModel(param1);
      }
      
      public function getResource(param1:String, param2:String) : *
      {
         return Facade.getInstance().getPluginManager().getPluginResource(param1)[param2];
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
