package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.IEquals;
   import org.as3commons.bytecode.util.AbcFileUtil;
   import org.as3commons.lang.StringUtils;
   
   public final class ScriptInfo implements ICloneable, IEquals
   {
       
      public var scriptInitializer:org.as3commons.bytecode.abc.MethodInfo;
      
      public var traits:Vector.<org.as3commons.bytecode.abc.TraitInfo>;
      
      public function ScriptInfo()
      {
         super();
         this.traits = new Vector.<org.as3commons.bytecode.abc.TraitInfo>();
      }
      
      public function clone() : *
      {
         var _loc1_:ScriptInfo = new ScriptInfo();
         _loc1_.scriptInitializer = this.scriptInitializer.clone();
         _loc1_.traits = AbcFileUtil.cloneVector(this.traits);
         return _loc1_;
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("ScriptInfo[\n\tscriptInitializer={0}\n\ttraits=[\n\t\t{1}\n\t]\n]",this.scriptInitializer,this.traits.join("\n\t\t"));
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:org.as3commons.bytecode.abc.TraitInfo = null;
         var _loc6_:org.as3commons.bytecode.abc.TraitInfo = null;
         var _loc2_:ScriptInfo = param1 as ScriptInfo;
         if(_loc2_ != null)
         {
            if(!this.scriptInitializer.equals(_loc2_.scriptInitializer))
            {
               return false;
            }
            if(this.traits.length != _loc2_.traits.length)
            {
               return false;
            }
            _loc4_ = this.traits.length;
            _loc3_ = 0;
            while(_loc3_ < _loc4_)
            {
               _loc5_ = this.traits[_loc3_];
               _loc6_ = _loc2_.traits[_loc3_];
               if(!_loc5_.equals(_loc6_))
               {
                  return false;
               }
               _loc3_++;
            }
            return true;
         }
         return false;
      }
   }
}
