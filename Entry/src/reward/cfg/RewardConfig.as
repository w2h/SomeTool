package reward.cfg
{
   import flash.utils.Dictionary;
   import cfgData.dataStruct.RewardItemTransferCFG;
   import cfgData.dataStruct.RewardTransferCFG;
   import base.ApplicationData;
   
   public class RewardConfig
   {
       
      private var dict:Dictionary;
      
      public function RewardConfig()
      {
         super();
         this.dict = new Dictionary();
      }
      
      public function setData(param1:Dictionary, param2:Object) : void
      {
         var _loc4_:RewardItemTransferCFG = null;
         var _loc5_:RewardTransferCFG = null;
         var _loc6_:RewardItemCfg = null;
         var _loc7_:* = 0;
         var _loc8_:Array = null;
         var _loc9_:RewardCfg = null;
         var _loc3_:Object = {};
         for each(_loc4_ in param2)
         {
            if(_loc4_.itemId != 12520001)
            {
               _loc6_ = new RewardItemCfg();
               _loc6_.itemId = _loc4_.itemId;
               _loc6_.name = _loc4_.name;
               _loc6_.num = _loc4_.num;
               _loc6_.sure = _loc4_.sure;
               _loc7_ = _loc4_.rewardId;
               _loc8_ = _loc3_[_loc7_] as Array;
               if(!_loc8_)
               {
                  _loc3_[_loc7_] = _loc8_ = [];
               }
               _loc8_.push(_loc6_);
            }
         }
         for each(_loc5_ in param1)
         {
            _loc9_ = new RewardCfg();
            _loc9_.id = _loc5_.id;
            _loc9_.randomType = _loc5_.randomType;
            _loc9_.randomNum = _loc5_.randomNum;
            for each(_loc6_ in _loc3_[_loc9_.id])
            {
               if(_loc6_.sure)
               {
                  _loc9_.items.push(_loc6_);
               }
               else
               {
                  _loc9_.randomItems.push(_loc6_);
               }
            }
            this.dict[_loc9_.id] = _loc9_;
         }
      }
      
      public function getRewardCfg(param1:int) : RewardCfg
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
