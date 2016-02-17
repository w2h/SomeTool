package com.tencent.morefun.framework.net.loaders
{
   import flash.utils.Dictionary;
   import flash.utils.ByteArray;
   import com.tencent.morefun.naruto.util.CollectionClearUtil;
   
   public class PKGLoader extends RAWLoader
   {
       
      private var _assets:Dictionary;
      
      public function PKGLoader()
      {
         super();
      }
      
      override protected function finish() : void
      {
         var _loc1_:String = null;
         var _loc2_:ByteArray = null;
         var _loc3_:uint = 0;
         if(data)
         {
            this._assets = new Dictionary(true);
            data.position = 0;
            while(data.bytesAvailable)
            {
               _loc1_ = data.readUTF();
               _loc3_ = data.readUnsignedInt();
               if(data.bytesAvailable >= _loc3_)
               {
                  _loc2_ = new ByteArray();
                  data.readBytes(_loc2_,0,_loc3_);
                  this._assets[_loc1_] = _loc2_;
               }
            }
         }
         super.finish();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this._assets = null;
      }
      
      public function get assets() : Dictionary
      {
         return this._assets;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super["autoSetNull"]();
         }
         CollectionClearUtil.clearDictionary(this._assets,"autoDestroy");
         this._assets = null;
         this._assets = null;
      }
   }
}
