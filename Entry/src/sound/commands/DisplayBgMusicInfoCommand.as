package sound.commands
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class DisplayBgMusicInfoCommand extends Command
   {
       
      public function DisplayBgMusicInfoCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.SOUND;
      }
   }
}
