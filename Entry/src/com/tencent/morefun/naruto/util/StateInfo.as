package com.tencent.morefun.naruto.util
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.log.logger;
   
   public class StateInfo
   {
       
      private var state:String = "";
      
      private var callBackMap:Dictionary;
      
      private var conflictInfoMap:Dictionary;
      
      private var bindingInfoMap:Dictionary;
      
      private var refInfoMap:Dictionary;
      
      private var flagNameMap:Dictionary;
      
      public function StateInfo(param1:String = "")
      {
         this.callBackMap = new Dictionary();
         this.conflictInfoMap = new Dictionary();
         this.bindingInfoMap = new Dictionary();
         this.refInfoMap = new Dictionary();
         this.flagNameMap = new Dictionary();
         super();
         var _loc2_:int = param1.length;
         while(_loc2_ < 100)
         {
            var param1:String = param1 + "0";
            _loc2_++;
         }
         this.state = param1;
      }
      
      public function addFlagChangedListenerByName(param1:String, param2:Function, param3:Object = null, param4:int = 0) : void
      {
         var _loc5_:* = 0;
         if(this.flagNameMap[param1] == null)
         {
            throw new Error("state name " + param1 + "no find");
         }
         _loc5_ = this.flagNameMap[param1];
         this.addFlagChangedListener(_loc5_,param2,param3,param4);
      }
      
      public function addFlagChangedListener(param1:int, param2:Function, param3:Object = null, param4:int = 0) : void
      {
         var _loc5_:Array = null;
         _loc5_ = this.callBackMap[param1];
         if(_loc5_ == null)
         {
            _loc5_ = [];
            this.callBackMap[param1] = _loc5_;
         }
         _loc5_.push(new FlagCallBackInfo(param1,param2,param3,param4));
         _loc5_.sortOn(["priority"],Array.DESCENDING);
      }
      
      public function removeFlagChangedListenerByName(param1:String, param2:Function) : void
      {
         var _loc3_:* = 0;
         if(this.flagNameMap[param1] == null)
         {
            throw new Error("state name " + param1 + "no find");
         }
         _loc3_ = this.flagNameMap[param1];
         this.removeFlagChangedListener(_loc3_,param2);
      }
      
      public function removeFlagChangedListener(param1:int, param2:Function) : void
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:FlagCallBackInfo = null;
         _loc3_ = this.callBackMap[param1];
         if(_loc3_ == null)
         {
            return;
         }
         _loc4_ = this.getCallBackList(param1,param2,_loc3_);
         for each(_loc5_ in _loc4_)
         {
            _loc3_.splice(_loc3_.indexOf(_loc5_),1);
         }
      }
      
      private function getCallBackList(param1:int, param2:Function, param3:Array) : Array
      {
         var _loc4_:Array = null;
         var _loc5_:FlagCallBackInfo = null;
         _loc4_ = [];
         for each(_loc5_ in param3)
         {
            if(_loc5_.offset == param1 && _loc5_.calllBack == param2)
            {
               _loc4_.push(_loc5_);
            }
         }
         return _loc4_;
      }
      
      public function addBindingInfoByName(param1:String, param2:Array) : void
      {
         var _loc3_:* = 0;
         if(this.flagNameMap[param1] == null)
         {
            throw new Error("state name " + param1 + "no find");
         }
         _loc3_ = this.flagNameMap[param1];
         this.addBindingInfo(_loc3_,param2);
      }
      
      public function addBindingInfo(param1:int, param2:Array) : void
      {
         if(this.bindingInfoMap[param1] != null)
         {
            throw new Error(param1 + "flag was set");
         }
         this.bindingInfoMap[param1] = new FlagBindingInfo(param1,param2);
      }
      
      public function addFlagConflictInfoByName(param1:String, param2:Array) : void
      {
         var _loc3_:* = 0;
         if(this.flagNameMap[param1] == null)
         {
            throw new Error("state name " + param1 + "no find");
         }
         _loc3_ = this.flagNameMap[param1];
         this.addFlagConflictInfo(_loc3_,param2);
      }
      
      public function addFlagConflictInfo(param1:int, param2:Array) : void
      {
         if(this.conflictInfoMap[param1] != null)
         {
            throw new Error(param1 + "flag was set");
         }
         this.conflictInfoMap[param1] = new FlagConflictInfo(param1,param2);
      }
      
      public function removeFlagConflictInfoByName(param1:String) : void
      {
         var _loc2_:* = 0;
         if(this.flagNameMap[param1] == null)
         {
            throw new Error("state name " + param1 + "no find");
         }
         _loc2_ = this.flagNameMap[param1];
         this.removeFlagConflictInfo(_loc2_);
      }
      
      public function removeFlagConflictInfo(param1:int) : void
      {
         delete this.conflictInfoMap[param1];
      }
      
      public function addFlagRefByName(param1:String, param2:Array, param3:Array) : void
      {
         var _loc4_:* = 0;
         if(this.flagNameMap[param1] == null)
         {
            throw new Error("state name " + param1 + "no find");
         }
         _loc4_ = this.flagNameMap[param1];
         this.addFlagRef(_loc4_,param2,param3);
      }
      
      public function addFlagRef(param1:int, param2:Array, param3:Array) : void
      {
         this.refInfoMap[param1] = new RefInfo(param1,param2,param3);
      }
      
      public function removeFlagRefByName(param1:String) : void
      {
         var _loc2_:* = 0;
         if(this.flagNameMap[param1] == null)
         {
            throw new Error("state name " + param1 + "no find");
         }
         _loc2_ = this.flagNameMap[param1];
         this.removeFlagRef(_loc2_);
      }
      
      public function removeFlagRef(param1:int) : void
      {
         delete this.refInfoMap[param1];
      }
      
      public function setFlagName(param1:String, param2:int) : void
      {
         this.flagNameMap[param1] = param2;
      }
      
      public function clearFlagName(param1:String) : void
      {
         this.flagNameMap[param1] = null;
      }
      
      public function setFlagByName(param1:String, param2:Boolean) : void
      {
         var _loc3_:* = 0;
         if(this.flagNameMap[param1] == null)
         {
            throw new Error("state name " + param1 + "no find");
         }
         _loc3_ = this.flagNameMap[param1];
         this.setFlagByOffset(_loc3_,param2);
         logger.output("setFlagByName",param1,param2);
      }
      
      public function getFlagByName(param1:String) : Boolean
      {
         var _loc2_:* = 0;
         if(this.flagNameMap[param1] == null)
         {
            throw new Error("state name " + param1 + "no find");
         }
         _loc2_ = this.flagNameMap[param1];
         return this.getFlagByOffset(_loc2_);
      }
      
      public function setFlagByOffset(param1:int, param2:Boolean, param3:Boolean = true) : void
      {
         var _loc4_:FlagConflictInfo = null;
         var _loc5_:FlagBindingInfo = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         _loc4_ = this.conflictInfoMap[param1];
         if(_loc4_ != null && param2 == true)
         {
            _loc6_ = _loc4_.conflictInfo;
            for each(_loc8_ in _loc6_)
            {
               this.updateFlag(_loc8_,false);
            }
         }
         _loc5_ = this.bindingInfoMap[param1];
         if(_loc5_ != null && param2 == true)
         {
            _loc7_ = _loc5_.bindingInfo;
            for each(_loc9_ in _loc7_)
            {
               this.updateFlag(_loc9_,true);
               this.updateFlag(_loc9_,false);
            }
         }
         this.updateFlag(param1,param2);
         if(param3)
         {
            this.checkRef();
         }
      }
      
      public function getFlagByOffset(param1:int) : Boolean
      {
         return StateUtil.checkStringFlag(this.state,param1);
      }
      
      private function updateFlag(param1:int, param2:Boolean) : void
      {
         var _loc3_:* = false;
         var _loc4_:Array = null;
         var _loc5_:FlagCallBackInfo = null;
         _loc3_ = StateUtil.checkStringFlag(this.state,param1);
         if(_loc3_ == param2)
         {
            return;
         }
         this.state = StateUtil.changeStringFlag(this.state,param1,param2);
         _loc4_ = this.callBackMap[param1];
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.data == null)
            {
               _loc5_.calllBack();
            }
            else
            {
               _loc5_.calllBack(_loc5_.data);
            }
         }
         logger.output("updateFlag",param1,param2);
      }
      
      public function checkRef() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:* = false;
         var _loc4_:RefInfo = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         for each(_loc4_ in this.refInfoMap)
         {
            _loc1_ = _loc4_.trueRefOffsets;
            _loc2_ = _loc4_.falseRefOffsets;
            _loc3_ = true;
            for each(_loc5_ in _loc1_)
            {
               if(this.getFlagByOffset(_loc5_) == false)
               {
                  _loc3_ = false;
                  this.setFlagByOffset(_loc4_.offset,false,false);
               }
            }
            if(_loc3_ != false)
            {
               for each(_loc6_ in _loc2_)
               {
                  if(this.getFlagByOffset(_loc6_) == true)
                  {
                     _loc3_ = false;
                     this.setFlagByOffset(_loc4_.offset,false,false);
                  }
               }
               if(_loc3_ != false)
               {
                  if(this.getFlagByOffset(_loc4_.offset) == false)
                  {
                     this.setFlagByOffset(_loc4_.offset,true,false);
                  }
               }
            }
         }
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(this.callBackMap,"autoDestroy");
         this.callBackMap = null;
         CollectionClearUtil.clearDictionary(this.conflictInfoMap,"autoDestroy");
         this.conflictInfoMap = null;
         CollectionClearUtil.clearDictionary(this.bindingInfoMap,"autoDestroy");
         this.bindingInfoMap = null;
         CollectionClearUtil.clearDictionary(this.refInfoMap,"autoDestroy");
         this.refInfoMap = null;
         CollectionClearUtil.clearDictionary(this.flagNameMap,"autoDestroy");
         this.flagNameMap = null;
         this.state = null;
         this.callBackMap = null;
         this.conflictInfoMap = null;
         this.bindingInfoMap = null;
         this.refInfoMap = null;
         this.flagNameMap = null;
      }
   }
}

