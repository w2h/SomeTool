package crew.data
{
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   
   public class NinjaPropsPropertyInfo
   {
      
      private static const nameKeys:Dictionary = generateKeys();
       
      public var hp:uint;
      
      public var attack:uint;
      
      public var defense:uint;
      
      public var ninjutsu:uint;
      
      public var resistance:uint;
      
      public var crit:uint;
      
      public var damage:uint;
      
      public var speed:uint;
      
      public var combo:uint;
      
      public var control:uint;
      
      public var penetrationBody:uint;
      
      public var penetrationNinjutsu:uint;
      
      public var damageReduction:uint;
      
      public var restoration:uint;
      
      public var resistanceFire:uint;
      
      public var resistanceWind:uint;
      
      public var resistanceThunder:uint;
      
      public var resistanceEarth:uint;
      
      public var resistanceWater:uint;
      
      public var keys:Vector.<String>;
      
      public function NinjaPropsPropertyInfo()
      {
         super();
      }
      
      private static function generateKeys() : Dictionary
      {
         var _loc1_:Dictionary = new Dictionary();
         _loc1_["hp"] = "生命";
         _loc1_["attack"] = "攻击";
         _loc1_["defense"] = "防御";
         _loc1_["ninjutsu"] = "忍术";
         _loc1_["resistance"] = "抗性";
         _loc1_["resistanceWater"] = "水抗";
         _loc1_["resistanceEarth"] = "土抗";
         _loc1_["resistanceThunder"] = "雷抗";
         _loc1_["resistanceWind"] = "风抗";
         _loc1_["resistanceFire"] = "火抗";
         _loc1_["restoration"] = "生命恢复";
         _loc1_["damageReduction"] = "伤害减免";
         _loc1_["penetrationNinjutsu"] = "忍术穿透";
         _loc1_["penetrationBody"] = "攻击穿透";
         _loc1_["control"] = "控制";
         _loc1_["combo"] = "连击";
         _loc1_["speed"] = "先攻";
         _loc1_["damage"] = "暴伤";
         _loc1_["crit"] = "暴击";
         return _loc1_;
      }
      
      public function getPropertyName(param1:String) : String
      {
         return nameKeys[param1] as String;
      }
      
      public function getPropertyIndex(param1:String) : int
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 18, Size: 18)
          */
         throw new IllegalOperationError("Not decompiled due to error");
      }
   }
}
