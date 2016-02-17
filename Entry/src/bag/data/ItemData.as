package bag.data
{
   import bag.utils.BagUtils;
   
   public class ItemData
   {
       
      public var id:uint;
      
      public var resId:uint;
      
      public var type:int;
      
      public var name:String;
      
      public var description:String;
      
      public var index:int;
      
      public var num:int;
      
      public var price:uint;
      
      public var color:uint;
      
      private var _normalMenu:Vector.<int>;
      
      public var expiredMenu:Vector.<int>;
      
      public var achievedWay:String;
      
      public var tupoPrice:int;
      
      public var exchangeType:int;
      
      public var defaultPrice:int;
      
      public function ItemData()
      {
         super();
      }
      
      public function get normalMenu() : Vector.<int>
      {
         return this._normalMenu;
      }
      
      public function set normalMenu(param1:Vector.<int>) : void
      {
         this._normalMenu = param1;
      }
      
      public function get tab() : int
      {
         return BagUtils.calcItemTab(this.id);
      }
   }
}
