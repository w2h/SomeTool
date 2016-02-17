package org.as3commons.bytecode.io
{
   import org.as3commons.bytecode.abc.ConstantPool;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.abc.AbcFile;
   import org.as3commons.bytecode.util.AbcSpec;
   import org.as3commons.bytecode.abc.MethodBody;
   import org.as3commons.bytecode.abc.ExceptionInfo;
   import org.as3commons.bytecode.abc.IConstantPool;
   import org.as3commons.bytecode.abc.enum.Opcode;
   import org.as3commons.bytecode.abc.ScriptInfo;
   import org.as3commons.bytecode.abc.TraitInfo;
   import org.as3commons.bytecode.abc.SlotOrConstantTrait;
   import org.as3commons.bytecode.abc.MethodTrait;
   import org.as3commons.bytecode.abc.ClassTrait;
   import org.as3commons.bytecode.abc.FunctionTrait;
   import org.as3commons.bytecode.typeinfo.Metadata;
   import org.as3commons.bytecode.abc.enum.TraitAttributes;
   import org.as3commons.lang.Assert;
   import org.as3commons.lang.StringUtils;
   import org.as3commons.bytecode.abc.enum.TraitKind;
   import org.as3commons.bytecode.abc.InstanceInfo;
   import org.as3commons.bytecode.abc.ClassInfo;
   import org.as3commons.bytecode.abc.BaseMultiname;
   import org.as3commons.bytecode.abc.enum.ClassConstant;
   import flash.utils.Dictionary;
   import org.as3commons.bytecode.abc.MethodInfo;
   import org.as3commons.bytecode.typeinfo.Argument;
   import org.as3commons.bytecode.abc.enum.MethodFlag;
   import org.as3commons.bytecode.abc.LNamespace;
   import org.as3commons.bytecode.abc.enum.ConstantKind;
   import org.as3commons.bytecode.abc.QualifiedName;
   import org.as3commons.bytecode.abc.Multiname;
   import org.as3commons.bytecode.abc.MultinameL;
   import org.as3commons.bytecode.abc.RuntimeQualifiedName;
   import org.as3commons.bytecode.abc.MultinameG;
   import org.as3commons.bytecode.abc.enum.MultinameKind;
   import org.as3commons.bytecode.abc.NamespaceSet;
   
   public class AbcSerializer
   {
      
      public static const MINOR_VERSION:int = 16;
      
      public static const MAJOR_VERSION:int = 46;
      
      private static const UNKNOWN_TRAITKIND_ERROR:String = "Unknown trait kind: {0}";
      
      private static const __UNABLE_TO_DETERMINE_POOL_POSITION_ERROR:String = "Unable to determine pool position.";
       
      private var _pool:ConstantPool;
      
      private var _outputStream:ByteArray;
      
      public function AbcSerializer()
      {
         super();
      }
      
      public function serializeAbcFile(param1:AbcFile) : ByteArray
      {
         this._outputStream = AbcSpec.newByteArray();
         this.writeU16(MINOR_VERSION);
         this.writeU16(MAJOR_VERSION);
         var _loc2_:ByteArray = this._outputStream;
         this._outputStream = AbcSpec.newByteArray();
         this.serializeMethodInfo(param1);
         this.serializeMetadataInfo(param1);
         this.serializeClassAndInstanceInfo(param1);
         this.serializeScriptInfo(param1);
         this.serializeMethodBodies(param1);
         this._outputStream.position = 0;
         var _loc3_:ByteArray = this._outputStream;
         this._outputStream = _loc2_;
         param1.constantPool.locked = true;
         this.serializeConstantPool(param1.constantPool,this._outputStream);
         param1.constantPool.locked = false;
         this._outputStream.writeBytes(_loc3_);
         this._outputStream.position = 0;
         return this._outputStream;
      }
      
      public function serializeMethodBodies(param1:AbcFile) : void
      {
         var _loc4_:MethodBody = null;
         var _loc5_:ExceptionInfo = null;
         var _loc6_:ByteArray = null;
         var _loc2_:Vector.<MethodBody> = param1.methodBodies;
         var _loc3_:IConstantPool = param1.constantPool;
         this.writeU30(_loc2_.length);
         for each(_loc4_ in _loc2_)
         {
            this.writeU30(param1.addMethodInfo(_loc4_.methodSignature));
            this.writeU30(_loc4_.maxStack);
            this.writeU30(_loc4_.localCount);
            this.writeU30(_loc4_.initScopeDepth);
            this.writeU30(_loc4_.maxScopeDepth);
            if(_loc4_.rawOpcodes == null)
            {
               _loc6_ = Opcode.serialize(_loc4_.opcodes,_loc4_,param1);
               this.writeU30(_loc6_.length);
               this._outputStream.writeBytes(_loc6_,0,_loc6_.length);
            }
            else
            {
               this.writeU30(_loc4_.rawOpcodes.length);
               this._outputStream.writeBytes(_loc4_.rawOpcodes);
            }
            this.writeU30(_loc4_.exceptionInfos.length);
            for each(_loc5_ in _loc4_.exceptionInfos)
            {
               _loc5_.exceptionEnabledFromCodePosition = _loc5_.exceptionEnabledFromOpcode.baseLocation;
               _loc5_.exceptionEnabledToCodePosition = _loc5_.exceptionEnabledToOpcode.baseLocation;
               _loc5_.codePositionToJumpToOnException = _loc5_.opcodeToJumpToOnException.baseLocation;
               this.writeU30(_loc5_.exceptionEnabledFromCodePosition);
               this.writeU30(_loc5_.exceptionEnabledToCodePosition);
               this.writeU30(_loc5_.codePositionToJumpToOnException);
               this.writeU30(_loc3_.addMultiname(_loc5_.exceptionType));
               this.writeU30(_loc3_.addMultiname(_loc5_.variableReceivingException));
            }
            this.serializeTraits(_loc4_.traits,param1);
         }
      }
      
      public function serializeScriptInfo(param1:AbcFile) : void
      {
         var _loc3_:ScriptInfo = null;
         var _loc2_:Vector.<ScriptInfo> = param1.scriptInfo;
         this.writeU30(_loc2_.length);
         for each(_loc3_ in _loc2_)
         {
            this.writeU30(param1.addMethodInfo(_loc3_.scriptInitializer));
            this.serializeTraits(_loc3_.traits,param1);
         }
      }
      
      public function serializeTraits(param1:Vector.<TraitInfo>, param2:AbcFile) : void
      {
         var _loc4_:TraitInfo = null;
         var _loc5_:uint = 0;
         var _loc6_:SlotOrConstantTrait = null;
         var _loc7_:MethodTrait = null;
         var _loc8_:ClassTrait = null;
         var _loc9_:FunctionTrait = null;
         var _loc10_:* = 0;
         var _loc11_:Metadata = null;
         this.writeU30(param1.length);
         var _loc3_:IConstantPool = param2.constantPool;
         while(true)
         {
            loop0:
            for each(_loc4_ in param1)
            {
               this.writeU30(_loc3_.addMultiname(_loc4_.traitMultiname));
               _loc5_ = _loc4_.traitKind.bitMask;
               _loc5_ = _loc5_ | (_loc4_.isFinal?TraitAttributes.FINAL.bitMask << 4:null);
               _loc5_ = _loc5_ | (_loc4_.isOverride?TraitAttributes.OVERRIDE.bitMask << 4:null);
               _loc5_ = _loc5_ | (_loc4_.hasMetadata?TraitAttributes.METADATA.bitMask << 4:null);
               this.writeU8(_loc5_);
               switch(_loc4_.traitKind)
               {
                  case TraitKind.SLOT:
                  case TraitKind.CONST:
                     _loc6_ = _loc4_ as SlotOrConstantTrait;
                     this.writeU30(_loc6_.slotId);
                     this.writeU30(_loc3_.addMultiname(_loc6_.typeMultiname));
                     if(_loc6_.vkind != null)
                     {
                        _loc10_ = _loc3_.addItemToPool(_loc6_.vkind,_loc6_.defaultValue);
                        _loc6_.vindex = _loc10_;
                     }
                     else
                     {
                        _loc6_.vindex = 0;
                     }
                     this.writeU30(_loc6_.vindex);
                     if(_loc6_.vindex > 0)
                     {
                        this.writeU8(_loc6_.vkind.value);
                     }
                     break;
                  case TraitKind.METHOD:
                  case TraitKind.GETTER:
                  case TraitKind.SETTER:
                     _loc7_ = _loc4_ as MethodTrait;
                     this.writeU30(_loc7_.dispositionId);
                     this.writeU30(param2.addMethodInfo(_loc7_.traitMethod));
                     break;
                  case TraitKind.CLASS:
                     _loc8_ = _loc4_ as ClassTrait;
                     _loc8_.classIndex = param2.classInfo.indexOf(_loc8_.classInfo);
                     Assert.state(_loc8_.classIndex > -1,"classTrait.classIndex is -1");
                     this.writeU30(_loc8_.classSlotId);
                     this.writeU30(_loc8_.classIndex);
                     break;
                  case TraitKind.FUNCTION:
                     _loc9_ = _loc4_ as FunctionTrait;
                     this.writeU30(_loc9_.functionSlotId);
                     this.writeU30(param2.addMethodInfo(_loc9_.functionMethod));
                     break;
                  default:
                     break loop0;
               }
               if(_loc4_.hasMetadata)
               {
                  this.writeU30(_loc4_.metadata.length);
                  for each(_loc11_ in _loc4_.metadata)
                  {
                     this.writeU30(param2.addMetadataInfo(_loc11_));
                  }
               }
            }
            return;
         }
         throw new Error(StringUtils.substitute(UNKNOWN_TRAITKIND_ERROR,_loc4_.traitKind));
      }
      
      public function serializeClassAndInstanceInfo(param1:AbcFile) : void
      {
         var _loc5_:InstanceInfo = null;
         var _loc6_:ClassInfo = null;
         var _loc7_:* = 0;
         var _loc8_:BaseMultiname = null;
         var _loc2_:Vector.<InstanceInfo> = param1.instanceInfo;
         var _loc3_:Vector.<ClassInfo> = param1.classInfo;
         var _loc4_:IConstantPool = param1.constantPool;
         this.writeU30(_loc3_.length);
         for each(_loc5_ in _loc2_)
         {
            this.writeU30(_loc4_.addMultiname(_loc5_.classMultiname));
            this.writeU30(_loc4_.addMultiname(_loc5_.superclassMultiname));
            _loc7_ = 0;
            _loc7_ = _loc7_ | (_loc5_.isFinal?ClassConstant.FINAL.bitMask:0);
            _loc7_ = _loc7_ | (_loc5_.isInterface?ClassConstant.INTERFACE.bitMask:0);
            _loc7_ = _loc7_ | (_loc5_.isProtected?ClassConstant.PROTECTED_NAMESPACE.bitMask:0);
            _loc7_ = _loc7_ | (_loc5_.isSealed?ClassConstant.SEALED.bitMask:0);
            this.writeU8(_loc7_);
            if(_loc5_.isProtected)
            {
               this.writeU30(_loc4_.addNamespace(_loc5_.protectedNamespace));
            }
            this.writeU30(_loc5_.interfaceCount);
            for each(_loc8_ in _loc5_.interfaceMultinames)
            {
               this.writeU30(_loc4_.addMultiname(_loc8_));
            }
            this.writeU30(param1.addMethodInfo(_loc5_.instanceInitializer));
            this.serializeTraits(_loc5_.traits,param1);
         }
         for each(_loc6_ in _loc3_)
         {
            this.writeU30(param1.addMethodInfo(_loc6_.staticInitializer));
            this.serializeTraits(_loc6_.traits,param1);
         }
      }
      
      public function serializeMetadataInfo(param1:AbcFile) : void
      {
         var _loc4_:Metadata = null;
         var _loc5_:Dictionary = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc2_:Vector.<Metadata> = param1.metadataInfo;
         var _loc3_:IConstantPool = param1.constantPool;
         this.writeU30(_loc2_.length);
         for each(_loc4_ in _loc2_)
         {
            this.writeU30(_loc3_.addString(_loc4_.name));
            _loc5_ = _loc4_.properties;
            _loc6_ = [];
            for(_loc6_[_loc6_.length] in _loc5_)
            {
            }
            this.writeU30(_loc6_.length);
            for each(_loc8_ in _loc6_)
            {
               this.writeU30(_loc3_.addString(_loc8_));
            }
            for each(_loc9_ in _loc5_)
            {
               this.writeU30(_loc3_.addString(_loc9_));
            }
         }
      }
      
      public function serializeMethodInfo(param1:AbcFile) : void
      {
         var _loc4_:MethodInfo = null;
         var _loc5_:Argument = null;
         var _loc6_:Vector.<Argument> = null;
         var _loc7_:Argument = null;
         var _loc8_:* = undefined;
         var _loc9_:* = 0;
         var _loc10_:Argument = null;
         Assert.notNull(param1,"abcFile argument must not be null");
         var _loc2_:IConstantPool = param1.constantPool;
         var _loc3_:Vector.<MethodInfo> = param1.methodInfo;
         this.writeU30(_loc3_.length);
         for each(_loc4_ in _loc3_)
         {
            this.writeU30(_loc4_.argumentCollection.length);
            this.writeU30(_loc2_.addMultiname(_loc4_.returnType));
            for each(_loc5_ in _loc4_.argumentCollection)
            {
               this.writeU30(_loc2_.addMultiname(_loc5_.type));
            }
            this.writeU30(_loc2_.addString(_loc4_.methodName));
            this.writeU8(_loc4_.flags);
            if(MethodFlag.flagPresent(_loc4_.flags,MethodFlag.HAS_OPTIONAL))
            {
               _loc6_ = _loc4_.optionalParameters;
               this.writeU30(_loc6_.length);
               loop2:
               while(true)
               {
                  for each(_loc7_ in _loc6_)
                  {
                     _loc8_ = _loc7_.defaultValue;
                     switch(_loc7_.kind)
                     {
                        case ConstantKind.INT:
                           _loc9_ = _loc2_.addInt(_loc8_ as int);
                           break;
                        case ConstantKind.UINT:
                           _loc9_ = _loc2_.addUint(_loc8_ as uint);
                           break;
                        case ConstantKind.DOUBLE:
                           _loc9_ = _loc2_.addDouble(_loc8_ as Number);
                           break;
                        case ConstantKind.UTF8:
                           _loc9_ = _loc2_.addString(_loc8_ as String);
                           break;
                        case ConstantKind.TRUE:
                        case ConstantKind.FALSE:
                        case ConstantKind.NULL:
                        case ConstantKind.UNDEFINED:
                           _loc9_ = _loc7_.kind.value;
                           break;
                        case ConstantKind.NAMESPACE:
                        case ConstantKind.PACKAGE_NAMESPACE:
                        case ConstantKind.PACKAGE_INTERNAL_NAMESPACE:
                        case ConstantKind.PROTECTED_NAMESPACE:
                        case ConstantKind.EXPLICIT_NAMESPACE:
                        case ConstantKind.STATIC_PROTECTED_NAMESPACE:
                        case ConstantKind.PRIVATE_NAMESPACE:
                           _loc9_ = _loc2_.addNamespace(_loc8_ as LNamespace);
                           break;
                        default:
                           break loop2;
                     }
                     this.writeU30(_loc9_);
                     this.writeU30(_loc7_.kind.value);
                     continue loop2;
                  }
               }
               throw new Error(__UNABLE_TO_DETERMINE_POOL_POSITION_ERROR + " " + _loc7_.kind);
            }
            if(MethodFlag.flagPresent(_loc4_.flags,MethodFlag.HAS_PARAM_NAMES))
            {
               for each(_loc10_ in _loc4_.argumentCollection)
               {
                  this.writeU30(_loc2_.addString(_loc10_.name));
               }
            }
         }
      }
      
      private function writeU8(param1:int) : void
      {
         AbcSpec.writeU8(param1,this._outputStream);
      }
      
      private function writeU16(param1:int) : void
      {
         AbcSpec.writeU16(param1,this._outputStream);
      }
      
      private function writeU30(param1:int) : void
      {
         AbcSpec.writeU30(param1,this._outputStream);
      }
      
      public function serializeConstantPool(param1:IConstantPool, param2:ByteArray) : void
      {
         this.serializeIntegers(param1,param2);
         this.serializeUIntegers(param1,param2);
         this.serializeDoubles(param1,param2);
         this.serializeStrings(param1,param2);
         this.serializeNamespaces(param1,param2);
         this.serializeNamespaceSets(param1,param2);
         this.serializeMultinames(param1,param2);
      }
      
      public function serializeMultinames(param1:IConstantPool, param2:ByteArray) : void
      {
         var _loc4_:BaseMultiname = null;
         var _loc5_:QualifiedName = null;
         var _loc6_:Multiname = null;
         var _loc7_:MultinameL = null;
         var _loc8_:RuntimeQualifiedName = null;
         var _loc9_:MultinameG = null;
         var _loc10_:uint = 0;
         var _loc11_:uint = 0;
         var _loc3_:Vector.<BaseMultiname> = param1.multinamePool.slice(1,param1.multinamePool.length);
         AbcSpec.writeU30(_loc3_.length + 1,param2);
         for each(_loc4_ in _loc3_)
         {
            AbcSpec.writeU8(_loc4_.kind.byteValue,param2);
            switch(_loc4_.kind)
            {
               case MultinameKind.QNAME:
               case MultinameKind.QNAME_A:
                  _loc5_ = _loc4_ as QualifiedName;
                  AbcSpec.writeU30(param1.addNamespace(_loc5_.nameSpace),param2);
                  AbcSpec.writeU30(param1.addString(_loc5_.name),param2);
                  continue;
               case MultinameKind.MULTINAME:
               case MultinameKind.MULTINAME_A:
                  _loc6_ = _loc4_ as Multiname;
                  AbcSpec.writeU30(param1.addString(_loc6_.name),param2);
                  AbcSpec.writeU30(param1.addNamespaceSet(_loc6_.namespaceSet),param2);
                  continue;
               case MultinameKind.MULTINAME_L:
               case MultinameKind.MULTINAME_LA:
                  _loc7_ = _loc4_ as MultinameL;
                  AbcSpec.writeU30(param1.addNamespaceSet(_loc7_.namespaceSet),param2);
                  continue;
               case MultinameKind.RTQNAME:
               case MultinameKind.RTQNAME_A:
                  _loc8_ = _loc4_ as RuntimeQualifiedName;
                  AbcSpec.writeU30(param1.addString(_loc8_.name),param2);
                  continue;
               case MultinameKind.RTQNAME_L:
               case MultinameKind.RTQNAME_LA:
                  continue;
               case MultinameKind.GENERIC:
                  _loc9_ = _loc4_ as MultinameG;
                  AbcSpec.writeU30(param1.addMultiname(_loc9_.qualifiedName),param2);
                  _loc10_ = _loc9_.parameters.length;
                  AbcSpec.writeU30(_loc10_,param2);
                  _loc11_ = 0;
                  while(_loc11_ < _loc10_)
                  {
                     AbcSpec.writeU30(param1.addMultiname(_loc9_.parameters[_loc11_]),param2);
                     _loc11_++;
                  }
                  continue;
               default:
                  continue;
            }
         }
      }
      
      public function serializeNamespaceSets(param1:IConstantPool, param2:ByteArray) : void
      {
         var _loc4_:NamespaceSet = null;
         var _loc5_:LNamespace = null;
         var _loc3_:Vector.<NamespaceSet> = param1.namespaceSetPool.slice(1,param1.namespaceSetPool.length);
         AbcSpec.writeU30(_loc3_.length + 1,param2);
         for each(_loc4_ in _loc3_)
         {
            AbcSpec.writeU30(_loc4_.namespaces.length,param2);
            for each(_loc5_ in _loc4_.namespaces)
            {
               AbcSpec.writeU30(param1.addNamespace(_loc5_),param2);
            }
         }
      }
      
      public function serializeNamespaces(param1:IConstantPool, param2:ByteArray) : void
      {
         var _loc4_:LNamespace = null;
         var _loc3_:Vector.<LNamespace> = param1.namespacePool.slice(1,param1.namespacePool.length);
         AbcSpec.writeU30(_loc3_.length + 1,param2);
         for each(_loc4_ in _loc3_)
         {
            AbcSpec.writeU8(_loc4_.kind.byteValue,param2);
            AbcSpec.writeU30(param1.addString(_loc4_.name),param2);
         }
      }
      
      public function serializeStrings(param1:IConstantPool, param2:ByteArray) : void
      {
         var _loc5_:String = null;
         var _loc3_:int = param1.stringPool.length;
         var _loc4_:Vector.<String> = param1.stringPool.slice(1,param1.stringPool.length);
         AbcSpec.writeU30(_loc3_,param2);
         for each(_loc5_ in _loc4_)
         {
            AbcSpec.writeStringInfo(_loc5_,param2);
         }
      }
      
      public function serializeDoubles(param1:IConstantPool, param2:ByteArray) : void
      {
         var _loc4_:* = NaN;
         var _loc3_:Vector.<Number> = param1.doublePool.slice(1,param1.doublePool.length);
         if(_loc3_.length > 0)
         {
            AbcSpec.writeU30(_loc3_.length + 1,param2);
            for each(_loc4_ in _loc3_)
            {
               AbcSpec.writeD64(_loc4_,param2);
            }
         }
         else
         {
            AbcSpec.writeU30(0,param2);
         }
      }
      
      public function serializeUIntegers(param1:IConstantPool, param2:ByteArray) : void
      {
         var _loc4_:* = 0;
         var _loc3_:Vector.<uint> = param1.uintPool.slice(1,param1.uintPool.length);
         if(_loc3_.length > 0)
         {
            AbcSpec.writeU30(_loc3_.length + 1,param2);
            for each(_loc4_ in _loc3_)
            {
               AbcSpec.writeU32(_loc4_,param2);
            }
         }
         else
         {
            AbcSpec.writeU30(0,param2);
         }
      }
      
      public function serializeIntegers(param1:IConstantPool, param2:ByteArray) : void
      {
         var _loc4_:* = 0;
         var _loc3_:Vector.<int> = param1.integerPool.slice(1,param1.integerPool.length);
         if(_loc3_.length > 0)
         {
            AbcSpec.writeU30(_loc3_.length + 1,param2);
            for each(_loc4_ in _loc3_)
            {
               AbcSpec.writeU32(_loc4_,param2);
            }
         }
         else
         {
            AbcSpec.writeU30(0,param2);
         }
      }
      
      private function createBuffer() : ByteArray
      {
         return AbcSpec.newByteArray();
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("Integer Pool: {0}\n" + "Uint Pool: {1}\n" + "Double Pool: {2}\n" + "String Pool: {3}",this._pool.integerPool.join(),this._pool.uintPool.join(),this._pool.doublePool.join(),this._pool.stringPool.join());
      }
   }
}
