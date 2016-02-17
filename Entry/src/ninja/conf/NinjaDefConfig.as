package ninja.conf
{
   import flash.utils.Dictionary;
   
   public class NinjaDefConfig
   {
      
      public static const CAREER:String = "career";
      
      public static const PROPERTY:String = "property";
      
      public static const CATEGORY:String = "category";
      
      public static const MAP_SKILL:String = "mapSkill";
      
      public static const TUPO_SKILL:String = "tupoSkill";
      
      private static const map:Dictionary = new Dictionary(false);
       
      public function NinjaDefConfig()
      {
         super();
      }
      
      public static function getDefName(param1:String, param2:uint) : String
      {
         var _loc3_:DefConfig = map[param1] as NinjaDefConfig;
         return _loc3_?_loc3_.map[param2]:null;
      }
      
      public function importConfig(param1:XML) : void
      {
         var _loc2_:DefConfig = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc3_:XMLList = param1.children();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.children().length())
            {
               _loc2_ = new DefConfig(String(_loc4_.localName()));
               for each(_loc5_ in _loc4_.item)
               {
                  _loc2_.map[parseInt(_loc5_.@id)] = String(_loc5_.@name);
               }
               map[_loc2_.name] = _loc2_;
            }
         }
      }
   }
}

import flash.utils.Dictionary;

class DefConfig
{
    
   public var name:String;
   
   public var map:Dictionary;
   
   function DefConfig(param1:String)
   {
      super();
      this.name = param1;
      this.map = new Dictionary(false);
   }
}
