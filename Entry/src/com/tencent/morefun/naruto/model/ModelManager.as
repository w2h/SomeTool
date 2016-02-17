package com.tencent.morefun.naruto.model
{
   public class ModelManager
   {
       
      protected var map:Object;
      
      public function ModelManager()
      {
         super();
         this.map = {};
      }
      
      public function retrieveModel(param1:String) : BaseModel
      {
         return this.map[param1];
      }
      
      public function hasModel(param1:String) : Boolean
      {
         return this.retrieveModel(param1) != null;
      }
      
      public function registerModel(param1:BaseModel) : void
      {
         if(this.hasModel(param1.getModelName()))
         {
            throw new Error("Model已存在!");
         }
         this.map[param1.getModelName()] = param1;
      }
      
      public function removeModel(param1:String) : void
      {
         if(!this.hasModel(param1))
         {
            throw new Error("Model不存在!");
         }
         delete this.map[param1];
      }
      
      public function removeAllModel(param1:String) : void
      {
         var _loc2_:BaseModel = null;
         var _loc3_:Array = new Array();
         for each(_loc2_ in this.map)
         {
            if(_loc2_.registerPluginName == param1)
            {
               _loc3_.push(_loc2_);
            }
         }
         while(_loc3_.length > 0)
         {
            _loc2_ = _loc3_.pop() as BaseModel;
            this.removeModel(_loc2_.getModelName());
         }
      }
      
      public function autoSetNull() : void
      {
         this.map = null;
      }
   }
}
