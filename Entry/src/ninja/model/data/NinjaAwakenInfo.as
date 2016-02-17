package ninja.model.data
{
   public class NinjaAwakenInfo
   {
       
      public var need_level:uint;
      
      public var max_awake_level:uint;
      
      public var itemInfoList:Vector.<ninja.model.data.NinjaAwakenItemInfo>;
      
      public var lifeBuff:uint;
      
      public var attackBuff:uint;
      
      public var defenseBuff:uint;
      
      public var ninjutsuBuff:uint;
      
      public var resistanceBuff:uint;
      
      public var lifeGrowthBuff:uint;
      
      public var attackGrowthBuff:uint;
      
      public var defenceGrowthBuff:uint;
      
      public var ninjutsuGrowthBuff:uint;
      
      public var resistanceGrowthBuff:uint;
      
      public var allAttributeBuff:uint;
      
      public function NinjaAwakenInfo()
      {
         super();
      }
   }
}
