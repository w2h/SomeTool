package ninja.model.data
{
   public class NinjaDetailInfo
   {
       
      public var birthPlace:uint;
      
      public var birthTime:uint;
      
      public var leadership:uint;
      
      public var life:int;
      
      public var lifeMax:ninja.model.data.NinjaPropertyInfo;
      
      public var attack:ninja.model.data.NinjaPropertyInfo;
      
      public var defence:ninja.model.data.NinjaPropertyInfo;
      
      public var ninjutsu:ninja.model.data.NinjaPropertyInfo;
      
      public var resistance:ninja.model.data.NinjaPropertyInfo;
      
      public var critAttack:uint;
      
      public var critHarm:uint;
      
      public var firstAttack:uint;
      
      public var continuousAttack:uint;
      
      public var control:uint;
      
      public var phyStrike:uint;
      
      public var ninpStrike:uint;
      
      public var harmRemission:uint;
      
      public var lifeRecover:uint;
      
      public var fireResist:int;
      
      public var windResist:int;
      
      public var thunderResist:int;
      
      public var earthResist:int;
      
      public var waterResist:int;
      
      public function NinjaDetailInfo()
      {
         super();
      }
      
      public function clone() : NinjaDetailInfo
      {
         var _loc1_:NinjaDetailInfo = new NinjaDetailInfo();
         _loc1_.birthPlace = this.birthPlace;
         _loc1_.birthTime = this.birthTime;
         _loc1_.leadership = this.leadership;
         _loc1_.life = this.life;
         _loc1_.lifeMax = this.lifeMax.clone();
         _loc1_.attack = this.attack.clone();
         _loc1_.defence = this.defence.clone();
         _loc1_.ninjutsu = this.ninjutsu.clone();
         _loc1_.resistance = this.resistance.clone();
         _loc1_.critAttack = this.critAttack;
         _loc1_.critHarm = this.critHarm;
         _loc1_.firstAttack = this.firstAttack;
         _loc1_.continuousAttack = this.continuousAttack;
         _loc1_.control = this.control;
         _loc1_.phyStrike = this.phyStrike;
         _loc1_.ninpStrike = this.ninpStrike;
         _loc1_.harmRemission = this.harmRemission;
         _loc1_.lifeRecover = this.lifeRecover;
         _loc1_.fireResist = this.fireResist;
         _loc1_.windResist = this.windResist;
         _loc1_.thunderResist = this.thunderResist;
         _loc1_.earthResist = this.earthResist;
         _loc1_.waterResist = this.waterResist;
         return _loc1_;
      }
   }
}
