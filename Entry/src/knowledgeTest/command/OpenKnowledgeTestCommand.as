package knowledgeTest.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenKnowledgeTestCommand extends NarutoCommand
   {
       
      public var errorCode:int;
      
      public function OpenKnowledgeTestCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.KNOWLEDGETEST;
      }
   }
}
