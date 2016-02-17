package com.tencent.morefun.framework.net.loaders
{
   import flash.system.System;
   
   public class XMLLoader extends RAWLoader
   {
       
      private var _xml:XML;
      
      public function XMLLoader()
      {
         super();
      }
      
      override protected function finish() : void
      {
         if(data)
         {
            this._xml = new XML(data);
         }
         super.dispose();
         super.finish();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this._xml && System.disposeXML(this._xml);
         this._xml = null;
      }
      
      public function get xml() : XML
      {
         return this._xml;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         System.disposeXML(this._xml);
         this._xml = null;
      }
   }
}
