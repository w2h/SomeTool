package sound.commands
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class PlayUISoundCommand extends Command
   {
       
      public var id:uint;
      
      public function PlayUISoundCommand(param1:uint)
      {
         super();
         this.id = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.SOUND;
      }
   }
}
