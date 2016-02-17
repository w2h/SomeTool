package com.tencent.morefun.naruto.utils
{
   import flash.net.registerClassAlias;
   import flash.utils.getQualifiedClassName;
   
   public function registerAlias(param1:Class) : void
   {
      registerClassAlias("alias." + getQualifiedClassName(param1),param1);
   }
}
