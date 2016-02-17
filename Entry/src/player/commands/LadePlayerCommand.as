package player.commands
{
   import flash.geom.Point;
   import com.tencent.morefun.framework.base.Command;
   
   public class LadePlayerCommand extends BasePlayerCommand
   {
       
      public var leaderNinjaIds:Vector.<uint>;
      
      public var position:Point;
      
      public var direction:int;
      
      public function LadePlayerCommand(param1:String, param2:Point, param3:int)
      {
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:uint = 0;
         var _loc7_:* = 0;
         super(Command.FULL_SCREEN | Command.TOTAL_FILE);
         this.position = param2;
         this.direction = param3;
         var param1:String = param1.replace(new RegExp(" ","g"),"");
         if(param1)
         {
            this.leaderNinjaIds = new Vector.<uint>();
            _loc4_ = param1.split(",");
            _loc5_ = _loc4_.length;
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               _loc6_ = uint(_loc4_[_loc7_]);
               if(_loc6_)
               {
                  this.leaderNinjaIds.push(_loc6_);
               }
               _loc7_++;
            }
         }
      }
   }
}
