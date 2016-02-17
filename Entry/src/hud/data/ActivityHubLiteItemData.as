package hud.data
{
   import flash.utils.getTimer;
   
   public class ActivityHubLiteItemData
   {
      
      public static const STATUS_ENABLED:int = 1;
      
      public static const STATUS_CD:int = 2;
      
      public static const STATUS_DONE:int = 3;
       
      public var id:int;
      
      public var totalNum:int;
      
      public var remainderNum:int;
      
      public var status:int;
      
      private var _cd:int;
      
      private var cd_runtimer:uint;
      
      public function ActivityHubLiteItemData()
      {
         super();
      }
      
      public function get cd() : int
      {
         var _loc1_:int = this._cd - int(getTimer() / 1000 - this.cd_runtimer);
         if(_loc1_ <= 0)
         {
            this.status = STATUS_ENABLED;
         }
         return _loc1_;
      }
      
      public function set cd(param1:int) : void
      {
         this._cd = param1;
         this.cd_runtimer = getTimer() / 1000;
      }
   }
}
