package bag.data
{
   public class EquipFumoLevelAttr
   {
       
      public var hp:int;
      
      public var bodyAttack:int;
      
      public var bodyDefense:int;
      
      public var ninjaAttack:int;
      
      public var ninjaDefense:int;
      
      public var speed:int;
      
      public var critValue:int;
      
      public var critDamageValue:int;
      
      public var controlValue:int;
      
      public var comboValue:int;
      
      public var nowLevelBaseRate:int;
      
      public var nowLevelForgeRate:int;
      
      public var nextLevelBaseRate:int;
      
      public var nextLevelForgeRate:int;
      
      public function EquipFumoLevelAttr()
      {
         super();
      }
      
      public function clone() : EquipFumoLevelAttr
      {
         var _loc1_:EquipFumoLevelAttr = new EquipFumoLevelAttr();
         _loc1_.hp = this.hp;
         _loc1_.bodyAttack = this.bodyAttack;
         _loc1_.bodyDefense = this.bodyDefense;
         _loc1_.ninjaAttack = this.ninjaAttack;
         _loc1_.ninjaDefense = this.ninjaDefense;
         _loc1_.speed = this.speed;
         _loc1_.critValue = this.critValue;
         _loc1_.critDamageValue = this.critDamageValue;
         _loc1_.controlValue = this.controlValue;
         _loc1_.comboValue = this.comboValue;
         _loc1_.nowLevelBaseRate = this.nowLevelBaseRate;
         _loc1_.nowLevelForgeRate = this.nowLevelForgeRate;
         _loc1_.nextLevelBaseRate = this.nextLevelBaseRate;
         _loc1_.nextLevelForgeRate = this.nextLevelForgeRate;
         return _loc1_;
      }
   }
}
