package hud.utils
{
   import flash.utils.Dictionary;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import hud.data.MenuItemData;
   import hud.data.MenuCfgData;
   
   public class HudMenuIconUtils
   {
      
      private static var _icons:Dictionary = new Dictionary();
      
      private static var m_ids:Object = new Object();
      
      private static var listeners:Vector.<Function> = new Vector.<Function>();
      
      public static var protoHudNotify:Array = [];
      
      public static var sceneType:int = 1;
      
      public static var dungeon:Array = [];
      
      public static var needRequestDugenInfo:Boolean = true;
      
      public static var elite:Array = [];
      
      public static var expBarVisible:Boolean = true;
      
      public static var HUD_CREW:int = 1;
      
      public static var HUD_NINJA:int = 2;
      
      public static var HUD_EQUIPMENT:int = 3;
      
      public static var HUD_FRIENDS:int = 4;
      
      public static var HUD_GUILD:int = 5;
      
      public static var HUD_BASE:int = 6;
      
      public static var HUD_ELITE:int = 7;
      
      public static var HUD_SHOP:int = 8;
      
      public static var HUD_DUNGEON:int = 9;
      
      public static var HUD_TALENT:int = 10;
      
      public static var HUD_EXAM:int = 11;
      
      public static var HUD_ACTIVITY_TASK:int = 12;
      
      public static var HUD_BLACK_MARKET:int = 13;
      
      public static var HUD_CREWUPGRADE:int = 16;
      
      public static var HUD_TEAM_DUNGEON:int = 17;
      
      public static var HUD_RANKBATTLE:int = 22;
      
      public static var HUD_World_Boss:int = 23;
       
      public function HudMenuIconUtils()
      {
         super();
         throw new Error(HudMenuIconUtils + " can not be instantiated.");
      }
      
      public static function set icons(param1:Dictionary) : void
      {
         if(param1 == null)
         {
            return;
         }
         _icons = param1;
      }
      
      public static function get icons() : Dictionary
      {
         return _icons;
      }
      
      public static function addMenuIds(param1:int) : void
      {
         m_ids[param1] = 0;
         change();
      }
      
      public static function getIcon(param1:int) : DisplayObject
      {
         return _icons[param1];
      }
      
      public static function getIconPosByMenuId(param1:int, param2:Boolean = false) : Point
      {
         var _loc3_:DisplayObject = getIcon(param1);
         return getIconPos(_loc3_,param2);
      }
      
      public static function has(param1:int) : Boolean
      {
         return m_ids[param1] != undefined?true:false;
      }
      
      private static function getIconPos(param1:DisplayObject, param2:Boolean = false) : Point
      {
         if(param1 == null || param1.parent == null)
         {
            return null;
         }
         var _loc3_:Point = new Point();
         var _loc4_:Point = param1.parent.localToGlobal(new Point(param1.x,param1.y));
         var _loc5_:int = _loc4_.x;
         var _loc6_:int = _loc4_.y;
         if(param2)
         {
            _loc3_.x = _loc5_ + param1.width / 2;
            _loc3_.y = _loc6_ + param1.height / 2;
         }
         else
         {
            _loc3_.x = _loc5_;
            _loc3_.y = _loc6_;
         }
         return _loc3_;
      }
      
      public static function addChangeListener(param1:Function) : void
      {
         if(listeners.indexOf(param1) == -1)
         {
            listeners.push(param1);
         }
      }
      
      public static function removeChangeListener(param1:Function) : void
      {
         var _loc2_:int = listeners.indexOf(param1);
         if(_loc2_ != -1)
         {
            listeners.splice(_loc2_,1);
         }
      }
      
      private static function change() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in listeners)
         {
            _loc1_();
         }
      }
      
      private static function clear() : void
      {
         var _loc1_:Object = null;
         for(_loc1_ in _icons)
         {
            delete _icons[_loc1_];
         }
      }
      
      public static function getIconsByType(param1:int) : Array
      {
         var _loc3_:MenuItemData = null;
         var _loc4_:DisplayObject = null;
         var _loc5_:* = 0;
         var _loc6_:String = null;
         var _loc2_:Array = new Array();
         for(_loc6_ in m_ids)
         {
            _loc5_ = parseInt(_loc6_);
            _loc3_ = MenuCfgData.getInstance().getMenuItemDataById(_loc5_);
            if(_loc3_ && _loc3_.type == param1)
            {
               _loc4_ = getIcon(_loc5_);
               _loc4_ && _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      public static function dispatchChangeEvent() : void
      {
         change();
      }
   }
}
