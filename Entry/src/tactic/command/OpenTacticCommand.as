package tactic.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenTacticCommand extends Command
   {
       
      public var type:uint;
      
      public function OpenTacticCommand(param1:uint)
      {
         super();
         this.type = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.TACTIC;
      }
   }
}
