package world
{
   import flash.utils.Dictionary;
   import cfgData.dataStruct.SceneCFG;
   import world.data.SceneType;
   
   public class SceneConfig
   {
      
      private static const GREENHORN_DUNGEON_ID:int = 2017;
      
      private static var dict:Dictionary;
       
      public function SceneConfig()
      {
         super();
      }
      
      public static function init(param1:Dictionary) : void
      {
         dict = param1;
      }
      
      public static function getTeamMapsByMinLevel(param1:int) : Array
      {
         var _loc3_:SceneCFG = null;
         var _loc2_:Array = [];
         for each(_loc3_ in dict)
         {
            if(_loc3_.id >= 10 && _loc3_.minLevel <= param1 && (_loc3_.type == SceneType.WORLD_SCENE || _loc3_.type == SceneType.INDOOR_SCENE))
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public static function getSceneInfo(param1:int) : SceneCFG
      {
         return dict[param1] as SceneCFG;
      }
      
      public static function needRequestMoveToProtocol(param1:int) : Boolean
      {
         var _loc2_:SceneCFG = getSceneInfo(param1);
         return _loc2_.type != SceneType.NINJA_BASE_SCENE;
      }
      
      public static function getSceneInfoByMapId(param1:int) : SceneCFG
      {
         var _loc2_:SceneCFG = null;
         for each(_loc2_ in dict)
         {
            if(_loc2_.mapId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function isGreenHornDungeon(param1:int) : Boolean
      {
         return int(param1 / 1000) == GREENHORN_DUNGEON_ID;
      }
      
      public static function isDungeon(param1:int) : Boolean
      {
         var _loc2_:SceneCFG = getSceneInfo(param1);
         if(!_loc2_)
         {
            throw new Error("找不到场景，ID为：" + param1);
         }
         return isDungeonByType(_loc2_.type);
      }
      
      public static function isDungeonByType(param1:int) : Boolean
      {
         return param1 == SceneType.DUNGEON_SCENE || SceneType.DUNGEON_SCENE_FRESHMAN;
      }
      
      public static function isPvpBattleField(param1:int) : Boolean
      {
         var _loc2_:SceneCFG = getSceneInfo(param1);
         if(_loc2_)
         {
            return _loc2_.type == SceneType.PVP_BATTLE_FIELD;
         }
         return false;
      }
      
      public static function isWorldBoss(param1:int) : Boolean
      {
         var _loc2_:SceneCFG = getSceneInfo(param1);
         return isWorldBossByType(_loc2_.type);
      }
      
      public static function isPVP(param1:int) : Boolean
      {
         var _loc2_:SceneCFG = getSceneInfo(param1);
         return isPVPByType(_loc2_.type);
      }
      
      public static function isWorldBossByType(param1:int) : Boolean
      {
         return param1 == SceneType.WORLD_BOSS;
      }
      
      public static function isPVPByType(param1:int) : Boolean
      {
         return param1 == SceneType.PVP_BATTLE_FIELD;
      }
      
      public static function isGuild(param1:int) : Boolean
      {
         var _loc2_:SceneCFG = getSceneInfo(param1);
         return _loc2_.type == SceneType.NINJA_BASE_SCENE;
      }
      
      public static function isKnowledge(param1:int) : Boolean
      {
         var _loc2_:SceneCFG = getSceneInfo(param1);
         return isKnowledgeByType(_loc2_.type);
      }
      
      public static function isKnowledgeByType(param1:int) : Boolean
      {
         return param1 == SceneType.KNOWLEDGE_SCENE;
      }
      
      public static function isRumorScene(param1:int) : Boolean
      {
         var _loc2_:SceneCFG = getSceneInfo(param1);
         return isRumorByType(_loc2_.type);
      }
      
      public static function isRumorByType(param1:int) : Boolean
      {
         return param1 == SceneType.RUMOR_SCENE;
      }
      
      public static function isHomeScene(param1:int) : Boolean
      {
         var _loc2_:SceneCFG = getSceneInfo(param1);
         return _loc2_.type == SceneType.HOME_SCENE;
      }
   }
}
