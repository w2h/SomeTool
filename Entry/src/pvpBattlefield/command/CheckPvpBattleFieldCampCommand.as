package pvpBattlefield.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class CheckPvpBattleFieldCampCommand extends Command
   {
       
      public var uin:int;
      
      public var role:int;
      
      public var svr:int;
      
      public var camp:int;
      
      public function CheckPvpBattleFieldCampCommand(param1:int, param2:int, param3:int)
      {
         super();
         this.uin = param1;
         this.role = param2;
         this.svr = param3;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PVPBATTLEFIELD;
      }
   }
}
