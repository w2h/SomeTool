package hud.data
{
   public class MenuItemData
   {
       
      public var menuId:int = 0;
      
      public var type:int = 0;
      
      public var name:String = "";
      
      public var msg:String = "";
      
      public var label:String = "";
      
      public var sort:int = 0;
      
      public var visible:Boolean = true;
      
      public var flyAppear:Boolean = true;
      
      public var triggerHide:Boolean = false;
      
      public var flyTo:int = 0;
      
      public var guideId:int = -1;
      
      public var newPlotId:int = -1;
      
      public var ignoreViewScene:Array = null;
      
      public var conditionProtoHudNotify:int = -1;
      
      public var conditionProfessions:int = -1;
      
      public var hideNewOpen:Boolean = false;
      
      public var autoClickAfterNewFunOpen:Boolean = false;
      
      public var parentId:int = 0;
      
      public function MenuItemData()
      {
         super();
      }
   }
}
