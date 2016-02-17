package ninja.command
{
   import RSModel.command.RSModelCommand;
   import ninja.model.data.NinjaHotkeyInfo;
   
   public class SwapNinjaHotkeyCommand extends RSModelCommand
   {
       
      public var src:uint;
      
      public var dst:uint;
      
      public var id:uint;
      
      public var hotkey:NinjaHotkeyInfo;
      
      public function SwapNinjaHotkeyCommand(param1:uint, param2:uint, param3:uint)
      {
         super();
         this.src = param1;
         this.dst = param2;
         this.id = param3;
      }
   }
}
