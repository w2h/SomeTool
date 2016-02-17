package user.utils
{
   import user.IUser;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import def.PluginDef;
   import user.model.UserModel;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import def.ModelDef;
   import battle.data.BattleInfo;
   import base.ApplicationData;
   import user.data.SecondPasswordInfo;
   import serverProto.user.ProtoSecondaryPasswordStatus;
   import user.command.ValidateSecondPasswordCommand;
   
   public class UserUtils
   {
       
      public function UserUtils()
      {
         super();
         throw new Error(UserUtils + " can not be instantiated.");
      }
      
      public static function get plugin() : IUser
      {
         return Facade.getInstance().retrievePlugin(PluginDef.USER) as IUser;
      }
      
      public static function get model() : UserModel
      {
         return (plugin as Plugin).retrieveModel(ModelDef.USER) as UserModel;
      }
      
      public static function get battleModel() : BattleInfo
      {
         return (plugin as Plugin).retrieveModel(ModelDef.BATTLE) as BattleInfo;
      }
      
      public static function validateSecondPassword() : Boolean
      {
         var _loc1_:SecondPasswordInfo = ApplicationData.singleton.selfInfo.secondPasswordInfo;
         if(_loc1_.status == ProtoSecondaryPasswordStatus.PROTO_SECONDARY_PASSWORD_STATUS_NONE || _loc1_.status == ProtoSecondaryPasswordStatus.PROTO_SECONDARY_PASSWORD_STATUS_VALID)
         {
            return true;
         }
         new ValidateSecondPasswordCommand().call();
         return false;
      }
   }
}
