package com.tencent.morefun.naruto.mmefile.render.datas
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.naruto.util.CollectionClearUtil;
   
   public class MmeData
   {
      
      public static const ClassAlias:String = "MmeData";
       
      public var actionDatas:Vector.<com.tencent.morefun.naruto.mmefile.render.datas.ActionData>;
      
      public var frameRate:int = 24;
      
      private var xml:XML;
      
      public var assetDatas:Dictionary;
      
      public var advanced:Boolean;
      
      public function MmeData()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:com.tencent.morefun.naruto.mmefile.render.datas.ActionData = null;
         var _loc5_:AssetData = null;
         this.xml = param1;
         this.actionDatas = new Vector.<ActionData>();
         this.frameRate = param1.@frameRate;
         this.advanced = String(param1.@advanced) == "true";
         for each(_loc2_ in param1.action)
         {
            _loc4_ = new com.tencent.morefun.naruto.mmefile.render.datas.ActionData();
            _loc4_.decode(_loc2_);
            this.actionDatas.push(_loc4_);
         }
         this.assetDatas = new Dictionary();
         for each(_loc3_ in param1.asset)
         {
            _loc5_ = new AssetData();
            _loc5_.decode(_loc3_);
            this.assetDatas[_loc5_.className] = _loc5_;
         }
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(this.assetDatas,"autoDestroy");
         this.assetDatas = null;
         this.xml = null;
         this.assetDatas = null;
      }
   }
}
