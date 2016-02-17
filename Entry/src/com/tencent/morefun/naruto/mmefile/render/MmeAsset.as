package com.tencent.morefun.naruto.mmefile.render
{
   import flash.system.ApplicationDomain;
   import com.tencent.morefun.naruto.mmefile.render.utils.registerAlias;
   import com.tencent.morefun.naruto.mmefile.render.datas.MmeData;
   import com.tencent.morefun.naruto.mmefile.render.datas.AssetData;
   import com.tencent.morefun.naruto.mmefile.render.datas.ActionData;
   import com.tencent.morefun.naruto.mmefile.render.datas.LayerData;
   import com.tencent.morefun.naruto.mmefile.render.datas.FrameData;
   import com.tencent.morefun.naruto.mmefile.render.datas.ElementData;
   import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
   import com.tencent.morefun.naruto.mmefile.render.datas.PhantomData;
   import com.tencent.morefun.naruto.mmefile.render.datas.ColorData;
   import flash.utils.Dictionary;
   import flash.utils.ByteArray;
   import com.tencent.morefun.naruto.mmefile.render.datas.FlaData;
   import flash.display.BitmapData;
   import com.tencent.morefun.naruto.mmefile.render.utils.DeleteUtil;
   import com.greensock.TweenLite;
   import com.tencent.morefun.naruto.util.CollectionClearUtil;
   
   public class MmeAsset
   {
      
      private static const KEY_MME_DATA:String = "mmeData";
      
      private static const KEY_APP_DOMAIN:String = "appDomain";
      
      private static const KEY_URL:String = "url";
      
      public static const KEY_CONFIG:String = "Config";
      
      public static const KEY_CONFIG_AMF:String = "ConfigAMF";
      
      private static const KEY_FLA_DATA:String = "flaData";
      
      private static const KEY_DISPOSE:String = "dispose";
      
      private static const KEY_DESTROY:String = "destroy";
      
      public static const mmeAsset:com.tencent.morefun.naruto.mmefile.render.MmeAsset = new com.tencent.morefun.naruto.mmefile.render.MmeAsset();
      
      {
         registerAlias(MmeData);
         registerAlias(AssetData);
         registerAlias(ActionData);
         registerAlias(LayerData);
         registerAlias(FrameData);
         registerAlias(ElementData);
         registerAlias(PointElementData);
         registerAlias(PhantomData);
         registerAlias(ColorData);
      }
      
      private var sharedAppDomain:ApplicationDomain;
      
      private var sharedMmeData:MmeData;
      
      private var assets:Dictionary;
      
      private var isDestroy:Boolean;
      
      public function MmeAsset()
      {
         super();
      }
      
      public static function createObject(param1:String, param2:ApplicationDomain) : Object
      {
         var _loc3_:Class = null;
         var _loc4_:Object = null;
         try
         {
            _loc3_ = param2.getDefinition(param1) as Class;
            if(_loc3_)
            {
               _loc4_ = new _loc3_();
               return _loc4_;
            }
         }
         catch(e:Error)
         {
         }
         return null;
      }
      
      public static function hasObject(param1:String, param2:ApplicationDomain) : Boolean
      {
         var _loc3_:Class = null;
         try
         {
            _loc3_ = param2.getDefinition(param1) as Class;
            return _loc3_ != null;
         }
         catch(e:Error)
         {
         }
         return false;
      }
      
      public function hasAppDomain(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.assets)
         {
            if(_loc2_.hasOwnProperty(KEY_URL) && _loc2_[KEY_URL] == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getAppDomain(param1:String) : ApplicationDomain
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.assets)
         {
            if(_loc2_.hasOwnProperty(KEY_URL) && _loc2_[KEY_URL] == param1)
            {
               return _loc2_[KEY_APP_DOMAIN];
            }
         }
         return null;
      }
      
      public function setSharedAppDomain(param1:ApplicationDomain, param2:String) : void
      {
         this.sharedAppDomain = param1;
         this.sharedMmeData = this.getMmeData(param1,param2);
      }
      
      public function getSharedAppDomain() : ApplicationDomain
      {
         return this.sharedAppDomain;
      }
      
      public function getSharedMmeData() : MmeData
      {
         return this.sharedMmeData;
      }
      
      private function checkAsset(param1:String, param2:ApplicationDomain) : void
      {
         if(!this.assets)
         {
            this.assets = new Dictionary();
         }
         if(!this.assets[param2])
         {
            this.assets[param2] = {};
            this.assets[param2][KEY_APP_DOMAIN] = param2;
         }
      }
      
      function getMmeData(param1:ApplicationDomain, param2:String) : MmeData
      {
         var _loc4_:ByteArray = null;
         var _loc5_:* = undefined;
         var _loc6_:XML = null;
         if(this.isDestroy)
         {
            return null;
         }
         this.checkAsset(KEY_MME_DATA,param1);
         var _loc3_:MmeData = this.assets[param1][KEY_MME_DATA] as MmeData;
         if(!_loc3_)
         {
            _loc4_ = this.createAMF(param1);
            if(_loc4_)
            {
               _loc5_ = _loc4_.readObject();
               _loc4_.position = 0;
               _loc3_ = _loc4_.readObject();
            }
            if(_loc3_ == null)
            {
               _loc3_ = new MmeData();
               _loc6_ = new XML(createObject(KEY_CONFIG,param1));
               _loc3_.decode(_loc6_);
            }
            this.assets[param1][KEY_MME_DATA] = _loc3_;
            if(param2)
            {
               this.assets[param1][KEY_URL] = param2;
            }
         }
         return _loc3_;
      }
      
      private function createAMF(param1:ApplicationDomain) : ByteArray
      {
         var _loc3_:ByteArray = null;
         var _loc2_:ByteArray = createObject(KEY_CONFIG_AMF,param1) as ByteArray;
         if(_loc2_)
         {
            _loc3_ = new ByteArray();
            _loc3_.writeBytes(_loc2_);
            _loc3_.position = 0;
            _loc2_.clear();
            return _loc3_;
         }
         return null;
      }
      
      public function getFlaData(param1:ApplicationDomain) : FlaData
      {
         if(this.isDestroy)
         {
            return null;
         }
         this.checkAsset(KEY_FLA_DATA,param1);
         var _loc2_:FlaData = this.assets[param1][KEY_FLA_DATA] as FlaData;
         return _loc2_;
      }
      
      public function setFlaData(param1:ApplicationDomain, param2:FlaData) : void
      {
         if(this.isDestroy)
         {
            return;
         }
         this.checkAsset(KEY_FLA_DATA,param1);
         this.assets[param1][KEY_FLA_DATA] = param2;
      }
      
      public function getSharedAsset(param1:String) : BitmapData
      {
         if(!this.sharedAppDomain || !this.sharedMmeData)
         {
            return null;
         }
         return this.getAsset(param1,this.sharedAppDomain);
      }
      
      public function getSharedAssetData(param1:String) : AssetData
      {
         var _loc2_:AssetData = null;
         for each(_loc2_ in this.sharedMmeData.assetDatas)
         {
            if(_loc2_.assetName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getAsset(param1:String, param2:ApplicationDomain) : BitmapData
      {
         if(this.isDestroy)
         {
            return null;
         }
         this.checkAsset(param1,param2);
         if(!this.assets[param2][param1])
         {
            this.assets[param2][param1] = createObject(param1,param2);
         }
         return this.assets[param2][param1];
      }
      
      public function dispose(param1:int = 0) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(this.assets)
         {
            _loc2_ = param1 > 0?[]:null;
            for each(_loc3_ in this.assets)
            {
               if(param1 > 0)
               {
                  this.disposeOneAppDomainOjbectDuration(_loc3_,_loc2_);
               }
               else
               {
                  this.disposeOneAppDomainOjbect(_loc3_);
               }
               DeleteUtil.deleteOjbect(_loc3_);
            }
            DeleteUtil.deleteOjbect(this.assets);
            if(_loc2_)
            {
               TweenLite.delayedCall(param1 / 10 / 1000,this.disposeDuration,[param1,_loc2_,int(_loc2_.length / 10)]);
            }
         }
      }
      
      private function disposeDuration(param1:int, param2:Array, param3:int) : void
      {
         var _loc5_:Object = null;
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            _loc5_ = param2.pop();
            if(_loc5_)
            {
               if(_loc5_.hasOwnProperty(KEY_DISPOSE))
               {
                  _loc5_[KEY_DISPOSE]();
               }
               if(_loc5_.hasOwnProperty(KEY_DESTROY))
               {
                  _loc5_[KEY_DESTROY]();
               }
               _loc4_++;
               continue;
            }
            return;
         }
         if(param2.length > 0)
         {
            TweenLite.delayedCall(param1 / 10 / 1000,this.disposeDuration,[param1,param2,param3]);
         }
      }
      
      public function disposeAssets(param1:ApplicationDomain) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.assets)
         {
            if(_loc2_[KEY_APP_DOMAIN] == param1)
            {
               this.disposeOneAppDomainOjbect(_loc2_);
               DeleteUtil.deleteOjbect(_loc2_);
               delete this.assets[_loc2_[KEY_APP_DOMAIN]];
               return;
            }
         }
      }
      
      private function disposeOneAppDomainOjbect(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.hasOwnProperty(KEY_DISPOSE))
            {
               _loc2_[KEY_DISPOSE]();
            }
            if(_loc2_.hasOwnProperty(KEY_DESTROY))
            {
               _loc2_[KEY_DESTROY]();
            }
         }
         DeleteUtil.deleteOjbect(param1);
      }
      
      private function disposeOneAppDomainOjbectDuration(param1:Object, param2:Array) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = false;
         for each(_loc3_ in param1)
         {
            _loc4_ = false;
            if(_loc3_.hasOwnProperty(KEY_DISPOSE))
            {
               _loc4_ = true;
               param2.push(_loc3_);
            }
            if(_loc4_ == false && _loc3_.hasOwnProperty(KEY_DESTROY))
            {
               param2.push(_loc3_);
            }
         }
         DeleteUtil.deleteOjbect(param1);
      }
      
      public function disposeAllAssets(param1:int = 0) : void
      {
         this.dispose(param1);
      }
      
      public function destroy() : void
      {
         this.isDestroy = true;
         this.disposeAllAssets();
         this.assets = null;
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(this.assets,"autoDestroy");
         this.assets = null;
         this.sharedAppDomain = null;
         this.sharedMmeData = null;
         this.assets = null;
      }
   }
}
