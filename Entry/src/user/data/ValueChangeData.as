package user.data
{
   public class ValueChangeData
   {
       
      public var oldValue:int;
      
      public var newValue:int;
      
      public var reason:int;
      
      public function ValueChangeData(param1:int, param2:int, param3:int = 0)
      {
         super();
         this.oldValue = param1;
         this.newValue = param2;
         this.reason = param3;
      }
   }
}
