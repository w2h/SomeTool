package ninja.command
{
   import RSModel.command.RSModelCommand;
   import ninja.model.data.NinjaInfo;
   
   public class CarryNinjaCommand extends RSModelCommand
   {
       
      public var sequence:uint;
      
      public var pkgNinjas:Vector.<NinjaInfo>;
      
      public var replaceNinja:uint;
      
      public function CarryNinjaCommand(param1:uint, param2:uint)
      {
         super();
         this.sequence = param1;
         this.replaceNinja = param2;
      }
   }
}
