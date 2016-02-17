package growUpStronger.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenGrowUpStrongerCommand extends NarutoCommand
   {
       
      public var errorCode:int;
      
      public var tabIdx:int = 1;
      
      public function OpenGrowUpStrongerCommand(param1:int = 1)
      {
         super(2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GROWUPSTRONGER;
      }
   }
}
