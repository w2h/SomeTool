package base
{
   import serverProto.inc.ProtoPlayerKey;
   
   public class PlayerKeyUtils
   {
       
      public function PlayerKeyUtils()
      {
         super();
      }
      
      public static function equal(param1:ProtoPlayerKey, param2:ProtoPlayerKey) : Boolean
      {
         return param1.uin == param2.uin && param1.roleId == param2.roleId && param1.svrId == param2.svrId;
      }
      
      public static function inArray(param1:ProtoPlayerKey, param2:Array) : Boolean
      {
         var _loc3_:ProtoPlayerKey = null;
         for each(_loc3_ in param2)
         {
            if(equal(param1,_loc3_))
            {
               return true;
            }
         }
         return false;
      }
   }
}
