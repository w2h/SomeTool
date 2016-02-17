package hud.data
{
   import serverProto.hud.ProtoHudType;
   import com.tencent.morefun.naruto.util.XString;
   
   public class MenuCfgData
   {
      
      private static var m_instance:hud.data.MenuCfgData = null;
       
      private var m_hashMapMenus:Vector.<hud.data.MenuItemData>;
      
      public var m_sceneTypeCfg:Object;
      
      public function MenuCfgData()
      {
         this.m_hashMapMenus = new Vector.<MenuItemData>();
         this.m_sceneTypeCfg = {};
         super();
      }
      
      public static function getInstance() : hud.data.MenuCfgData
      {
         if(m_instance == null)
         {
            m_instance = new hud.data.MenuCfgData();
         }
         return m_instance;
      }
      
      public function menusCfgData() : Vector.<hud.data.MenuItemData>
      {
         return this.m_hashMapMenus;
      }
      
      public function initData(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = 0;
         var _loc2_:hud.data.MenuItemData = null;
         var _loc4_:int = 0;
         while(_loc4_ < param1.Menus[0].children().length())
         {
            _loc3_ = param1.Menus[0].children()[_loc4_];
            _loc2_ = new hud.data.MenuItemData();
            _loc2_.menuId = _loc3_.@menuId;
            _loc2_.name = _loc3_.@skinName;
            _loc2_.label = _loc3_.@label;
            _loc2_.msg = _loc3_.@msg;
            _loc2_.type = _loc3_.@type;
            _loc2_.sort = _loc3_.@sort;
            _loc2_.guideId = _loc3_.@guideId;
            _loc2_.newPlotId = _loc3_.@newPlotId;
            _loc2_.visible = _loc3_.@visible == "true"?true:false;
            _loc2_.ignoreViewScene = this.splitString(",",_loc3_.@ignoreViewScene);
            _loc5_ = String(_loc3_.@conditionProtoHudNotify);
            if(_loc5_ in ProtoHudType)
            {
               _loc2_.conditionProtoHudNotify = ProtoHudType[_loc5_];
            }
            else
            {
               _loc2_.conditionProtoHudNotify = _loc5_ == ""?-1:int(_loc5_);
            }
            _loc2_.conditionProfessions = _loc3_.@conditionProfessions == ""?-1:_loc3_.@conditionProfessions;
            _loc2_.flyAppear = _loc3_.@flyAppear == "true"?true:false;
            _loc2_.triggerHide = _loc3_.@triggerHide == "1"?true:false;
            _loc2_.hideNewOpen = _loc3_.@hideNewOpen == "1"?true:false;
            _loc2_.flyTo = _loc3_.@flyTo == ""?0:parseInt(_loc3_.@flyTo);
            _loc2_.autoClickAfterNewFunOpen = _loc3_.@autoClickAfterNewFunOpen == "true"?true:false;
            _loc2_.parentId = _loc3_.@parentId == ""?0:parseInt(_loc3_.@parentId);
            if(_loc2_.parentId > 0)
            {
               _loc2_.flyTo = _loc2_.parentId;
            }
            this.m_hashMapMenus.push(_loc2_);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.SceneType[0].children().length())
         {
            _loc3_ = param1.SceneType[0].children()[_loc4_];
            _loc5_ = _loc3_.@showWidgets;
            _loc6_ = _loc5_ == ""?[]:_loc5_.split(",");
            _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               _loc6_[_loc7_] = int(_loc6_[_loc7_]);
               _loc7_++;
            }
            this.m_sceneTypeCfg[parseInt(_loc3_.@id)] = [String(_loc3_.@name),_loc6_];
            _loc4_++;
         }
      }
      
      public function getFilterMenus(param1:Array, param2:int, param3:int, param4:Boolean = false) : Array
      {
         var _loc6_:hud.data.MenuItemData = null;
         var _loc5_:Array = new Array();
         for each(_loc6_ in this.m_hashMapMenus)
         {
            if(!(param4 && _loc6_.conditionProtoHudNotify == -1))
            {
               if(this.checkConditionProtoHud(_loc6_,param1))
               {
                  if(!(_loc6_.conditionProfessions != -1 && _loc6_.conditionProfessions != param2))
                  {
                     if(!(param3 != -1000 && _loc6_.ignoreViewScene != null && this.inArray(param3,_loc6_.ignoreViewScene)))
                     {
                        _loc5_.push(_loc6_);
                     }
                  }
               }
            }
         }
         return _loc5_;
      }
      
      private function checkConditionProtoHud(param1:hud.data.MenuItemData, param2:Array) : Boolean
      {
         var _loc3_:* = 0;
         if(param1.conditionProtoHudNotify == -1)
         {
            return true;
         }
         if(param2 == null || param2.length == 0)
         {
            return false;
         }
         _loc3_ = 0;
         while(_loc3_ <= param2.length)
         {
            if(param2[_loc3_] == param1.conditionProtoHudNotify)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private function inArray(param1:int, param2:Array) : Boolean
      {
         var _loc3_:* = 0;
         while(_loc3_ < param2.length)
         {
            if(int(param2[_loc3_]) == param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private function splitString(param1:String, param2:String) : Array
      {
         var param2:String = XString.trimAll(param2);
         if(param2 == "")
         {
            return null;
         }
         return param2.split(param1);
      }
      
      public function getMenuItemDataById(param1:int) : hud.data.MenuItemData
      {
         var _loc2_:hud.data.MenuItemData = null;
         for each(_loc2_ in this.m_hashMapMenus)
         {
            if(_loc2_.menuId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getMenuItemDataByMenuSkinName(param1:String) : hud.data.MenuItemData
      {
         var _loc2_:hud.data.MenuItemData = null;
         for each(_loc2_ in this.m_hashMapMenus)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getMenuItemDataByProtoId(param1:int) : hud.data.MenuItemData
      {
         var _loc2_:hud.data.MenuItemData = null;
         for each(_loc2_ in this.m_hashMapMenus)
         {
            if(_loc2_.conditionProtoHudNotify == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
