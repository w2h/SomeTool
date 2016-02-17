package com.tencent.morefun.naruto.mmefile.render.datas
{
   import flash.utils.ByteArray;
   import flash.display.BitmapData;
   
   public class FlaFrameBitmapData extends BaseFrameData
   {
       
      public var x:int;
      
      public var y:int;
      
      public var width:int;
      
      public var height:int;
      
      public var bytes:ByteArray;
      
      public var bitmapData:BitmapData;
      
      public var referPointDatas:Array;
      
      public function FlaFrameBitmapData()
      {
         super();
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this.bytes = null;
         this.bitmapData = null;
         this.referPointDatas = null;
      }
   }
}
