package tabard.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenTabardCommand extends NarutoCommand
   {
       
      public var errorCode:int;
      
      public var tabIdx:int;
      
      public var mainTabIdx:int;
      
      public var showIdx:Boolean;
      
      public function OpenTabardCommand(param1:int = 0, param2:int = 0, param3:Boolean = false)
      {
         this.tabIdx = param1;
         this.mainTabIdx = param2;
         this.showIdx = param3;
         super(2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.TABARD;
      }
   }
}
