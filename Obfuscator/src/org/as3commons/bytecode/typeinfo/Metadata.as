package org.as3commons.bytecode.typeinfo
{
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.IEquals;
   import flash.utils.Dictionary;
   import org.as3commons.lang.util.CloneUtils;
   import org.as3commons.lang.StringUtils;
   
   public final class Metadata implements ICloneable, IEquals
   {
      
      private static const KEY_VALUE_PAIR_TOSTRING:String = "{0}=\"{1}\"";
      
      private static const METADATA_TOSTRING:String = "[{0}({1})]";
       
      public var name:String;
      
      public var properties:Dictionary;
      
      public function Metadata()
      {
         super();
         this.properties = new Dictionary();
      }
      
      public function clone() : *
      {
         var _loc1_:Metadata = new Metadata();
         _loc1_.name = this.name;
         _loc1_.properties = CloneUtils.cloneDictionary(this.properties);
      }
      
      public function toString() : String
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.properties)
         {
            _loc1_[_loc1_.length] = StringUtils.substitute(KEY_VALUE_PAIR_TOSTRING,_loc2_,this.properties[_loc2_]);
         }
         return StringUtils.substitute(METADATA_TOSTRING,this.name,_loc1_.join());
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Metadata = param1 as Metadata;
         if(_loc2_ != null)
         {
            if(this.name != _loc2_.name)
            {
               return false;
            }
            for(_loc3_ in this.properties)
            {
               if(!_loc2_.properties.hasOwnProperty(_loc3_))
               {
                  return false;
               }
               if(this.properties[_loc3_] != _loc2_.properties[_loc3_])
               {
                  return false;
               }
            }
            return true;
         }
         return false;
      }
   }
}
