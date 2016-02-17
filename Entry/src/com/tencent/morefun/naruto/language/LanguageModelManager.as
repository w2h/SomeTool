package com.tencent.morefun.naruto.language
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.naruto.util.CollectionClearUtil;
   
   public class LanguageModelManager
   {
       
      protected var map:Dictionary;
      
      public function LanguageModelManager()
      {
         super();
         this.map = new Dictionary();
      }
      
      public function retrieveLanguModel(param1:String) : LanguModel
      {
         return this.map[param1];
      }
      
      public function hasLanguModel(param1:String) : Boolean
      {
         return this.map[param1] != null;
      }
      
      public function registerLanguageModel(param1:LanguModel) : void
      {
         if(this.hasLanguModel(param1.getLanguModelName()))
         {
            throw new Error("Model已存在!");
         }
         this.map[param1.getLanguModelName()] = param1;
      }
      
      public function removeLanguageModel(param1:String) : void
      {
         if(!this.hasLanguModel(param1))
         {
            throw new Error("Model不存在!");
         }
         delete this.map[param1];
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(this.map,"autoDestroy");
         this.map = null;
         this.map = null;
      }
   }
}
