package ninja.command
{
   public class OpenNinjaDetailCommand extends NinjaCommand
   {
       
      public var ninjaId:int;
      
      public var owned:Boolean;
      
      public var sequence:int;
      
      public function OpenNinjaDetailCommand(param1:int, param2:Boolean, param3:int = -1)
      {
         super();
         this.ninjaId = param1;
         this.owned = param2;
         this.sequence = param3;
      }
   }
}
