package com.tencent.morefun.naruto.language
{
   public class LanguModelManager
   {
       
      protected var map:Object;
      
      public function LanguModelManager()
      {
         super();
         this.map = {};
      }
      
      public function retrieveLanguModel(param1:String) : LanguModel
      {
         return this.map[param1];
      }
      
      public function hasLanguModel(param1:String) : Boolean
      {
         return this.map[param1] != null;
      }
      
      public function registerLanguModel(param1:LanguModel) : void
      {
         if(this.hasLanguModel(param1.getLanguModelName()))
         {
            throw new Error("Model已存在!");
         }
         this.map[param1.getLanguModelName()] = param1;
      }
      
      public function removeLanguModel(param1:String) : void
      {
         if(!this.hasLanguModel(param1))
         {
            throw new Error("Model不存在!");
         }
      }
      
      public function autoSetNull() : void
      {
         this.map = null;
      }
   }
}
