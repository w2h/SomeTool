package rumorPlot.model.cfg
{
   import flash.utils.Dictionary;
   import rumorPlot.model.info.FavorInfos;
   
   public class FavorInfosConfig
   {
       
      public var favorInfoDict:Dictionary;
      
      public function FavorInfosConfig()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc4_:FavorInfos = null;
         this.favorInfoDict = new Dictionary();
         var _loc2_:XMLList = param1.FavorInfo;
         var _loc3_:int = _loc2_.length();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = new FavorInfos();
            _loc4_.decode(_loc2_[_loc5_]);
            this.favorInfoDict[_loc4_.num] = _loc4_;
            _loc5_++;
         }
      }
      
      public function getFavorByNum(param1:int) : FavorInfos
      {
         var _loc2_:FavorInfos = null;
         var _loc3_:* = 0;
         var _loc4_:FavorInfos = null;
         if(param1)
         {
            for each(_loc4_ in this.favorInfoDict)
            {
               if(_loc4_.num <= param1 && _loc3_ <= _loc4_.num)
               {
                  _loc3_ = _loc4_.num;
               }
            }
            _loc2_ = this.favorInfoDict[_loc3_];
         }
         else
         {
            _loc2_ = new FavorInfos();
         }
         return _loc2_;
      }
      
      public function getFavorByLevel(param1:int) : FavorInfos
      {
         var _loc2_:FavorInfos = null;
         var _loc3_:FavorInfos = null;
         for each(_loc3_ in this.favorInfoDict)
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
         this.favorInfoDict = null;
      }
   }
}
