package sound.commands
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ChangeAudioStatusCommand extends Command
   {
       
      public var enabled:Boolean;
      
      public function ChangeAudioStatusCommand(param1:Boolean)
      {
         super();
         this.enabled = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.SOUND;
      }
   }
}
