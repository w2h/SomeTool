package miniGame.cmds
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseMiniGameCommand extends Command
   {
       
      public function BaseMiniGameCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.MINI_GAME;
      }
   }
}
