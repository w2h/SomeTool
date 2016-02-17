package majorRole.def
{
	import flash.errors.IllegalOperationError;

   public class MajorNinjaDef
   {
      
      private static var majorNinjaList:Array = [10000101,10000201,10000301,10000401,10000501];
       
      public function MajorNinjaDef()
      {
         super();
      }
      
      public static function isMajorNinjaId(param1:int) : Boolean
      {
         var _loc2_:int = param1 % 100;
         if(_loc2_ > 10)
         {
            return false;
         }
         var _loc3_:int = toBaseMajorId(param1);
         return majorNinjaList.indexOf(_loc3_) != -1;
      }
      
      public static function isBaseMajorNinjaId(param1:int) : Boolean
      {
         return majorNinjaList.indexOf(param1) != -1;
      }
      
      public static function toBaseMajorId(param1:int) : int
      {
         return int(param1 / 100) * 100 + 1;
      }
      
      public static function getMajorNinjaIndex(param1:int) : int
      {
         var _loc2_:* = 0;
         if(isMajorNinjaId(param1))
         {
            _loc2_ = toBaseMajorId(param1);
            return majorNinjaList.indexOf(_loc2_);
         }
         return -1;
      }
      
      public static function getMajorNinjaIdByDef(param1:int) : int
      {
         if(param1 >= 1 && param1 <= majorNinjaList.length)
         {
            return majorNinjaList[param1 - 1];
         }
         return -1;
      }
      
      public static function getMajorNinjaName(param1:int) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new IllegalOperationError("Not decompiled due to error");
      }
   }
}
