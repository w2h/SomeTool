package hud.utils
{
   import flash.geom.Rectangle;
   import hud.IHudPlugin;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import def.PluginDef;
   import serverProto.hud.ProtoHudInfo;
   
   public class HudUtils
   {
      
      private static var _userIconRect:Rectangle;
      
      private static var _openedHudTypeList:Array = [];
      
      private static var _unOpenedHudInfoList:Array = [];
      
      public static var hudProtoTypeToLevel:Object = {};
       
      public function HudUtils()
      {
         super();
         throw new Error(HudUtils + " can not be instantiated.");
      }
      
      public static function get plugin() : IHudPlugin
      {
         return Facade.getInstance().retrievePlugin(PluginDef.HUD) as IHudPlugin;
      }
      
      public static function get userIconRect() : Rectangle
      {
         return _userIconRect;
      }
      
      public static function set userIconRect(param1:Rectangle) : void
      {
         _userIconRect = param1;
      }
      
      public static function addOpenedHudType(param1:int) : void
      {
         var _loc2_:ProtoHudInfo = null;
         if(_openedHudTypeList.indexOf(param1) == -1)
         {
            _openedHudTypeList.push(param1);
         }
         var _loc3_:int = 0;
         while(_loc3_ < _unOpenedHudInfoList.length)
         {
            _loc2_ = _unOpenedHudInfoList[_loc3_] as ProtoHudInfo;
            if(_loc2_ && _loc2_.type == param1)
            {
               _unOpenedHudInfoList.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
      }
      
      public static function addUnOpenedHudInfo(param1:int, param2:int) : void
      {
         var _loc3_:ProtoHudInfo = null;
         var _loc4_:ProtoHudInfo = null;
         for each(_loc4_ in _unOpenedHudInfoList)
         {
            if(_loc4_.type == param1)
            {
               return;
            }
         }
         _loc3_ = new ProtoHudInfo();
         _loc3_.type = param1;
         _loc3_.openLevel = param2;
         _unOpenedHudInfoList.push(_loc3_);
      }
      
      public static function set openedHudTypeList(param1:Array) : void
      {
         var _loc2_:* = 0;
         while(_openedHudTypeList.length > 0)
         {
            _openedHudTypeList.pop();
         }
         if(param1)
         {
            for each(_loc2_ in param1)
            {
               addOpenedHudType(_loc2_);
            }
         }
      }
      
      public static function set unOpenedHudInfoList(param1:Array) : void
      {
         var _loc2_:ProtoHudInfo = null;
         while(_unOpenedHudInfoList.length > 0)
         {
            _unOpenedHudInfoList.pop();
         }
         if(param1)
         {
            for each(_loc2_ in param1)
            {
               addUnOpenedHudInfo(_loc2_.type,_loc2_.openLevel);
            }
         }
      }
      
      public static function isHudOpened(param1:int) : Boolean
      {
         return _openedHudTypeList.indexOf(param1) != -1;
      }
      
      public static function hudOpenLevel(param1:int) : int
      {
         var _loc2_:ProtoHudInfo = null;
         for each(_loc2_ in _unOpenedHudInfoList)
         {
            if(_loc2_.type == param1)
            {
               return _loc2_.openLevel;
            }
         }
         return 0;
      }
      
      public static function isOtherHudOpened(param1:int, param2:int) : Boolean
      {
         return param2 >= hudProtoTypeToLevel[param1];
      }
   }
}
