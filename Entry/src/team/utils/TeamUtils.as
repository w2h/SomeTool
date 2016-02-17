package team.utils
{
   import RSModel.IRSModelPlugin;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import def.PluginDef;
   import team.model.TeamModel;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import def.ModelDef;
   import team.data.TeamMemberData;
   import base.ApplicationData;
   
   public class TeamUtils
   {
       
      public function TeamUtils()
      {
         super();
         throw new Error(TeamUtils + " can not be instantiated.");
      }
      
      public static function get plugin() : IRSModelPlugin
      {
         return Facade.getInstance().retrievePlugin(PluginDef.RSMODEL) as IRSModelPlugin;
      }
      
      public static function get model() : TeamModel
      {
         return (plugin as Plugin).retrieveModel(ModelDef.TEAM) as TeamModel;
      }
      
      public static function isSelf(param1:TeamMemberData) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         return ApplicationData.singleton.selfInfo.equeal(param1.uin,param1.roleId,param1.svrId);
      }
      
      public static function get isSelfCaptain() : Boolean
      {
         var _loc1_:TeamMemberData = model.getCaptain();
         return isSelf(_loc1_);
      }
   }
}
