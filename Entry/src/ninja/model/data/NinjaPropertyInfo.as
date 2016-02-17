package ninja.model.data
{
   public class NinjaPropertyInfo
   {
       
      public var original:int;
      
      public var otherBuff:int;
      
      public var growth:uint;
      
      public var vipBuff:uint;
      
      public function NinjaPropertyInfo()
      {
         super();
      }
      
      public function get value() : int
      {
         return this.original + this.otherBuff + this.vipBuff;
      }
      
      public function clone() : NinjaPropertyInfo
      {
         var _loc1_:NinjaPropertyInfo = null;
         _loc1_ = new NinjaPropertyInfo();
         _loc1_.original = this.original;
         _loc1_.otherBuff = this.otherBuff;
         _loc1_.growth = this.growth;
         _loc1_.vipBuff = this.vipBuff;
         return _loc1_;
      }
   }
}
