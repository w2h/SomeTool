package crew.executer
{
   import base.CommandExecuter;
   import crew.model.NinjaPropsModel;
   import crew.data.NinjaPropsInfo;
   import serverProto.ninjaProps.ProtoNinjaPropsInfo;
   import crew.data.NinjaPropsUpgradeInfo;
   import serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo;
   import crew.data.NinjaPropsPropertyInfo;
   import serverProto.inc.ProtoNaurtoAllPropertyInfo;
   import def.ModelDef;
   
   public class PropsParsingExecuter extends CommandExecuter
   {
       
      protected var model:NinjaPropsModel;
      
      public function PropsParsingExecuter(param1:String)
      {
         super(param1);
         this.model = plugin.retrieveModel(ModelDef.NINJA_PROPS) as NinjaPropsModel;
      }
      
      protected function decodeNinjaPropsInfoList(param1:Array) : Vector.<NinjaPropsInfo>
      {
         var _loc3_:uint = 0;
         var _loc4_:NinjaPropsInfo = null;
         var _loc5_:ProtoNinjaPropsInfo = null;
         var _loc2_:Vector.<NinjaPropsInfo> = new Vector.<NinjaPropsInfo>();
         for each(_loc5_ in param1)
         {
            _loc4_ = this.decodeNinjaPropsInfo(_loc5_);
            if(_loc4_.index == 0)
            {
               _loc3_++;
            }
            _loc2_.push(_loc4_);
         }
         if(_loc3_ > 1)
         {
            throw new Error("多个忍具数据index为0");
         }
         return _loc2_;
      }
      
      protected function decodeNinjaPropsInfo(param1:ProtoNinjaPropsInfo) : NinjaPropsInfo
      {
         var _loc2_:NinjaPropsInfo = new NinjaPropsInfo();
         _loc2_.cfg = this.model.getNinjaPropsCfgInfo(param1.id);
         if(!_loc2_.cfg)
         {
            throw new Error("未找到[id:" + param1.id + "]的忍具配置");
         }
         _loc2_.id = param1.id;
         _loc2_.level = param1.level;
         _loc2_.exp = param1.exp;
         _loc2_.index = param1.index;
         _loc2_.using = false;
         _loc2_.equipLevel = param1.useNeedLevel;
         _loc2_.maxLevel = param1.maxLevel;
         _loc2_.levelUpInfo = this.decodeNinjaPropsUpgradeInfo(param1.levelUpInfo);
         _loc2_.extraBuff = this.decodeNinjaPropsPropertyInfo(param1.extensionProperty);
         _loc2_.upgradeBuff = this.decodeNinjaPropsPropertyInfo(param1.levelUpProperty);
         this.decodeNinjaPropsPropertyInfo(param1.baseProperty,_loc2_);
         return _loc2_;
      }
      
      protected function decodeNinjaPropsUpgradeInfo(param1:ProtoNinjaPropsLevelUpInfo) : NinjaPropsUpgradeInfo
      {
         var _loc2_:NinjaPropsUpgradeInfo = new NinjaPropsUpgradeInfo();
         if(!param1)
         {
            return _loc2_;
         }
         _loc2_.exp = param1.addExp;
         _loc2_.cost = param1.needMoney;
         _loc2_.ultimate = param1.isUltimate;
         _loc2_.levelUpExps = Vector.<uint>(param1.levelUpExp);
         this.decodeNinjaPropsPropertyInfo(param1.addPropery,_loc2_);
         return _loc2_;
      }
      
      protected function decodeNinjaPropsPropertyInfo(param1:ProtoNaurtoAllPropertyInfo, param2:NinjaPropsPropertyInfo = null) : NinjaPropsPropertyInfo
      {
         var param2:NinjaPropsPropertyInfo = param2 || new NinjaPropsPropertyInfo();
         param2.keys = new Vector.<String>();
         if(!param1)
         {
            return param2;
         }
         if(param1.hasHpUlimit)
         {
            param2.hp = param1.hpUlimit;
            param2.keys.push("hp");
         }
         if(param1.hasBodyAttack)
         {
            param2.attack = param1.bodyAttack;
            param2.keys.push("attack");
         }
         if(param1.hasBodyDefense)
         {
            param2.defense = param1.bodyDefense;
            param2.keys.push("defense");
         }
         if(param1.hasNinjaAttack)
         {
            param2.ninjutsu = param1.ninjaAttack;
            param2.keys.push("ninjutsu");
         }
         if(param1.hasNinjaDefense)
         {
            param2.resistance = param1.ninjaDefense;
            param2.keys.push("resistance");
         }
         if(param1.hasCritValue)
         {
            param2.crit = param1.critValue;
            param2.keys.push("crit");
         }
         if(param1.hasCritDamageValue)
         {
            param2.damage = param1.critDamageValue;
            param2.keys.push("damage");
         }
         if(param1.hasSpeed)
         {
            param2.speed = param1.speed;
            param2.keys.push("speed");
         }
         if(param1.hasComboValue)
         {
            param2.combo = param1.comboValue;
            param2.keys.push("combo");
         }
         if(param1.hasControlValue)
         {
            param2.control = param1.controlValue;
            param2.keys.push("control");
         }
         if(param1.hasBodyPenetrateValue)
         {
            param2.penetrationBody = param1.bodyPenetrateValue;
            param2.keys.push("penetrationBody");
         }
         if(param1.hasNinjaPenetrateValue)
         {
            param2.penetrationNinjutsu = param1.ninjaPenetrateValue;
            param2.keys.push("penetrationNinjutsu");
         }
         if(param1.hasDamageReduceValue)
         {
            param2.damageReduction = param1.damageReduceValue;
            param2.keys.push("damageReduction");
         }
         if(param1.hasHpRestore)
         {
            param2.restoration = param1.hpRestore;
            param2.keys.push("restoration");
         }
         if(param1.hasFireResist)
         {
            param2.resistanceFire = param1.fireResist;
            param2.keys.push("resistanceFire");
         }
         if(param1.hasWindResist)
         {
            param2.resistanceWind = param1.windResist;
            param2.keys.push("resistanceWind");
         }
         if(param1.hasThunderResist)
         {
            param2.resistanceThunder = param1.thunderResist;
            param2.keys.push("resistanceThunder");
         }
         if(param1.hasEarthResist)
         {
            param2.resistanceEarth = param1.earthResist;
            param2.keys.push("resistanceEarth");
         }
         if(param1.hasWaterResist)
         {
            param2.resistanceWater = param1.waterResist;
            param2.keys.push("resistanceWater");
         }
         return param2;
      }
   }
}
