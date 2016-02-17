package ui.command
{
   import com.tencent.morefun.framework.base.Command;
   import player.datas.PlayerData;
   import def.PluginDef;
   
   public class SetSelectedPlayerCommand extends Command
   {
       
      public var playerData:PlayerData;
      
      public function SetSelectedPlayerCommand(param1:PlayerData)
      {
         super();
         this.playerData = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
