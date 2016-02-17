package dungeon.model.data
{
   import bag.data.ItemData;
   
   public class UniversalWipeoutIncome
   {
       
      public var order:uint;
      
      public var copper:uint;
      
      public var copperBuff:uint;
      
      public var exp:uint;
      
      public var expBuff:uint;
      
      public var ninjaExp:uint;
      
      public var ninjaExpBuff:uint;
      
      public var items:Vector.<ItemData>;
      
      public var complete:Boolean;
      
      public var suffix:Boolean;
      
      public var from:uint;
      
      public var animateFlag:int;
      
      public function UniversalWipeoutIncome(param1:uint)
      {
         super();
         this.from = param1;
         this.items = new Vector.<ItemData>();
         this.animateFlag = -1;
      }
   }
}
