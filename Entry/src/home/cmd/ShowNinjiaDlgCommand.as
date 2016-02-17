package home.cmd
{
   import def.PluginDef;
   
   public class ShowNinjiaDlgCommand extends BaseHomeCommand
   {
       
      public var ninjiaClassId:int;
      
      public var haveChat:Boolean;
      
      public function ShowNinjiaDlgCommand(param1:int, param2:Boolean)
      {
         super();
         this.haveChat = param2;
         this.ninjiaClassId = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HOME;
      }
   }
}
