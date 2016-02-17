package com.tencent.morefun.framework.net.data
{
   import com.tencent.morefun.framework.net.loaders.IFileLoader;
   import com.tencent.morefun.framework.log.logger;
   import com.tencent.morefun.framework.net.def.LoadStatusDef;
   
   public class LoadTaskAssetInfo
   {
       
      public var sortLevel:int = 0;
      
      public var url:String;
      
      public var mirror:String;
      
      public var loader:IFileLoader;
      
      public var callbacks:Vector.<Function>;
      
      public var status:String;
      
      private var _referCount:uint;
      
      public function LoadTaskAssetInfo()
      {
         super();
         this.status = LoadStatusDef.WAIT;
         this.callbacks = new Vector.<Function>();
      }
      
      public function retain() : uint
      {
         this._referCount++;
         logger.output("[retain]",this.url + ", " + this._referCount);
         return this._referCount;
      }
      
      public function release() : uint
      {
         if(this._referCount > 0)
         {
            this._referCount--;
            logger.output("[release]",this.url + ", " + this._referCount);
         }
         return this._referCount;
      }
      
      public function dispose() : void
      {
         this.release();
         if(!this._referCount)
         {
            this.loader.dispose();
            this.callbacks = null;
            this.loader = null;
            logger.output("[gc]",this.url);
            this.status = LoadStatusDef.DISPOSED;
         }
      }
      
      public function toString() : String
      {
         return "url:" + this.url + ", status:" + this.status + ", callback:" + (this.callbacks?this.callbacks.length:0) + ", referCount:" + this._referCount;
      }
      
      public function get referCount() : uint
      {
         return this._referCount;
      }
      
      public function autoSetNull() : void
      {
         this.url = null;
         this.mirror = null;
         this.loader = null;
         this.status = null;
      }
   }
}
