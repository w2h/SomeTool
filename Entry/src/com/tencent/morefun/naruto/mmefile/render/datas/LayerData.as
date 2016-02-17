package com.tencent.morefun.naruto.mmefile.render.datas
{
   public class LayerData
   {
      
      public static const ClassAlias:String = "LayerData";
       
      public var id:int;
      
      public var frameDatas:Vector.<com.tencent.morefun.naruto.mmefile.render.datas.FrameData>;
      
      public function LayerData()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:com.tencent.morefun.naruto.mmefile.render.datas.FrameData = null;
         this.id = param1.@id;
         this.frameDatas = new Vector.<FrameData>();
         for each(_loc2_ in param1.frame)
         {
            _loc3_ = new com.tencent.morefun.naruto.mmefile.render.datas.FrameData();
            _loc3_.decode(_loc2_);
            this.frameDatas.push(_loc3_);
         }
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
