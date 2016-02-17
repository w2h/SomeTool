package arena.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import flash.utils.Dictionary;
   import team.model.TeamModel;
   import ninja.model.data.NinjaInfo;
   import ninja.model.data.FormationInfo;
   import skill.config.NinjaSkillConfig;
   import skill.config.SkillConfig;
   import serverProto.arena.ProtoArenaResponse;
   import serverProto.arena.ProtoArenaReward;
   import ninja.conf.NinjaDefConfig;
   import com.tencent.morefun.naruto.util.MultiFlags;
   import base.PluginFlagsCenter;
   import def.PluginDef;
   
   public class ArenaModel extends BaseModel
   {
       
      public var arenaBadge:Dictionary;
      
      public var teamModel:TeamModel;
      
      public var storageNinjas:Vector.<NinjaInfo>;
      
      public var formation:FormationInfo;
      
      public var formation_ninjas:Vector.<NinjaInfo>;
      
      public var ninjaSkillConfig:NinjaSkillConfig;
      
      public var skillConfig:SkillConfig;
      
      public var m_arenaLevel:uint = 0;
      
      public var m_winCount:uint = 0;
      
      public var baseResponse:ProtoArenaResponse;
      
      public var m_tabIdx:uint = 0;
      
      public var newTopRewards:ProtoArenaReward;
      
      public var fixNinjaList:Array;
      
      public var FirstWinNinjaList:Array;
      
      public function ArenaModel()
      {
         super(PluginDef.ARENA);
      }
      
      public function getCareerName(param1:uint) : String
      {
         return NinjaDefConfig.getDefName(NinjaDefConfig.CAREER,param1);
      }
      
      public function getCategoryName(param1:uint) : String
      {
         return NinjaDefConfig.getDefName(NinjaDefConfig.CATEGORY,param1);
      }
      
      public function getPropertyName(param1:uint) : String
      {
         return NinjaDefConfig.getDefName(NinjaDefConfig.PROPERTY,param1);
      }
      
      public function getNinja(param1:uint) : NinjaInfo
      {
         var _loc3_:NinjaInfo = null;
         var _loc2_:Vector.<NinjaInfo> = new Vector.<NinjaInfo>();
         if(this.storageNinjas)
         {
            _loc2_ = _loc2_.concat(this.storageNinjas);
         }
         if(this.formation_ninjas)
         {
            _loc2_ = _loc2_.concat(this.formation_ninjas);
         }
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function ninjaUpdate(param1:NinjaInfo) : NinjaInfo
      {
         if(!param1)
         {
            return null;
         }
         return param1;
      }
      
      public function hasNinja(param1:uint) : Boolean
      {
         var _loc2_:NinjaInfo = this.getNinja(param1);
         return _loc2_ != null && _loc2_.id != 0;
      }
      
      public function get flags() : MultiFlags
      {
         return PluginFlagsCenter.getPluginFlags(PluginDef.NINJA);
      }
   }
}
