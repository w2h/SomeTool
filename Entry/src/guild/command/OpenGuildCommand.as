package guild.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenGuildCommand extends NarutoCommand
   {
       
      public var errorCode:int;
      
      public var tabIdx:int;
      
      public var isGVG:Boolean;
      
      public function OpenGuildCommand(param1:int = 0, param2:Boolean = false)
      {
         this.tabIdx = param1;
         this.isGVG = param2;
         super(2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GUILD;
      }
   }
}
