package home.data
{
   import serverProto.familyNinja.ProtoFamilyNinjaTotalConf;
   import serverProto.familyNinja.ProtoFamilyNinjaInfo;
   
   public class HomeNinjaData
   {
       
      public var ninjaList:Array;
      
      public var restOrderNum:int;
      
      public var totalLevel:int;
      
      public var ninjaInfo:ProtoFamilyNinjaTotalConf;
      
      public function HomeNinjaData()
      {
         super();
      }
      
      public function getHomeNinjaInfo(param1:int) : ProtoFamilyNinjaInfo
      {
         var _loc2_:ProtoFamilyNinjaInfo = null;
         if(this.ninjaList)
         {
            for each(_loc2_ in this.ninjaList)
            {
               if(_loc2_ && _loc2_.classId == param1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
   }
}
