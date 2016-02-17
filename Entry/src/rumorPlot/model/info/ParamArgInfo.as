package rumorPlot.model.info
{
   public class ParamArgInfo
   {
       
      public var paramArgVect:Vector.<rumorPlot.model.info.ParamArg>;
      
      public function ParamArgInfo()
      {
         this.paramArgVect = new Vector.<ParamArg>();
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc4_:rumorPlot.model.info.ParamArg = null;
         var _loc2_:XMLList = param1.Arg;
         var _loc3_:int = _loc2_.length();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = new rumorPlot.model.info.ParamArg();
            _loc4_.decode(_loc2_[_loc5_]);
            this.paramArgVect.push(_loc4_);
            _loc5_++;
         }
      }
      
      public function update(param1:ParamArgInfo) : void
      {
         var _loc4_:rumorPlot.model.info.ParamArg = null;
         var _loc2_:int = this.paramArgVect.length;
         var _loc3_:int = param1.paramArgVect.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            if(_loc5_ < _loc2_)
            {
               this.paramArgVect[_loc5_].update(param1.paramArgVect[_loc5_]);
            }
            else
            {
               _loc4_ = new rumorPlot.model.info.ParamArg();
               _loc4_.update(param1.paramArgVect[_loc5_]);
               this.paramArgVect.push(_loc4_);
            }
            _loc5_++;
         }
      }
      
      public function copyBaseInfo(param1:ParamArgInfo) : void
      {
         var _loc3_:rumorPlot.model.info.ParamArg = null;
         this.paramArgVect = new Vector.<ParamArg>();
         var _loc2_:int = param1.paramArgVect?param1.paramArgVect.length:0;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_ = new rumorPlot.model.info.ParamArg();
            _loc3_.copyBaseInfo(param1.paramArgVect[_loc4_]);
            this.paramArgVect.push(_loc3_);
            _loc4_++;
         }
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <ParamArg/>;
         var _loc2_:int = this.paramArgVect?this.paramArgVect.length:0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.appendChild(this.paramArgVect[_loc3_].encode());
            _loc3_++;
         }
         return _loc1_;
      }
   }
}
