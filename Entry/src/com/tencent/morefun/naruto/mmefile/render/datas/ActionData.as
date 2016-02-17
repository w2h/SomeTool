package com.tencent.morefun.naruto.mmefile.render.datas
{
   public class ActionData
   {
      
      public static const ClassAlias:String = "ActionData";
       
      public var id:int;
      
      public var name:String;
      
      public var layerDatas:Vector.<com.tencent.morefun.naruto.mmefile.render.datas.LayerData>;
      
      public function ActionData()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:com.tencent.morefun.naruto.mmefile.render.datas.LayerData = null;
         this.id = param1.@id;
         this.name = param1.@name;
         this.layerDatas = new Vector.<LayerData>();
         for each(_loc2_ in param1.layer)
         {
            _loc3_ = new com.tencent.morefun.naruto.mmefile.render.datas.LayerData();
            _loc3_.decode(_loc2_);
            this.layerDatas.push(_loc3_);
         }
      }
      
      public function autoSetNull() : void
      {
         this.name = null;
      }
   }
}
