package com.tencent.morefun.framework.net.loaders
{
   public class TXTLoader extends RAWLoader
   {
       
      private var _content:String;
      
      private var _encoding:String;
      
      public function TXTLoader(param1:String = "utf-8")
      {
         super();
         this._encoding = param1;
      }
      
      override protected function finish() : void
      {
         if(data)
         {
            data.position = 0;
            this._content = data.readMultiByte(data.length,this._encoding);
         }
         super.dispose();
         super.finish();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this._content = null;
      }
      
      public function get content() : String
      {
         return this._content;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this._content = null;
         this._encoding = null;
      }
   }
}
