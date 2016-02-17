package
{
   import flash.utils.Dictionary;
   
   public class RandomStringGenerator implements INameGenerator
   {
       
      public var from:uint;
      
      public var to:uint;
      
      public var prev:Dictionary;
      
      public function RandomStringGenerator(param1:uint = 1, param2:uint = 255)
      {
         this.prev = new Dictionary();
         super();
         this.from = param1;
         this.to = param2;
      }
      
      public function generate(param1:uint, param2:Boolean) : String
      {
         var _loc4_:String = null;
         var _loc3_:* = "";
         do
         {
            while(_loc3_.length < param1)
            {
               _loc4_ = String.fromCharCode(this.from + uint((this.to - this.from + 0.4) * Math.random()));
               if(_loc4_ != "." || param2)
               {
                  _loc3_ = _loc3_ + _loc4_;
               }
            }
         }
         while(this.prev[_loc3_]);
         
         this.prev[_loc3_] = true;
         return _loc3_;
      }
   }
}
