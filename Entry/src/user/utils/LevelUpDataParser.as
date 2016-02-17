package user.utils
{
   import user.data.LevelUpData;
   import serverProto.user.ProtoNinjaLevelUpNotify;
   import serverProto.user.ProtoNinjaLevelUpInfo;
   import serverProto.inc.ProtoNarutoProperty;
   import base.ApplicationData;
   
   public class LevelUpDataParser
   {
       
      public function LevelUpDataParser()
      {
         super();
      }
      
      public function destroy() : void
      {
      }
      
      public function parse(param1:ProtoNinjaLevelUpNotify) : LevelUpData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:ProtoNinjaLevelUpInfo = param1.beforeInfo;
         var _loc3_:ProtoNinjaLevelUpInfo = param1.afterInfo;
         var _loc4_:ProtoNarutoProperty = _loc2_.protperty;
         var _loc5_:ProtoNarutoProperty = _loc3_.protperty;
         var _loc6_:LevelUpData = new LevelUpData();
         _loc6_.uin = ApplicationData.singleton.selfInfo.uin;
         _loc6_.roleId = ApplicationData.singleton.selfInfo.role;
         _loc6_.svrId = ApplicationData.singleton.selfInfo.svrId;
         _loc6_.ninjaId = param1.ninjaId;
         _loc6_.levelBefore = _loc2_.level;
         _loc6_.levelAfter = _loc3_.level;
         _loc6_.leadershipBefore = _loc2_.leadshipUlimit;
         _loc6_.leadershipAfter = _loc3_.leadshipUlimit;
         _loc6_.ninjaNumBefore = _loc2_.packageNinjaUlimit;
         _loc6_.ninjaNumAfter = _loc3_.packageNinjaUlimit;
         _loc6_.battlePointBefore = _loc4_.combat;
         _loc6_.battlePointAfter = _loc5_.combat;
         _loc6_.val1Before = _loc4_.maxHp;
         _loc6_.val1After = _loc5_.maxHp;
         _loc6_.val2Before = _loc4_.bodyAttack;
         _loc6_.val2After = _loc5_.bodyAttack;
         _loc6_.val3Before = _loc4_.bodyDefense;
         _loc6_.val3After = _loc5_.bodyDefense;
         _loc6_.val4Before = _loc4_.ninjaAttack;
         _loc6_.val4After = _loc5_.ninjaAttack;
         _loc6_.val5Before = _loc4_.ninjaDefense;
         _loc6_.val5After = _loc5_.ninjaDefense;
         return _loc6_;
      }
   }
}
