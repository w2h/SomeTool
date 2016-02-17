package throughTheBeast.command
{
   import base.NarutoCommand;
   import flash.display.DisplayObjectContainer;
   import def.PluginDef;
   
   public class GetTalentBeastPanelCmd extends NarutoCommand
   {
       
      public var parent:DisplayObjectContainer;
      
      public var view;
      
      public var largeMode:Boolean;
      
      public function GetTalentBeastPanelCmd(param1:DisplayObjectContainer, param2:Boolean)
      {
         super();
         this.parent = param1;
         this.largeMode = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.THROUGHTHEBEAST;
      }
   }
}
