package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.StringUtils;
   
   public final class InstanceInfo extends BaseTypeInfo
   {
       
      public var classInfo:org.as3commons.bytecode.abc.ClassInfo;
      
      public var classMultiname:org.as3commons.bytecode.abc.QualifiedName;
      
      public var superclassMultiname:org.as3commons.bytecode.abc.BaseMultiname;
      
      public var protectedNamespace:org.as3commons.bytecode.abc.LNamespace;
      
      public var interfaceMultinames:Vector.<org.as3commons.bytecode.abc.BaseMultiname>;
      
      public var instanceInitializer:org.as3commons.bytecode.abc.MethodInfo;
      
      public var isProtected:Boolean;
      
      public var isFinal:Boolean;
      
      public var isSealed:Boolean;
      
      public var isInterface:Boolean;
      
      public function InstanceInfo()
      {
         super();
         this.interfaceMultinames = new Vector.<org.as3commons.bytecode.abc.BaseMultiname>();
      }
      
      public function get constructor() : org.as3commons.bytecode.abc.MethodInfo
      {
         return this.instanceInitializer;
      }
      
      public function get interfaceCount() : int
      {
         return this.interfaceMultinames.length;
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("InstanceInfo[\n\tclassName={0}\n\tsuperclassName={1}\n\tisProtected={2}\n\tprotectedNamespace={3}\n\tinterfaceCount={4}\n\tinterfaces={5}\n\tinstanceInitializer={6}\n\ttraits=[\n\t\t{7}\n\t]\n]",this.classMultiname,this.superclassMultiname,this.isProtected,this.protectedNamespace,this.interfaceCount,this.interfaceMultinames,this.instanceInitializer,traits.join("\n\t\t"));
      }
      
      override public function equals(param1:Object) : Boolean
      {
         var _loc3_:InstanceInfo = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:org.as3commons.bytecode.abc.BaseMultiname = null;
         var _loc7_:org.as3commons.bytecode.abc.BaseMultiname = null;
         var _loc2_:Boolean = super.equals(param1);
         if(_loc2_)
         {
            _loc3_ = param1 as InstanceInfo;
            if(_loc3_ != null)
            {
               if(!this.classMultiname.equals(_loc3_.classMultiname))
               {
                  return false;
               }
               if(!this.superclassMultiname.equals(_loc3_.superclassMultiname))
               {
                  return false;
               }
               if(this.protectedNamespace != null)
               {
                  if(!this.protectedNamespace.equals(_loc3_.protectedNamespace))
                  {
                     return false;
                  }
               }
               if(this.interfaceCount != _loc3_.interfaceCount)
               {
                  return false;
               }
               _loc4_ = this.interfaceCount;
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  _loc6_ = this.interfaceMultinames[_loc5_];
                  _loc7_ = _loc3_.interfaceMultinames[_loc5_];
                  if(!_loc6_.equals(_loc7_))
                  {
                     return false;
                  }
                  _loc5_++;
               }
               if(!this.instanceInitializer.equals(_loc3_.instanceInitializer))
               {
                  return false;
               }
               if(this.isProtected != _loc3_.isProtected)
               {
                  return false;
               }
               if(this.isFinal != _loc3_.isFinal)
               {
                  return false;
               }
               if(this.isSealed != _loc3_.isSealed)
               {
                  return false;
               }
               if(this.isInterface != _loc3_.isInterface)
               {
                  return false;
               }
            }
            else
            {
               return false;
            }
         }
         return _loc2_;
      }
   }
}
