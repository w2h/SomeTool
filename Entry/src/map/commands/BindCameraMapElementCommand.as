package map.commands
{
   import map.element.BaseMapElement;
   
   public class BindCameraMapElementCommand extends BaseMapCommand
   {
       
      public var element:BaseMapElement;
      
      public function BindCameraMapElementCommand(param1:BaseMapElement)
      {
         super();
         this.element = param1;
      }
   }
}
