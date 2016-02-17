package com.tencent.morefun.naruto.plugin.exui.avatar
{
   import def.NinjaAssetDef;
   
   public class NinjaAvatar extends Avatar
   {
       
      public function NinjaAvatar(param1:int = 0, param2:int = 0)
      {
         super(param1,param2);
      }
      
      public function loadLarge(param1:uint) : void
      {
         this.loadByType(param1,NinjaAssetDef.HEAD_BIG);
      }
      
      public function loadSmall(param1:uint) : void
      {
         this.loadByType(param1,NinjaAssetDef.HEAD_SMALL);
      }
      
      public function loadByType(param1:uint, param2:String) : void
      {
         if(NinjaAssetDef.isMajor(param1))
         {
            var param1:uint = int(param1 / 100) * 100 + 1;
         }
         var _loc3_:String = NinjaAssetDef.getAsset(param2,param1);
         load(_loc3_);
      }
   }
}
