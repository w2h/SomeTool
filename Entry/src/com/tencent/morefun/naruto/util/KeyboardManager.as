package com.tencent.morefun.naruto.util
{
   import flash.utils.Dictionary;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   
   public class KeyboardManager
   {
      
      private static var ms_instance:com.tencent.morefun.naruto.util.KeyboardManager;
      
      private static var keyFuncListMap:Dictionary = new Dictionary();
      
      private static var keyClickListMap:Dictionary = new Dictionary();
      
      private static var keyString:String = "";
      
      private static var inited:Boolean = false;
       
      public function KeyboardManager()
      {
         super();
      }
      
      public static function get singleton() : com.tencent.morefun.naruto.util.KeyboardManager
      {
         if(ms_instance == null)
         {
            ms_instance = new com.tencent.morefun.naruto.util.KeyboardManager();
         }
         return ms_instance;
      }
      
      public function initialize(param1:Stage) : void
      {
         if(inited)
         {
            return;
         }
         param1.addEventListener(KeyboardEvent.KEY_DOWN,this.down);
         param1.addEventListener(KeyboardEvent.KEY_UP,this.up);
         inited = true;
      }
      
      protected function up(param1:KeyboardEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:Function = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         _loc4_ = String.fromCharCode(param1.keyCode);
         for(_loc7_ in keyClickListMap)
         {
            if(_loc7_ && _loc4_ == _loc7_)
            {
               _loc2_ = keyClickListMap[_loc7_].funcList;
               _loc3_ = keyClickListMap[_loc7_].paramList;
               _loc8_ = 0;
               while(_loc8_ < _loc2_.length)
               {
                  _loc5_ = _loc2_[_loc8_];
                  _loc6_ = _loc3_[_loc8_];
                  _loc5_.apply(null,_loc6_);
                  _loc8_++;
               }
               break;
            }
         }
      }
      
      protected function down(param1:KeyboardEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Function = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:* = 0;
         keyString = keyString + String.fromCharCode(param1.charCode);
         keyString = keyString.substr(-100);
         for(_loc6_ in keyFuncListMap)
         {
            if(_loc6_ && keyString.substr(-_loc6_.length) == _loc6_)
            {
               _loc2_ = keyFuncListMap[_loc6_].funcList;
               _loc3_ = keyFuncListMap[_loc6_].paramList;
               _loc7_ = 0;
               while(_loc7_ < _loc2_.length)
               {
                  _loc4_ = _loc2_[_loc7_];
                  _loc5_ = _loc3_[_loc7_];
                  _loc4_.apply(null,_loc5_);
                  _loc7_++;
               }
               break;
            }
         }
      }
      
      public function addKeyClickListener(param1:String, param2:Function, param3:Array = null) : void
      {
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         _loc6_ = keyClickListMap[param1];
         if(_loc6_ == null)
         {
            _loc4_ = new Array();
            _loc5_ = new Array();
            keyClickListMap[param1] = {
               "funcList":_loc4_,
               "paramList":_loc5_
            };
         }
         else
         {
            _loc4_ = _loc6_.funcList;
            _loc5_ = _loc6_.paramList;
         }
         if(_loc4_.indexOf(param2) != -1)
         {
            return;
         }
         _loc4_.push(param2);
         _loc5_.push(param3);
      }
      
      public function removeKeyClickListener(param1:String, param2:Function) : void
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         _loc3_ = keyClickListMap[param1].funcList;
         _loc4_ = keyClickListMap[param1].paramList;
         _loc5_ = _loc3_.indexOf(param2);
         if(_loc5_ != -1)
         {
            _loc3_.splice(_loc5_,1);
            _loc4_.splice(_loc5_,1);
         }
      }
      
      public function addKeyboardListener(param1:String, param2:Function, param3:Array = null) : void
      {
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         _loc6_ = keyFuncListMap[param1];
         if(_loc6_ == null)
         {
            _loc4_ = new Array();
            _loc5_ = new Array();
            keyFuncListMap[param1] = {
               "funcList":_loc4_,
               "paramList":_loc5_
            };
         }
         else
         {
            _loc4_ = _loc6_.funcList;
            _loc5_ = _loc6_.paramList;
         }
         if(_loc4_.indexOf(param2) != -1)
         {
            return;
         }
         _loc4_.push(param2);
         _loc5_.push(param3);
      }
      
      public function removeKeyboardListener(param1:String, param2:Function) : void
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         _loc3_ = keyFuncListMap[param1].funcList;
         _loc4_ = keyFuncListMap[param1].paramList;
         _loc5_ = _loc3_.indexOf(param2);
         if(_loc5_ != -1)
         {
            _loc3_.splice(_loc5_,1);
            _loc4_.splice(_loc5_,1);
         }
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(keyFuncListMap,"autoDestroy");
         keyFuncListMap = null;
         CollectionClearUtil.clearDictionary(keyClickListMap,"autoDestroy");
         keyClickListMap = null;
         ms_instance = null;
         keyFuncListMap = null;
         keyClickListMap = null;
         keyString = null;
      }
   }
}
