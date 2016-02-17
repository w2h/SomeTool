package cfgData
{
   import flash.utils.Dictionary;
   import flash.utils.ByteArray;
   import com.tencent.morefun.framework.log.logger;
   
   public class CFGDataLibs
   {
      
      private static var m_maps:Dictionary = new Dictionary();
       
      public function CFGDataLibs()
      {
         super();
      }
      
      public static function getAllData(param1:String) : Dictionary
      {
         if(m_maps.hasOwnProperty(param1))
         {
            return m_maps[param1];
         }
         return null;
      }
      
      public static function getRowData(param1:String, param2:int) : Object
      {
         if(m_maps.hasOwnProperty(param1) && m_maps[param1][param2] != undefined)
         {
            return m_maps[param1][param2];
         }
         return null;
      }
      
      public static function getRowDataByOtherKey(param1:String, param2:Object, param3:String) : Object
      {
         var _loc4_:Object = null;
         if(m_maps.hasOwnProperty(param1))
         {
            for each(_loc4_ in m_maps[param1])
            {
               if(_loc4_[param3] == param2)
               {
                  return _loc4_;
               }
            }
            return null;
         }
         return null;
      }
      
      public static function getAllRowDataByOtherKey(param1:String, param2:Object, param3:String) : Array
      {
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         if(m_maps.hasOwnProperty(param1))
         {
            _loc4_ = [];
            for each(_loc5_ in m_maps[param1])
            {
               if(_loc5_[param3] == param2)
               {
                  _loc4_.push(_loc5_);
               }
            }
            return _loc4_;
         }
         return null;
      }
      
      public static function parseData(param1:ByteArray, param2:String) : Dictionary
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         new ConfigClassAlias();
         if(m_maps[param2] != undefined)
         {
            for(_loc6_ in m_maps[param2])
            {
               delete m_maps[param2][_loc6_];
            }
         }
         else
         {
            m_maps[param2] = new Dictionary();
         }
         if(param1.position >= param1.length - 1)
         {
            logger.output("Rread bin error" + param2);
            param1.position = 0;
         }
         var _loc3_:Object = param1.readObject();
         var _loc4_:Dictionary = new Dictionary();
         for each(m_maps[param2][_loc5_.id] in _loc3_)
         {
         }
         return m_maps[param2];
      }
      
      public static function removeData(param1:String) : void
      {
      }
   }
}