class FlagCallBackInfo
{
    
   public var offset:int;
   
   public var calllBack:Function;
   
   public var data:Object;
   
   public var priority:int;
   
   function FlagCallBackInfo(param1:int, param2:Function, param3:Object, param4:int)
   {
      super();
      this.offset = param1;
      this.calllBack = param2;
      this.data = param3;
      this.priority = param4;
   }
   
   public function autoSetNull() : void
   {
      this.calllBack = null;
      this.data = null;
   }
}

class FlagConflictInfo
{
    
   public var offset:int;
   
   public var conflictInfo:Array;
   
   function FlagConflictInfo(param1:int, param2:Array)
   {
      super();
      this.offset = param1;
      this.conflictInfo = param2;
   }
   
   public function autoSetNull() : void
   {
      this.conflictInfo = null;
   }
}

class FlagBindingInfo
{
    
   public var offset:int;
   
   public var bindingInfo:Array;
   
   function FlagBindingInfo(param1:int, param2:Array)
   {
      super();
      this.offset = param1;
      this.bindingInfo = param2;
   }
   
   public function autoSetNull() : void
   {
      this.bindingInfo = null;
   }
}

class RefInfo
{
    
   public var offset:int;
   
   public var trueRefOffsets:Array;
   
   public var falseRefOffsets:Array;
   
   function RefInfo(param1:int, param2:Array, param3:Array)
   {
      super();
      this.offset = param1;
      this.trueRefOffsets = param2;
      this.falseRefOffsets = param3;
   }
   
   public function autoSetNull() : void
   {
      this.trueRefOffsets = null;
      this.falseRefOffsets = null;
   }
}
