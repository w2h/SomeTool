package base
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.naruto.util.MultiFlags;
   
   public class PluginFlagsCenter
   {
      
      private static const _manager:Dictionary = new Dictionary(false);
       
      public function PluginFlagsCenter()
      {
         super();
      }
      
      public static function setFlag(param1:String, param2:uint, param3:Boolean) : void
      {
         if(!_manager[param1])
         {
            _manager[param1] = new MultiFlags();
         }
         var _loc4_:MultiFlags = _manager[param1] as MultiFlags;
         _loc4_.setFlag(param2,param3);
      }
      
      public static function getFlag(param1:String, param2:uint) : Boolean
      {
         if(!_manager[param1])
         {
            return false;
         }
         var _loc3_:MultiFlags = _manager[param1] as MultiFlags;
         return _loc3_.getFlag(param2);
      }
      
      public static function toggle(param1:String, param2:uint) : Boolean
      {
         if(!_manager[param1])
         {
            _manager[param1] = new MultiFlags();
         }
         var _loc3_:MultiFlags = _manager[param1] as MultiFlags;
         return _loc3_.toggle(param2);
      }
      
      public static function getPluginFlags(param1:String) : MultiFlags
      {
         if(!_manager[param1])
         {
            _manager[param1] = new MultiFlags();
         }
         return _manager[param1];
      }
   }
}
