package home.data
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import serverProto.familyNinja.ProtoFamilyNinjaInfo;
   import serverProto.familyNinja.ProtoFamilyNinjaTotalConf;
   import serverProto.familyNinja.ProtoFamilyNinjaConf;
   import home.cmd.ShowFriendShipUpgradeCommand;
   import def.ModelDef;
   
   public class HomeModel extends BaseModel
   {
      
      public static const NINJAINFO_UPDATE:String = "home_ninjainfo_update";
       
      public var bathData:home.data.BathData;
      
      private var _ninjaData:home.data.HomeNinjaData;
      
      public function HomeModel()
      {
         super(ModelDef.HOME);
      }
      
      public function set ninjaData(param1:home.data.HomeNinjaData) : void
      {
         var _loc2_:ProtoFamilyNinjaInfo = null;
         var _loc3_:ProtoFamilyNinjaInfo = null;
         if(this._ninjaData)
         {
            for each(_loc2_ in param1.ninjaList)
            {
               if(_loc2_)
               {
                  _loc3_ = this._ninjaData.getHomeNinjaInfo(_loc2_.classId);
                  if(_loc3_ && _loc3_.level < _loc2_.level)
                  {
                     this.compareNinjaConf(_loc2_,_loc3_,param1.ninjaInfo,this._ninjaData.ninjaInfo);
                     break;
                  }
               }
            }
         }
         this._ninjaData = param1;
         dispModelEvent(NINJAINFO_UPDATE);
      }
      
      private function compareNinjaConf(param1:ProtoFamilyNinjaInfo, param2:ProtoFamilyNinjaInfo, param3:ProtoFamilyNinjaTotalConf, param4:ProtoFamilyNinjaTotalConf) : void
      {
         var _loc5_:ProtoFamilyNinjaTotalConf = new ProtoFamilyNinjaTotalConf();
         _loc5_.bodyAttack = param3.bodyAttack - param4.bodyAttack;
         _loc5_.bodyDefense = param3.bodyDefense - param4.bodyDefense;
         _loc5_.comboValue = param3.comboValue - param4.comboValue;
         _loc5_.controlValue = param3.controlValue - param4.controlValue;
         _loc5_.critDamageValue = param3.critDamageValue - param4.critDamageValue;
         _loc5_.critValue = param3.critValue - param4.critValue;
         _loc5_.maxHp = param3.maxHp - param4.maxHp;
         _loc5_.ninjaAttack = param3.ninjaAttack - param4.ninjaAttack;
         _loc5_.ninjaDefense = param3.ninjaDefense - param4.ninjaDefense;
         _loc5_.speed = param3.speed - param4.speed;
         _loc5_.bodyPenetrateValue = param3.bodyPenetrateValue - param4.bodyPenetrateValue;
         _loc5_.ninjaPenetrateValue = param3.ninjaPenetrateValue - param4.ninjaPenetrateValue;
         _loc5_.damageReduceValue = param3.damageReduceValue - param4.damageReduceValue;
         _loc5_.hpRestore = param3.hpRestore - param4.hpRestore;
         _loc5_.level = param3.level;
         _loc5_.giftNum = param3.giftNum;
         _loc5_.ninjaNum = param3.ninjaNum;
         var _loc6_:ProtoFamilyNinjaConf = new ProtoFamilyNinjaConf();
         _loc6_.bodyAttack = param1.protoFamilyNinjaConf.bodyAttack - param2.protoFamilyNinjaConf.bodyAttack;
         _loc6_.bodyDefense = param1.protoFamilyNinjaConf.bodyDefense - param2.protoFamilyNinjaConf.bodyDefense;
         _loc6_.maxHp = param1.protoFamilyNinjaConf.maxHp - param2.protoFamilyNinjaConf.maxHp;
         _loc6_.ninjaAttack = param1.protoFamilyNinjaConf.ninjaAttack - param2.protoFamilyNinjaConf.ninjaAttack;
         _loc6_.ninjaDefense = param1.protoFamilyNinjaConf.ninjaDefense - param2.protoFamilyNinjaConf.ninjaDefense;
         _loc6_.taskId = param1.protoFamilyNinjaConf.taskId;
         _loc6_.clearHasTaskNextLevel();
         _loc6_.hasTaskNextLevel = param1.protoFamilyNinjaConf.hasTaskNextLevel;
         new ShowFriendShipUpgradeCommand(param1.classId,param1.level,_loc6_,_loc5_).call();
      }
      
      public function get ninjaData() : *
      {
         return this._ninjaData;
      }
   }
}
