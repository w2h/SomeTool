package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.IEquals;
   import org.as3commons.bytecode.typeinfo.Argument;
   import org.as3commons.lang.IllegalArgumentError;
   import org.as3commons.bytecode.util.AbcFileUtil;
   import org.as3commons.bytecode.abc.enum.NamespaceKind;
   import org.as3commons.lang.StringUtils;
   
   public final class MethodInfo implements ICloneable, IEquals
   {
      
      private static const ILLEGAL_TRAITINFO_TYPE:String = "Argument must be of type FunctionTrait or MethodTrait";
       
      public var argumentCollection:Vector.<Argument>;
      
      public var as3commonsBytecodeName;
      
      public var flags:uint;
      
      public var methodBody:org.as3commons.bytecode.abc.MethodBody;
      
      public var methodName:String;
      
      public var returnType:org.as3commons.bytecode.abc.BaseMultiname;
      
      public var scopeName:String;
      
      private var _as3commonsByteCodeAssignedMethodTrait:org.as3commons.bytecode.abc.TraitInfo;
      
      public function MethodInfo()
      {
         super();
         this.argumentCollection = new Vector.<Argument>();
      }
      
      public function addArgument(param1:Argument) : void
      {
         if(this.argumentCollection.indexOf(param1) < 0)
         {
            this.argumentCollection[this.argumentCollection.length] = param1;
         }
      }
      
      public function get as3commonsByteCodeAssignedMethodTrait() : org.as3commons.bytecode.abc.TraitInfo
      {
         return this._as3commonsByteCodeAssignedMethodTrait;
      }
      
      public function set as3commonsByteCodeAssignedMethodTrait(param1:org.as3commons.bytecode.abc.TraitInfo) : void
      {
         if(param1 is FunctionTrait || param1 is MethodTrait)
         {
            this._as3commonsByteCodeAssignedMethodTrait = param1;
            return;
         }
         throw IllegalArgumentError(ILLEGAL_TRAITINFO_TYPE);
      }
      
      public function clone() : *
      {
         var _loc1_:MethodInfo = new MethodInfo();
         _loc1_.argumentCollection = AbcFileUtil.cloneVector(this.argumentCollection);
         _loc1_.returnType = this.returnType;
         _loc1_.methodName = this.methodName;
         return _loc1_;
      }
      
      public function get formalParameters() : Vector.<Argument>
      {
         var _loc2_:Argument = null;
         var _loc1_:Vector.<Argument> = new Vector.<Argument>();
         for each(_loc2_ in this.argumentCollection)
         {
            if(!_loc2_.isOptional)
            {
               _loc1_[_loc1_.length] = _loc2_;
            }
         }
         return _loc1_;
      }
      
      public function get optionalParameters() : Vector.<Argument>
      {
         var _loc2_:Argument = null;
         var _loc1_:Vector.<Argument> = new Vector.<Argument>();
         for each(_loc2_ in this.argumentCollection)
         {
            if(_loc2_.isOptional)
            {
               _loc1_[_loc1_.length] = _loc2_;
            }
         }
         return _loc1_;
      }
      
      public function get paramCount() : int
      {
         return arguments.length;
      }
      
      public function toString() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.as3commonsBytecodeName != null)
         {
            if(this.as3commonsBytecodeName is QualifiedName)
            {
               _loc2_ = this.as3commonsBytecodeName.nameSpace.kind.description;
               _loc1_ = this.as3commonsBytecodeName.name;
               if(this.as3commonsBytecodeName.nameSpace.kind == NamespaceKind.NAMESPACE)
               {
                  _loc2_ = this.as3commonsBytecodeName.nameSpace.name;
               }
            }
            if(this.as3commonsBytecodeName is String)
            {
               _loc1_ = this.as3commonsBytecodeName;
            }
         }
         return StringUtils.substitute("{0} function {1}({2}) : {3}",_loc2_?_loc2_:"(no namespace)",this.as3commonsBytecodeName,this.argumentCollection.join(", "),this.returnType);
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:Argument = null;
         var _loc6_:Argument = null;
         var _loc2_:MethodInfo = param1 as MethodInfo;
         if(_loc2_ != null)
         {
            if(this.flags != _loc2_.flags)
            {
               return false;
            }
            if(this.methodName != _loc2_.methodName)
            {
               return false;
            }
            if(!this.returnType.equals(_loc2_.returnType))
            {
               return false;
            }
            if(this.scopeName != _loc2_.scopeName)
            {
               return false;
            }
            if(this.argumentCollection.length != _loc2_.argumentCollection.length)
            {
               return false;
            }
            _loc3_ = this.argumentCollection.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.argumentCollection[_loc4_];
               _loc6_ = _loc2_.argumentCollection[_loc4_];
               if(!_loc5_.equals(_loc6_))
               {
                  return false;
               }
               _loc4_++;
            }
            return true;
         }
         return false;
      }
   }
}
