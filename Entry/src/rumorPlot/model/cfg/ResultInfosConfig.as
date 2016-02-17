package rumorPlot.model.cfg
{
   import flash.utils.Dictionary;
   import rumorPlot.model.info.ResultInfos;
   
   public class ResultInfosConfig
   {
       
      public var resultInfoDict:Dictionary;
      
      public function ResultInfosConfig()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc4_:ResultInfos = null;
         this.resultInfoDict = new Dictionary();
         var _loc2_:XMLList = param1.ResultInfo;
         var _loc3_:int = _loc2_.length();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = new ResultInfos();
            _loc4_.decode(_loc2_[_loc5_]);
            this.resultInfoDict[_loc4_.num] = _loc4_;
            _loc5_++;
         }
      }
      
      public function getResultByNum(param1:int) : ResultInfos
      {
         var _loc2_:ResultInfos = null;
         var _loc3_:* = 0;
         var _loc4_:ResultInfos = null;
         if(param1)
         {
            for each(_loc4_ in this.resultInfoDict)
            {
               if(_loc4_.num <= param1 && _loc3_ <= _loc4_.num)
               {
                  _loc3_ = _loc4_.num;
               }
            }
            _loc2_ = this.resultInfoDict[_loc3_];
         }
         else
         {
            _loc2_ = new ResultInfos();
         }
         return _loc2_;
      }
      
      public function getResultByLevel(param1:int) : ResultInfos
      {
         var _loc2_:ResultInfos = null;
         var _loc3_:ResultInfos = null;
         for each(_loc3_ in this.resultInfoDict)
         {
            if(_loc3_.level == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public function encode() : XML
      {
         return null;
      }
      
      public function dispose() : void
      {
         this.resultInfoDict = null;
      }
   }
}
