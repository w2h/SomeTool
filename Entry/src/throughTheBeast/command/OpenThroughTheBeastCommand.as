package throughTheBeast.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenThroughTheBeastCommand extends NarutoCommand
   {
       
      public var errorCode:int;
      
      public var tabIdx:int;
      
      public var innerTabIdx:int;
      
      public function OpenThroughTheBeastCommand(param1:int = 0, param2:int = 0)
      {
         this.tabIdx = param1;
         this.innerTabIdx = param2;
         super(2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.THROUGHTHEBEAST;
      }
   }
}
