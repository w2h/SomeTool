package com.tencent.morefun.framework.net.loaders
{
   import nochump.util.zip.ZipFile;
   import flash.utils.ByteArray;
   import nochump.util.zip.ZipEntry;
   
   public class ZIPLoader extends RAWLoader
   {
       
      private var _zip:ZipFile;
      
      public function ZIPLoader()
      {
         super();
      }
      
      public function getItem(param1:String) : ByteArray
      {
         if(!this._zip)
         {
            return null;
         }
         var _loc2_:ZipEntry = this._zip.getEntry(param1);
         if(_loc2_)
         {
            return this._zip.getInput(_loc2_);
         }
         return null;
      }
      
      override protected function finish() : void
      {
         if(data)
         {
            this._zip = new ZipFile(data);
         }
         super.finish();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this._zip = null;
      }
      
      public function get zip() : ZipFile
      {
         return this._zip;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this._zip = null;
      }
   }
}
