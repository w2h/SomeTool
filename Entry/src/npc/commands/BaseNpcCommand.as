package npc.commands
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseNpcCommand extends Command
   {
       
      public function BaseNpcCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NPC;
      }
   }
}
