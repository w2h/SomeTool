package user.data
{
   public class NinjaPropertyComposeInfo
   {
       
      public var original:int;
      
      public var equipEffect:int;
      
      public var jadeEffect:int;
      
      public var total:int;
      
      public function NinjaPropertyComposeInfo()
      {
         super();
      }
      
      public function toString() : String
      {
         return this.original + " + " + (this.equipEffect + this.jadeEffect);
      }
   }
}
