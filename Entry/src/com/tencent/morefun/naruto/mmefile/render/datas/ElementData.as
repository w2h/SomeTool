package com.tencent.morefun.naruto.mmefile.render.datas
{
   public class ElementData extends BaseElementData
   {
      
      public static const ClassAlias:String = "ElementData";
      
      private static const ASSET_NAME:String = "Asset_";
      
      private static const PROPERTY_SCALE_X:String = "@scaleX";
      
      private static const PROPERTY_SCALE_Y:String = "@scaleY";
      
      private static const PROPERTY_ROTATION:String = "@rotation";
      
      private static const PROPERTY_ALPHA:String = "@alpha";
      
      private static const PROPERTY_BLEND_MODE:String = "@blendMode";
      
      private static const PROPERTY_EXT_NAME:String = "@extname";
       
      public var assetId:int;
      
      public var assetName:String;
      
      public var alpha:Number = 1;
      
      public var scaleX:Number = 1;
      
      public var scaleY:Number = 1;
      
      public var rotation:Number = 0;
      
      public var blendMode:String;
      
      public var color:com.tencent.morefun.naruto.mmefile.render.datas.ColorData;
      
      public var extname:String;
      
      public function ElementData()
      {
         super();
         this.color = new com.tencent.morefun.naruto.mmefile.render.datas.ColorData();
      }
      
      override public function decode(param1:XML) : void
      {
         super.decode(param1);
         this.assetId = param1.@assetId;
         this.assetName = ASSET_NAME + this.assetId;
         if(param1.hasOwnProperty(PROPERTY_SCALE_X))
         {
            this.scaleX = param1.@scaleX;
         }
         else
         {
            this.scaleX = 1;
         }
         if(param1.hasOwnProperty(PROPERTY_SCALE_Y))
         {
            this.scaleY = param1.@scaleY;
         }
         else
         {
            this.scaleY = 1;
         }
         if(param1.hasOwnProperty(PROPERTY_ROTATION))
         {
            this.rotation = param1.@rotation;
         }
         else
         {
            this.rotation = 0;
         }
         if(param1.hasOwnProperty(PROPERTY_ALPHA))
         {
            this.alpha = param1.@alpha;
         }
         else
         {
            this.alpha = 1;
         }
         if(param1.hasOwnProperty(PROPERTY_BLEND_MODE))
         {
            this.blendMode = param1.@blendMode;
         }
         this.color.decode(param1);
         if(param1.hasOwnProperty(PROPERTY_EXT_NAME))
         {
            this.extname = param1.@extname;
            this.assetId = -1;
         }
      }
      
      override public function clone() : BaseElementData
      {
         var _loc1_:ElementData = new ElementData();
         _loc1_.assetId = this.assetId;
         _loc1_.assetName = this.assetName;
         _loc1_.extname = this.extname;
         _loc1_.x = x;
         _loc1_.y = y;
         _loc1_.alpha = this.alpha;
         _loc1_.scaleX = this.scaleX;
         _loc1_.scaleY = this.scaleY;
         _loc1_.rotation = this.rotation;
         _loc1_.blendMode = this.blendMode;
         _loc1_.color = this.color.clone();
         return _loc1_;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this.assetName = null;
         this.blendMode = null;
         this.color = null;
         this.extname = null;
      }
   }
}
