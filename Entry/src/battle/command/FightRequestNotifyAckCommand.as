package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class FightRequestNotifyAckCommand extends Command
   {
       
      public var is_accept:Boolean;
      
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public function FightRequestNotifyAckCommand(param1:uint, param2:uint, param3:uint, param4:Boolean)
      {
         super();
         this.is_accept = param4;
         this.uin = param1;
         this.roleId = param2;
         this.svrId = param3;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
