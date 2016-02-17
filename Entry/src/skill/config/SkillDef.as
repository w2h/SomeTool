package skill.config
{
   public class SkillDef
   {
      
      public static const _exStateStrings:Array = ["无","小浮空","大浮空","倒地","击退","中毒","点燃","目盲","定身","混乱","标记","高连击","麻痹","封穴","睡眠","减速"];
       
      public function SkillDef()
      {
         super();
      }
      
      public static function getTypeString(param1:int) : String
      {
         if(param1 == 0)
         {
            return "普通攻击";
         }
         if(param1 == 1)
         {
            return "追打技";
         }
         if(param1 == 2)
         {
            return "奥义技";
         }
         if(param1 == 3)
         {
            return "被动技";
         }
         if(param1 == 4)
         {
            return "触发技";
         }
         if(param1 == 5)
         {
            return "联合技能";
         }
         return "";
      }
      
      public static function getBeHitState1String(param1:int, param2:int) : String
      {
         var _loc3_:Array = null;
         if(param1 == 0)
         {
            return "无";
         }
         if(param1 == 1)
         {
            return "倒地";
         }
         if(param1 == 2)
         {
            return "小浮空";
         }
         if(param1 == 3)
         {
            return "大浮空";
         }
         if(param1 == 4)
         {
            if(param2 == -1)
            {
               return "高连击";
            }
            return param2 + "连击";
         }
         if(param1 == 5)
         {
            return "无";
         }
         if(param1 == 6)
         {
            return "无";
         }
         if(param1 == 7)
         {
            return "击退";
         }
         if(param1 == 8)
         {
            return "定身";
         }
         if(param1 == 9)
         {
            return "混乱";
         }
         if(param1 == 10)
         {
            _loc3_ = ["无","点燃","中毒","睡眠","定身","封穴","目盲","麻痹","标记"];
            return _loc3_[param2];
         }
         return "";
      }
      
      public static function getExStateString(param1:int) : String
      {
         return _exStateStrings[param1];
      }
      
      public static function getExStatesString(param1:Array) : String
      {
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_.push(getExStateString(param1[_loc3_]));
            _loc3_++;
         }
         return _loc2_.join("，");
      }
      
      public static function isRelatedExStates(param1:Array, param2:int, param3:int) : Boolean
      {
         var _loc4_:* = 0;
         if(param1.length == 0 || param2 == 0)
         {
            return false;
         }
         for each(_loc4_ in param1)
         {
            if(isRelatedExState(_loc4_,param2,param3))
            {
               return true;
            }
         }
         return false;
      }
      
      public static function isRelatedExState(param1:int, param2:int, param3:int) : Boolean
      {
         if(param1 == 11)
         {
            return param2 == 4;
         }
         return getExStateString(param1) == getBeHitState1String(param2,param3);
      }
   }
}
