package com.tencent.morefun.naruto.mmefile.render.datas
{
   public class AssetData
   {
      
      public static const ClassAlias:String = "AssetData";
       
      public var className:String;
      
      public var x:int;
      
      public var y:int;
      
      public var assetName:String;
      
      public function AssetData()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         this.className = param1.@className;
         this.x = param1.@x;
         this.y = param1.@y;
         this.assetName = param1.@assetName;
      }
      
      public function autoSetNull() : void
      {
         this.className = null;
         this.assetName = null;
      }
   }
}
