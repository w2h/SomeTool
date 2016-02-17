package com.tencent.morefun.naruto.model
{
   import flash.events.EventDispatcher;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   
   [Event(name="updateFinish",type="com.tencent.morefun.naruto.model.event.ModelEvent")]
   [Event(name="remove",type="com.tencent.morefun.naruto.model.event.ModelEvent")]
   [Event(name="update",type="com.tencent.morefun.naruto.model.event.ModelEvent")]
   public class BaseModel extends EventDispatcher
   {
       
      protected var _registerPluginName:String;
      
      protected var modelName:String;
      
      public function BaseModel(param1:String)
      {
         super();
         this.modelName = param1;
      }
      
      public function getModelName() : String
      {
         return this.modelName;
      }
      
      public function dispModelEvent(param1:String, param2:Object = null, param3:Object = null, param4:Object = null) : void
      {
         dispatchEvent(new ModelEvent(param1,param2,param3,param4));
      }
      
      public function updateFinish() : void
      {
         this.dispModelEvent(ModelEvent.UPDATE_FINISH);
      }
      
      public function autoSetNull() : void
      {
         this.modelName = null;
      }
      
      public function get registerPluginName() : String
      {
         return this._registerPluginName;
      }
      
      public function set registerPluginName(param1:String) : void
      {
         this._registerPluginName = param1;
      }
   }
}
