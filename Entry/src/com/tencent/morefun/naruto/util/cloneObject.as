package com.tencent.morefun.naruto.util
{
   import flash.utils.getQualifiedClassName;
   import flash.net.registerClassAlias;
   import flash.utils.getDefinitionByName;
   import flash.utils.ByteArray;
   
   public function cloneObject(param1:Object) : *
   {
      if(param1 == null)
      {
         return null;
      }
      var _loc2_:String = getQualifiedClassName(param1);
      registerClassAlias("alias." + _loc2_,getDefinitionByName(_loc2_) as Class);
      var _loc3_:ByteArray = new ByteArray();
      _loc3_.writeObject(param1);
      _loc3_.position = 0;
      return _loc3_.readObject();
   }
}
