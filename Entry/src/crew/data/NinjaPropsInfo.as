package crew.data
{
   public dynamic class NinjaPropsInfo extends crew.data.NinjaPropsPropertyInfo
   {
       
      public var id:uint;
      
      public var index:uint;
      
      public var level:uint;
      
      public var maxLevel:uint;
      
      public var equipLevel:uint;
      
      public var exp:uint;
      
      public var extraBuff:crew.data.NinjaPropsPropertyInfo;
      
      public var upgradeBuff:crew.data.NinjaPropsPropertyInfo;
      
      public var levelUpInfo:crew.data.NinjaPropsUpgradeInfo;
      
      public var using:Boolean;
      
      public var swallowing:Boolean;
      
      public var selected:Boolean;
      
      public var cfg:crew.data.NinjaPropsCfgInfo;
      
      public function NinjaPropsInfo()
      {
         super();
      }
   }
}
