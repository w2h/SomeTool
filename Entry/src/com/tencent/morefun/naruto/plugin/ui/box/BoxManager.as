package com.tencent.morefun.naruto.plugin.ui.box
{
   import flash.events.EventDispatcher;
   import flash.display.Stage;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import flash.display.DisplayObject;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import com.greensock.TweenLite;
   import com.greensock.easing.Back;
   import flash.display.InteractiveObject;
   
   public class BoxManager
   {
      
      public static var waitingList:Array;
      
      private static var _showingList:Array = [];
      
      private static var _showingBoxNames:Array = [];
      
      private static var _dispatcher:EventDispatcher = new EventDispatcher();
      
      private static var _stage:Stage;
      
      private static const bingdingCommandMap:Dictionary = new Dictionary();
      
      private static var _modals:Array;
      
      private static var _onOpening:Function;
      
      private static var _onOpened:Function;
      
      private static var _onClosing:Function;
      
      private static var _onClosed:Function;
       
      public function BoxManager()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         _stage = param1;
         _stage.addEventListener(Event.RESIZE,onStageResize);
         _stage.addEventListener(KeyboardEvent.KEY_DOWN,onKeyDown);
         _modals = [];
      }
      
      protected static function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:IBox = null;
         if(param1.keyCode == Keyboard.ESCAPE)
         {
            if(_showingList.length)
            {
               _loc2_ = _showingList[_showingList.length - 1];
               if(_loc2_.disableEsc == false)
               {
                  _loc2_.close();
               }
            }
         }
      }
      
      public static function destroy() : void
      {
         if(_stage != null && _stage.hasEventListener(Event.RESIZE))
         {
            _stage.removeEventListener(Event.RESIZE,onStageResize);
         }
         var _loc1_:int = _modals.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _modals[_loc2_].destroy();
            _loc2_++;
         }
      }
      
      private static function onStageResize(param1:Event) : void
      {
         var _loc2_:int = _modals.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(_modals[_loc3_].visible)
            {
               _modals[_loc3_].resize();
            }
            _loc3_++;
         }
      }
      
      public static function set onOpening(param1:Function) : void
      {
         _onOpening = param1;
      }
      
      public static function set onOpened(param1:Function) : void
      {
         _onOpened = param1;
      }
      
      public static function set onClosing(param1:Function) : void
      {
         _onClosing = param1;
      }
      
      public static function set onClosed(param1:Function) : void
      {
         _onClosed = param1;
      }
      
      public static function show(param1:IBox, param2:String = null) : IBox
      {
         var _loc3_:BoxManagerEvent = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         if(param1 == null || param1.isShow)
         {
            return param1;
         }
         if(_onOpening != null && !_onOpening(param1))
         {
            return null;
         }
         param1.content.alpha = 0;
         param1.content.visible = true;
         param1.content.mouseChildren = false;
         param1.content.mouseEnabled = false;
         param1.background.alpha = 0;
         param1.isShow = true;
         if(param1.location != -1)
         {
            LayoutManager.singleton.addItemAndLayout(param1 as DisplayObject,param2 || LayerDef.BOX,param1.location,param1.locationOffset);
            param1.background.x = (param1.background.width - param1.background.width * 0.5) / 2;
            param1.background.y = (param1.background.height - param1.background.height * 0.5) / 2;
            _loc6_ = 0;
            _loc7_ = 0;
         }
         else
         {
            LayerManager.singleton.addItemToLayer(param1 as DisplayObject,param2 || LayerDef.BOX);
            param1.background.x = (LayoutManager.stageWidth - param1.background.width * 0.5) / 2;
            param1.background.y = (LayoutManager.stageHeight - param1.background.height * 0.5) / 2;
            _loc6_ = (LayoutManager.stageWidth - param1.background.width) / 2;
            _loc7_ = (LayoutManager.stageHeight - param1.background.height) / 2;
         }
         _loc4_ = param1.background.width;
         _loc5_ = param1.background.height;
         param1.background.width = param1.background.width * 0.5;
         param1.background.height = param1.background.height * 0.5;
         param1.content.x = _loc6_;
         param1.content.y = _loc7_;
         if(param1.tween)
         {
            TweenLite.to(param1.background,0.4,{
               "x":_loc6_,
               "y":_loc7_,
               "width":_loc4_,
               "height":_loc5_,
               "alpha":1,
               "ease":Back.easeOut
            });
            TweenLite.to(param1.content,0.15,{
               "alpha":1,
               "delay":0.4,
               "onComplete":showed,
               "onCompleteParams":[param1]
            });
         }
         else
         {
            param1.background.x = _loc6_;
            param1.background.y = _loc7_;
            param1.background.width = _loc4_;
            param1.background.height = _loc5_;
            param1.background.alpha = 1;
            param1.content.alpha = 1;
            showed(param1);
         }
         if(showingList.indexOf(param1) == -1)
         {
            _showingList.push(param1);
         }
         _loc3_ = new BoxManagerEvent(BoxManagerEvent.BOX_SHOW);
         _loc3_.box = param1;
         _dispatcher.dispatchEvent(_loc3_);
         addModal(param1);
         if(_onOpened != null)
         {
            _onOpened(param1);
         }
         LayoutManager.singleton.stage.focus = param1 as InteractiveObject;
         return param1;
      }
      
      public static function hide(param1:IBox) : void
      {
         if(param1 == null || !param1.isShow)
         {
            return;
         }
         if(_onClosing != null && !_onClosing(param1))
         {
            return;
         }
         var _loc2_:int = _showingList.indexOf(param1);
         if(_loc2_ != -1)
         {
            _showingList.splice(_loc2_,1);
         }
         param1.isShow = false;
         if(param1.content != null)
         {
            param1.content.visible = false;
         }
         if(param1.tween)
         {
            TweenLite.to(param1.background,0.3,{
               "alpha":0,
               "onComplete":hided,
               "onCompleteParams":[param1]
            });
         }
         else
         {
            hided(param1);
         }
         var _loc3_:BoxManagerEvent = new BoxManagerEvent(BoxManagerEvent.BOX_HIDE);
         _loc3_.box = param1;
         _dispatcher.dispatchEvent(_loc3_);
         removeModal(param1);
         if(_onClosed != null)
         {
            _onClosed(param1);
         }
      }
      
      public static function addModal(param1:IBox) : void
      {
         if(param1 == null || !param1.modal)
         {
            return;
         }
         var _loc2_:BoxModal = new BoxModal(param1);
         _loc2_.add(param1);
         _modals.push(_loc2_);
      }
      
      public static function removeModal(param1:IBox) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = -1;
         var _loc3_:int = _modals.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_modals[_loc4_].box == param1)
            {
               _loc2_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         if(_loc2_ != -1)
         {
            _modals[_loc2_].remove();
            _modals.splice(_loc2_,1);
         }
      }
      
      public static function updateModal(param1:IBox) : void
      {
         var _loc2_:BoxModal = null;
         if(param1 == null)
         {
            return;
         }
         if(param1.modal == false)
         {
            removeModal(param1);
            return;
         }
         var _loc3_:int = -1;
         var _loc4_:int = _modals.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(_modals[_loc5_].box == param1)
            {
               _loc2_ = _modals[_loc5_];
               break;
            }
            _loc5_++;
         }
         if(_loc2_ != null)
         {
            _loc2_.update();
         }
         else
         {
            addModal(param1);
         }
      }
      
      public static function bingdingCloseCommand(param1:String, param2:Object) : void
      {
         var _loc3_:Array = null;
         _loc3_ = bingdingCommandMap[param1];
         if(_loc3_ == null)
         {
            _loc3_ = [];
            bingdingCommandMap[param1] = _loc3_;
         }
         if(_loc3_.indexOf(param2) == -1)
         {
            _loc3_.push(param2);
         }
         if(getBoxByName(param1) == null)
         {
            param2["call"]();
         }
      }
      
      public static function unbingdingCloseCommand(param1:String, param2:Object) : void
      {
         var _loc3_:Array = null;
         _loc3_ = bingdingCommandMap[param1];
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.indexOf(param2) != -1)
         {
            _loc3_.splice(_loc3_.indexOf(param2),1);
         }
      }
      
      private static function getCommandList(param1:String) : Array
      {
         var _loc2_:Array = null;
         _loc2_ = bingdingCommandMap[param1];
         return _loc2_;
      }
      
      public static function getBoxByName(param1:String) : IBox
      {
         var _loc2_:IBox = null;
         for each(_loc2_ in _showingList)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function showingModalWindowNum() : int
      {
         var _loc1_:int = _showingList.length;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            _loc2_ = _loc2_ + (_showingList[_loc3_].modal && _showingList[_loc3_].isShow?1:0);
            _loc3_++;
         }
         return _loc2_;
      }
      
      private static function showed(param1:IBox) : void
      {
         var _loc2_:BoxManagerEvent = null;
         if(param1.content)
         {
            param1.content.mouseChildren = true;
            param1.content.mouseEnabled = true;
            param1.onShow();
            _loc2_ = new BoxManagerEvent(BoxManagerEvent.BOX_SHOWED);
            _loc2_.box = param1;
            _dispatcher.dispatchEvent(_loc2_);
         }
      }
      
      public static function hideAll() : void
      {
         var _loc1_:Array = null;
         var _loc2_:IBox = null;
         _loc1_ = _showingList.concat();
         for each(_loc2_ in _loc1_)
         {
            _loc2_.close();
         }
         _showingList.splice(0,_showingList.length);
      }
      
      public static function hideBoxByName(param1:String) : void
      {
         var _loc2_:IBox = null;
         for each(_loc2_ in _showingList)
         {
            if(_loc2_.name == param1)
            {
               _loc2_.close();
               break;
            }
         }
      }
      
      public static function hideBoxByEnterBattle() : void
      {
         var _loc1_:IBox = null;
         var _loc2_:Array = null;
         _loc2_ = _showingList.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            _loc1_ = _loc2_[_loc3_] as IBox;
            if(_loc1_.enterBattleClose)
            {
               _loc1_.close();
            }
            _loc3_--;
         }
      }
      
      public static function get showingList() : Array
      {
         return _showingList;
      }
      
      public static function isShowingByName(param1:String) : Boolean
      {
         return getBoxByName(param1) != null;
      }
      
      public static function get dispathcer() : EventDispatcher
      {
         return _dispatcher;
      }
      
      private static function hided(param1:IBox) : void
      {
         var _loc2_:BoxManagerEvent = null;
         var _loc3_:Object = null;
         LayoutManager.singleton.removeItem(param1 as DisplayObject);
         param1.onHide();
         _loc2_ = new BoxManagerEvent(BoxManagerEvent.BOX_HIDED);
         _loc2_.box = param1;
         _dispatcher.dispatchEvent(_loc2_);
         callCommandByCloseBox(param1);
      }
      
      public static function callCommandByCloseBox(param1:IBox) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(getBoxByName(param1.name) != null)
         {
            return;
         }
         _loc2_ = getCommandList(param1.name);
         if(_loc2_ != null)
         {
            for each(_loc3_ in _loc2_)
            {
               _loc3_["call"]();
            }
         }
      }
   }
}
