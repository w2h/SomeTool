package com.tencent.morefun.naruto.util.ext
{
   import flash.utils.ByteArray;
   
   public class XMLZip
   {
       
      public function XMLZip()
      {
         super();
      }
      
      public static function compressString(param1:String) : ByteArray
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTF(param1);
         _loc2_.compress();
         _loc2_.position = 0;
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = _loc3_ / 2;
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeBytes(_loc2_,_loc4_,_loc3_ - _loc4_);
         _loc5_.writeBytes(_loc2_,0,_loc4_);
         return _loc5_;
      }
      
      public static function compress(param1:XML) : ByteArray
      {
         return compressString(param1.toXMLString());
      }
      
      public static function uncompress(param1:ByteArray) : XML
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:ByteArray = null;
         var _loc7_:String = null;
         var _loc2_:XML = null;
         try
         {
            _loc3_ = param1.length;
            _loc4_ = _loc3_ / 2;
            _loc5_ = _loc3_ - _loc4_;
            _loc6_ = new ByteArray();
            _loc6_.writeBytes(param1,_loc5_,_loc4_);
            _loc6_.writeBytes(param1,0,_loc5_);
            _loc6_.position = 0;
            _loc6_.uncompress();
            _loc6_.position = 0;
            _loc7_ = _loc6_.readUTF();
            _loc2_ = new XML(_loc7_);
         }
         catch(error:Error)
         {
         }
         return _loc2_;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
