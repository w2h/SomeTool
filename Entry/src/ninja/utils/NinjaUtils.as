package ninja.utils
{
   import serverProto.formation.FormationType;
   import serverProto.inc.NinjaSourceType;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   import ninja.model.data.NinjaInfo;
   import cfgData.dataStruct.NinjaInfoCFG;
   import cfgData.dataStruct.NinjaSkillCFG;
   import cfgData.dataStruct.SkillCFG;
   import ninja.model.data.NinjaSecondAwakeItemInfo;
   import skill.config.SkillConfig;
   import skill.config.NinjaSkillConfig;
   
   public class NinjaUtils
   {
       
      public function NinjaUtils()
      {
         super();
      }
      
      public static function getFormationType(param1:uint) : uint
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function getNinjaSourceType(param1:uint) : uint
      {
         var _loc2_:XMLList = null;
         var _loc3_:XML = null;
         var _loc4_:uint = 0;
         if(!map)
         {
            map = new Dictionary(false);
            _loc2_ = describeType(NinjaSourceType).constant;
            for each(_loc3_ in _loc2_)
            {
               _loc4_ = NinjaSourceType[String(_loc3_.@name)];
               map[getFormationType(_loc4_)] = _loc4_;
            }
         }
         return map[param1];
      }
      
      public static function checkSkillCfg(param1:NinjaInfo, param2:NinjaInfoCFG, param3:String) : Boolean
      {
         var _loc4_:NinjaSkillCFG = null;
         var _loc5_:SkillCFG = null;
         var _loc6_:NinjaSecondAwakeItemInfo = null;
         var _loc7_:* = 0;
         var _loc8_:SkillCFG = null;
         var _loc9_:* = 0;
         if(indexOfIgnoreCase(param2.name,param3) < 0 && indexOfIgnoreCase(param2.title,param3) < 0)
         {
            if(indexOfIgnoreCase(param2.filterTxt,param3) < 0)
            {
               if(param1.secondAwakenItemInfos && param1.secondAwakenItemInfos.length > 0)
               {
                  _loc7_ = 0;
                  while(_loc7_ < param1.secondAwakenItemInfos.length)
                  {
                     _loc6_ = param1.secondAwakenItemInfos[_loc7_];
                     _loc5_ = SkillConfig.instance.getSkill(_loc6_.curSkillId);
                     if(!(!_loc5_ || !_loc5_.showIcon))
                     {
                        if(indexOfIgnoreCase(_loc5_.name,param3) > -1)
                        {
                           return false;
                        }
                     }
                     _loc7_++;
                  }
               }
               _loc4_ = NinjaSkillConfig.instance.getNinjaSkillCfg(param1.id);
               if(_loc4_ != null)
               {
                  _loc8_ = SkillConfig.instance.getSkill(_loc4_.specials[0]);
                  if(_loc8_ && indexOfIgnoreCase(_loc8_.name,param3) > -1)
                  {
                     return false;
                  }
                  _loc8_ = SkillConfig.instance.getSkill(_loc4_.normals[2]);
                  if(_loc8_ && indexOfIgnoreCase(_loc8_.name,param3) > -1)
                  {
                     return false;
                  }
                  _loc9_ = 0;
                  while(_loc9_ < _loc4_.skills.length)
                  {
                     _loc8_ = SkillConfig.instance.getSkill(_loc4_.skills[_loc9_]);
                     if(_loc8_ && indexOfIgnoreCase(_loc8_.name,param3) > -1)
                     {
                        return false;
                     }
                     _loc9_++;
                  }
               }
               return true;
            }
         }
         return false;
      }
      
      private static function equalIgnoreCase(param1:String, param2:String) : Boolean
      {
         if(param1 == null)
         {
            var param1:String = "";
         }
         if(param2 == null)
         {
            var param2:String = "";
         }
         param1 = param1.toLocaleLowerCase();
         param2 = param2.toLocaleLowerCase();
         return param1 == param2;
      }
      
      private static function indexOfIgnoreCase(param1:String, param2:String) : int
      {
         if(param1 == null)
         {
            var param1:String = "";
         }
         if(param2 == null)
         {
            var param2:String = "";
         }
         param1 = param1.toLocaleLowerCase();
         param2 = param2.toLocaleLowerCase();
         return param1.indexOf(param2);
      }
   }
}

var map:Dictionary;
