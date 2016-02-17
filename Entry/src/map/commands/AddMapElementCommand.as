package map.commands
{
   import map.element.BaseMapElement;
   
   public class AddMapElementCommand extends BaseMapCommand
   {
       
      public var element:BaseMapElement;
      
      public var layer:int;
      
      public function AddMapElementCommand(param1:BaseMapElement, param2:int)
      {
         super();
         this.element = param1;
         this.layer = param2;
      }
   }
}
