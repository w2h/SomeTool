package ninja.model.data
{
   public class NinjaAwakenItemInfo
   {
       
      public var itemId:uint;
      
      public var needNum:uint;
      
      public var hasNum:uint;
      
      public function NinjaAwakenItemInfo(param1:uint = 0, param2:uint = 0, param3:uint = 0)
      {
         super();
         this.itemId = param1;
         this.needNum = param2;
         this.hasNum = param3;
      }
   }
}
