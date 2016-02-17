package throughTheBeast.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenThroughTheBeastNpcPanelCommand extends NarutoCommand
   {
       
      public var id:int;
      
      public function OpenThroughTheBeastNpcPanelCommand(param1:int)
      {
         super();
         this.id = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.THROUGHTHEBEAST;
      }
   }
}
