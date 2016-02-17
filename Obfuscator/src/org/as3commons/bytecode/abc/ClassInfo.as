package org.as3commons.bytecode.abc
{
   import org.as3commons.bytecode.typeinfo.Metadata;
   import org.as3commons.lang.StringUtils;
   
   public final class ClassInfo extends BaseTypeInfo
   {
       
      public var staticInitializer:org.as3commons.bytecode.abc.MethodInfo;
      
      public var classMultiname:org.as3commons.bytecode.abc.QualifiedName;
      
      public var metadata:Vector.<Metadata>;
      
      public function ClassInfo()
      {
         super();
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("ClassInfo[\n\tstaticInitializer={0}\n\ttraits=[\n\t\t{1}\n\t]\n]",this.staticInitializer,traits.join("\n\t\t"));
      }
      
      override public function equals(param1:Object) : Boolean
      {
         var _loc3_:ClassInfo = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Metadata = null;
         var _loc7_:Metadata = null;
         var _loc2_:Boolean = super.equals(param1);
         if(_loc2_)
         {
            _loc3_ = param1 as ClassInfo;
            if(_loc3_ != null)
            {
               if(!this.staticInitializer.equals(_loc3_.staticInitializer))
               {
                  return false;
               }
               if(!this.classMultiname.equals(_loc3_.classMultiname))
               {
                  return false;
               }
               if(this.metadata != null)
               {
                  if(this.metadata.length != _loc3_.metadata.length)
                  {
                     return false;
                  }
                  _loc4_ = this.metadata.length;
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_)
                  {
                     _loc6_ = this.metadata[_loc5_];
                     _loc7_ = _loc3_.metadata[_loc5_];
                     if(!_loc6_.equals(_loc7_))
                     {
                        return false;
                     }
                     _loc5_++;
                  }
               }
               return true;
            }
            return false;
         }
         return _loc2_;
      }
   }
}
