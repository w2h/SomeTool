package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.IEquals;
   import org.as3commons.bytecode.abc.enum.MultinameKind;
   
   public final class MultinameG extends BaseMultiname
   {
       
      private var _qualifiedName:org.as3commons.bytecode.abc.QualifiedName;
      
      private var _parameters:Array;
      
      public function MultinameG(param1:org.as3commons.bytecode.abc.QualifiedName, param2:Array, param3:MultinameKind = null)
      {
         var param3:MultinameKind = param3 || MultinameKind.GENERIC;
         super(param3);
         assertAppropriateMultinameKind([MultinameKind.GENERIC],param3);
         this._qualifiedName = param1;
         this._parameters = param2;
      }
      
      override public function clone() : *
      {
         return new MultinameG(this._qualifiedName.clone(),this._parameters,kind);
      }
      
      public function get paramCount() : uint
      {
         return this._parameters.length;
      }
      
      public function get parameters() : Array
      {
         return this._parameters;
      }
      
      public function set parameters(param1:Array) : void
      {
         this._parameters = param1;
      }
      
      public function get qualifiedName() : org.as3commons.bytecode.abc.QualifiedName
      {
         return this._qualifiedName;
      }
      
      public function set qualifiedName(param1:org.as3commons.bytecode.abc.QualifiedName) : void
      {
         this._qualifiedName = param1;
      }
      
      override public function equals(param1:Object) : Boolean
      {
         var _loc3_:* = 0;
         var _loc2_:MultinameG = param1 as MultinameG;
         if(_loc2_ != null)
         {
            if(this._qualifiedName.equals(_loc2_.qualifiedName))
            {
               if(this.paramCount == _loc2_.paramCount)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.paramCount)
                  {
                     if(!IEquals(this._parameters[_loc3_]).equals(_loc2_.parameters[_loc3_]))
                     {
                        return false;
                     }
                     _loc3_++;
                  }
                  return super.equals(param1);
               }
            }
         }
         return false;
      }
      
      override public function toString() : String
      {
         return "MultinameG{qualifiedName:" + this._qualifiedName + ", parameters:[" + this.paramatersToString(this._parameters) + "]}";
      }
      
      private function paramatersToString(param1:Array) : String
      {
         var _loc3_:BaseMultiname = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1)
         {
            _loc2_[_loc2_.length] = _loc3_.toString();
         }
         return _loc2_.join(",");
      }
   }
}
