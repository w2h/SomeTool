package crew.data
{
   import bag.data.ItemData;
   
   public class NinjaPropsCfgInfo extends ItemData
   {
       
      public var quality:uint;
      
      public var levelUpper:uint;
      
      public var swallowExp:uint;
      
      public var swallowCost:uint;
      
      public var recastBuff:uint;
      
      public var preloadExtraValue:String;
      
      public function NinjaPropsCfgInfo()
      {
         super();
      }
   }
}
