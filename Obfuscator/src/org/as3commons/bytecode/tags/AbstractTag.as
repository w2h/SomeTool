package org.as3commons.bytecode.tags
{
   import org.as3commons.lang.Assert;
   
   public class AbstractTag implements ISWFTag
   {
       
      private var _id:uint;
      
      private var _name:String;
      
      public function AbstractTag(param1:uint, param2:String)
      {
         super();
         this.initAbstractTag(param1,param2);
      }
      
      private function initAbstractTag(param1:uint, param2:String) : void
      {
         Assert.hasText(param2,"name argument must not be empty or null");
         this._id = param1;
         this._name = param2;
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
   }
}
