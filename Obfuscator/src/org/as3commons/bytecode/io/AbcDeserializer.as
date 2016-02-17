package org.as3commons.bytecode.io
{
   import org.as3commons.bytecode.abc.MethodBody;
   import org.as3commons.bytecode.abc.ExceptionInfo;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.abc.IConstantPool;
   import org.as3commons.bytecode.util.AbcSpec;
   import org.as3commons.bytecode.abc.QualifiedName;
   import org.as3commons.bytecode.abc.Op;
   import org.as3commons.bytecode.abc.enum.Opcode;
   import org.as3commons.lang.StringUtils;
   import org.as3commons.bytecode.abc.AbcFile;
   import org.as3commons.bytecode.abc.ClassInfo;
   import org.as3commons.bytecode.abc.InstanceInfo;
   import org.as3commons.bytecode.abc.ScriptInfo;
   import org.as3commons.bytecode.abc.BaseMultiname;
   import org.as3commons.bytecode.util.MultinameUtil;
   import org.as3commons.bytecode.abc.enum.ClassConstant;
   import org.as3commons.bytecode.typeinfo.Metadata;
   import org.as3commons.bytecode.abc.MethodInfo;
   import org.as3commons.bytecode.typeinfo.Argument;
   import org.as3commons.bytecode.abc.MultinameG;
   import org.as3commons.bytecode.abc.enum.MethodFlag;
   import org.as3commons.bytecode.abc.enum.ConstantKind;
   import org.as3commons.bytecode.abc.TraitInfo;
   import org.as3commons.bytecode.abc.enum.TraitKind;
   import org.as3commons.bytecode.abc.SlotOrConstantTrait;
   import org.as3commons.bytecode.abc.MethodTrait;
   import org.as3commons.bytecode.abc.ClassTrait;
   import org.as3commons.bytecode.abc.FunctionTrait;
   import org.as3commons.bytecode.abc.enum.TraitAttributes;
   
   public class AbcDeserializer extends AbstractAbcDeserializer implements IAbcDeserializer
   {
      
      public static const __NEED_CONSTANTS_:String = "~~ need constants ~~";
      
      public static const CONSTRUCTOR_BYTECODENAME:String = "constructor";
      
      public static const STATIC_INITIALIZER_BYTECODENAME:String = "staticInitializer";
      
      public static const SCRIPT_INITIALIZER_BYTECODENAME:String = "scriptInitializer";
      
      private static const ASSERT_EXTRACTION_ERROR_TEMPLATE:String = "Expected {0} elements in {1}, actual count is {2}";
       
      private var _methodBodyExtractionMethod:org.as3commons.bytecode.io.MethodBodyExtractionKind;
      
      public function AbcDeserializer(param1:ByteArray = null)
      {
         super(param1);
         this.methodBodyExtractionMethod = org.as3commons.bytecode.io.MethodBodyExtractionKind.PARSE;
      }
      
      public static function resolveExceptionInfos(param1:MethodBody) : void
      {
         var _loc2_:ExceptionInfo = null;
         for each(_loc2_ in param1.exceptionInfos)
         {
            resolveExceptionInfoOpcodes(_loc2_,param1);
         }
         resolveOpcodeExceptionInfos(param1);
      }
      
      public static function extractExceptionInfos(param1:ByteArray, param2:IConstantPool, param3:MethodBody) : Vector.<ExceptionInfo>
      {
         var _loc7_:ExceptionInfo = null;
         var _loc4_:Vector.<ExceptionInfo> = new Vector.<ExceptionInfo>();
         var _loc5_:int = AbcSpec.readU30(param1);
         var _loc6_:* = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = new ExceptionInfo();
            _loc7_.exceptionEnabledFromCodePosition = AbcSpec.readU30(param1);
            _loc7_.exceptionEnabledToCodePosition = AbcSpec.readU30(param1);
            _loc7_.codePositionToJumpToOnException = AbcSpec.readU30(param1);
            _loc7_.exceptionType = QualifiedName(param2.multinamePool[AbcSpec.readU30(param1)]);
            _loc7_.variableReceivingException = QualifiedName(param2.multinamePool[AbcSpec.readU30(param1)]);
            _loc4_[_loc4_.length] = _loc7_;
            _loc6_++;
         }
         return _loc4_;
      }
      
      public static function resolveExceptionInfoOpcodes(param1:ExceptionInfo, param2:MethodBody) : void
      {
         param1.exceptionEnabledFromOpcode = param2.opcodeBaseLocations[param1.exceptionEnabledFromCodePosition];
         param1.exceptionEnabledToOpcode = param2.opcodeBaseLocations[param1.exceptionEnabledToCodePosition];
         param1.opcodeToJumpToOnException = param2.opcodeBaseLocations[param1.codePositionToJumpToOnException];
      }
      
      public static function resolveOpcodeExceptionInfos(param1:MethodBody) : void
      {
         var _loc4_:* = 0;
         var _loc5_:Op = null;
         var _loc6_:* = 0;
         var _loc2_:* = -1;
         var _loc3_:int = param1.exceptionInfos.length;
         if(_loc3_ > 0)
         {
            _loc4_ = 0;
            for each(_loc5_ in param1.opcodes)
            {
               _loc6_ = getExceptionInfoArgumentIndex(_loc5_);
               if(_loc6_ > -1)
               {
                  _loc2_ = int(_loc5_.parameters[_loc6_]);
                  _loc5_.parameters[_loc6_] = param1.exceptionInfos[_loc2_];
                  if(++_loc4_ == _loc3_)
                  {
                     break;
                  }
               }
            }
         }
      }
      
      public static function getExceptionInfoArgumentIndex(param1:Op) : int
      {
         if(param1.opcode === Opcode.newcatch)
         {
            return 0;
         }
         return -1;
      }
      
      override public function get methodBodyExtractionMethod() : org.as3commons.bytecode.io.MethodBodyExtractionKind
      {
         return this._methodBodyExtractionMethod;
      }
      
      override public function set methodBodyExtractionMethod(param1:org.as3commons.bytecode.io.MethodBodyExtractionKind) : void
      {
         this._methodBodyExtractionMethod = param1;
      }
      
      private function assertExtraction(param1:int, param2:Array, param3:String) : void
      {
         var _loc4_:* = 0;
         if(param1 != 0)
         {
            _loc4_ = param2.length;
            if(param1 != _loc4_)
            {
               throw new Error(StringUtils.substitute(ASSERT_EXTRACTION_ERROR_TEMPLATE,param1,param3,_loc4_));
            }
         }
      }
      
      override public function deserialize(param1:int = 0) : AbcFile
      {
         _byteStream.position = param1;
         var _loc2_:AbcFile = new AbcFile();
         var _loc3_:IConstantPool = _loc2_.constantPool;
         _loc2_.minorVersion = AbcSpec.readU16(_byteStream);
         _loc2_.majorVersion = AbcSpec.readU16(_byteStream);
         _loc3_.dupeCheck = false;
         deserializeConstantPool(_loc3_);
         _loc3_.initializeLookups();
         _loc3_.dupeCheck = true;
         this.deserializeMethodInfos(_loc2_,_loc3_);
         this.deserializeMetadata(_loc2_,_loc3_);
         var _loc4_:int = this.deserializeInstanceInfo(_loc2_,_loc3_);
         this.deserializeClassInfos(_loc2_,_loc3_,_loc4_);
         this.deserializeScriptInfos(_loc2_);
         this.deserializeMethodBodies(_loc2_,_loc3_);
         return _loc2_;
      }
      
      override public function deserializeClassInfos(param1:AbcFile, param2:IConstantPool, param3:int) : void
      {
         var _loc5_:ClassInfo = null;
         var _loc4_:* = 0;
         while(_loc4_ < param3)
         {
            _loc5_ = new ClassInfo();
            _loc5_.classMultiname = InstanceInfo(param1.instanceInfo[_loc4_]).classMultiname;
            _loc5_.staticInitializer = param1.methodInfo[AbcSpec.readU30(_byteStream)];
            _loc5_.staticInitializer.as3commonsBytecodeName = STATIC_INITIALIZER_BYTECODENAME;
            _loc5_.traits = this.deserializeTraitsInfo(param1,_byteStream,true);
            param1.instanceInfo[_loc4_].classInfo = _loc5_;
            param1.addClassInfo(_loc5_);
            _loc4_++;
         }
      }
      
      override public function deserializeMethodBodies(param1:AbcFile, param2:IConstantPool) : void
      {
         var _loc5_:MethodBody = null;
         var _loc6_:* = 0;
         var _loc3_:int = AbcSpec.readU30(_byteStream);
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = new MethodBody();
            _loc5_.methodSignature = param1.methodInfo[AbcSpec.readU30(_byteStream)];
            _loc5_.methodSignature.methodBody = _loc5_;
            _loc5_.maxStack = AbcSpec.readU30(_byteStream);
            _loc5_.localCount = AbcSpec.readU30(_byteStream);
            _loc5_.initScopeDepth = AbcSpec.readU30(_byteStream);
            _loc5_.maxScopeDepth = AbcSpec.readU30(_byteStream);
            _loc6_ = AbcSpec.readU30(_byteStream);
            switch(this.methodBodyExtractionMethod)
            {
               case org.as3commons.bytecode.io.MethodBodyExtractionKind.PARSE:
                  _loc5_.opcodes = Opcode.parse(_byteStream,_loc6_,_loc5_,param1.constantPool);
                  break;
               case org.as3commons.bytecode.io.MethodBodyExtractionKind.BYTEARRAY:
                  _loc5_.rawOpcodes = AbcSpec.newByteArray();
                  _loc5_.rawOpcodes.writeBytes(_byteStream,_byteStream.position,_loc6_);
               case org.as3commons.bytecode.io.MethodBodyExtractionKind.SKIP:
                  _byteStream.position = _byteStream.position + _loc6_;
                  break;
            }
            _loc5_.exceptionInfos = extractExceptionInfos(_byteStream,param2,_loc5_);
            if(this.methodBodyExtractionMethod === org.as3commons.bytecode.io.MethodBodyExtractionKind.PARSE)
            {
               resolveExceptionInfos(_loc5_);
            }
            _loc5_.traits = this.deserializeTraitsInfo(param1,_byteStream);
            param1.addMethodBody(_loc5_);
            _loc4_++;
         }
      }
      
      override public function deserializeScriptInfos(param1:AbcFile) : void
      {
         var _loc4_:ScriptInfo = null;
         var _loc2_:int = AbcSpec.readU30(_byteStream);
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new ScriptInfo();
            _loc4_.scriptInitializer = param1.methodInfo[AbcSpec.readU30(_byteStream)];
            _loc4_.scriptInitializer.as3commonsBytecodeName = SCRIPT_INITIALIZER_BYTECODENAME;
            _loc4_.traits = this.deserializeTraitsInfo(param1,_byteStream);
            param1.addScriptInfo(_loc4_);
            _loc3_++;
         }
      }
      
      override public function deserializeInstanceInfo(param1:AbcFile, param2:IConstantPool) : int
      {
         var _loc5_:InstanceInfo = null;
         var _loc6_:BaseMultiname = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc3_:int = AbcSpec.readU30(_byteStream);
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = new InstanceInfo();
            _loc6_ = param2.multinamePool[AbcSpec.readU30(_byteStream)];
            _loc5_.classMultiname = MultinameUtil.convertToQualifiedName(_loc6_);
            _loc5_.superclassMultiname = param2.multinamePool[AbcSpec.readU30(_byteStream)];
            _loc7_ = AbcSpec.readU8(_byteStream);
            _loc5_.isFinal = ClassConstant.FINAL.present(_loc7_);
            _loc5_.isInterface = ClassConstant.INTERFACE.present(_loc7_);
            _loc5_.isProtected = ClassConstant.PROTECTED_NAMESPACE.present(_loc7_);
            _loc5_.isSealed = ClassConstant.SEALED.present(_loc7_);
            if(_loc5_.isProtected)
            {
               _loc5_.protectedNamespace = param2.namespacePool[AbcSpec.readU30(_byteStream)];
            }
            _loc8_ = AbcSpec.readU30(_byteStream);
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               _loc10_ = AbcSpec.readU30(_byteStream);
               _loc5_.interfaceMultinames[_loc5_.interfaceMultinames.length] = param2.multinamePool[_loc10_];
               _loc9_++;
            }
            _loc5_.instanceInitializer = param1.methodInfo[AbcSpec.readU30(_byteStream)];
            _loc5_.instanceInitializer.as3commonsBytecodeName = CONSTRUCTOR_BYTECODENAME;
            _loc5_.traits = this.deserializeTraitsInfo(param1,_byteStream,false,_loc5_.classMultiname.fullName);
            param1.addInstanceInfo(_loc5_);
            _loc4_++;
         }
         return _loc3_;
      }
      
      override public function deserializeMetadata(param1:AbcFile, param2:IConstantPool) : void
      {
         var _loc5_:Metadata = null;
         var _loc6_:* = 0;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:* = 0;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc3_:int = AbcSpec.readU30(_byteStream);
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = new Metadata();
            _loc5_.name = param2.stringPool[AbcSpec.readU30(_byteStream)];
            param1.addMetadataInfo(_loc5_);
            _loc6_ = AbcSpec.readU30(_byteStream);
            _loc7_ = [];
            _loc9_ = 0;
            while(_loc9_ < _loc6_)
            {
               _loc8_ = param2.stringPool[AbcSpec.readU30(_byteStream)];
               _loc7_[_loc7_.length] = _loc8_;
               _loc9_++;
            }
            for each(_loc11_ in _loc7_)
            {
               _loc10_ = param2.stringPool[AbcSpec.readU30(_byteStream)];
               _loc5_.properties[_loc11_] = _loc10_;
            }
            _loc4_++;
         }
      }
      
      override public function deserializeMethodInfos(param1:AbcFile, param2:IConstantPool) : void
      {
         var _loc5_:MethodInfo = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:BaseMultiname = null;
         var _loc9_:BaseMultiname = null;
         var _loc10_:Argument = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = undefined;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:Argument = null;
         var _loc19_:uint = 0;
         var _loc20_:uint = 0;
         var _loc21_:String = null;
         var _loc3_:int = AbcSpec.readU30(_byteStream);
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = new MethodInfo();
            param1.addMethodInfo(_loc5_);
            _loc6_ = AbcSpec.readU30(_byteStream);
            _loc5_.returnType = param2.multinamePool[AbcSpec.readU30(_byteStream)];
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               _loc8_ = param2.multinamePool[AbcSpec.readU30(_byteStream)];
               _loc9_ = _loc8_ is MultinameG?_loc8_:MultinameUtil.convertToQualifiedName(_loc8_);
               _loc10_ = new Argument(_loc9_);
               _loc5_.argumentCollection[_loc5_.argumentCollection.length] = _loc10_;
               _loc7_++;
            }
            _loc5_.methodName = param2.stringPool[AbcSpec.readU30(_byteStream)];
            _loc5_.scopeName = MultinameUtil.extractInterfaceScopeFromFullName(_loc5_.methodName);
            _loc5_.flags = AbcSpec.readU8(_byteStream);
            if(MethodFlag.flagPresent(_loc5_.flags,MethodFlag.HAS_OPTIONAL))
            {
               _loc11_ = AbcSpec.readU30(_byteStream);
               _loc12_ = 0;
               loop2:
               while(true)
               {
                  if(_loc12_ < _loc11_)
                  {
                     _loc13_ = AbcSpec.readU30(_byteStream);
                     _loc14_ = AbcSpec.readU8(_byteStream);
                     _loc15_ = null;
                     switch(_loc14_)
                     {
                        case ConstantKind.INT.value:
                           _loc15_ = param2.integerPool[_loc13_];
                           break;
                        case ConstantKind.UINT.value:
                           _loc15_ = param2.uintPool[_loc13_];
                           break;
                        case ConstantKind.DOUBLE.value:
                           _loc15_ = param2.doublePool[_loc13_];
                           break;
                        case ConstantKind.UTF8.value:
                           _loc15_ = param2.stringPool[_loc13_];
                           break;
                        case ConstantKind.TRUE.value:
                           _loc15_ = true;
                           break;
                        case ConstantKind.FALSE.value:
                           _loc15_ = false;
                           break;
                        case ConstantKind.NULL.value:
                           _loc15_ = null;
                           break;
                        case ConstantKind.UNDEFINED.value:
                           _loc15_ = undefined;
                           break;
                        case ConstantKind.NAMESPACE.value:
                        case ConstantKind.PACKAGE_NAMESPACE.value:
                        case ConstantKind.PACKAGE_INTERNAL_NAMESPACE.value:
                        case ConstantKind.PROTECTED_NAMESPACE.value:
                        case ConstantKind.EXPLICIT_NAMESPACE.value:
                        case ConstantKind.STATIC_PROTECTED_NAMESPACE.value:
                        case ConstantKind.PRIVATE_NAMESPACE.value:
                           _loc15_ = param2.namespacePool[_loc13_];
                           break;
                        default:
                           break loop2;
                     }
                     _loc16_ = _loc5_.argumentCollection.length;
                     _loc17_ = int(_loc16_ - _loc11_ + _loc12_);
                     _loc18_ = Argument(_loc5_.argumentCollection[_loc17_]);
                     _loc18_.defaultValue = _loc15_;
                     _loc18_.kind = ConstantKind.determineKind(_loc14_);
                     _loc18_.isOptional = true;
                     _loc12_++;
                     continue;
                  }
               }
               throw new Error("Unknown optional value kind: " + _loc14_);
            }
            if(MethodFlag.flagPresent(_loc5_.flags,MethodFlag.HAS_PARAM_NAMES))
            {
               _loc19_ = _loc5_.argumentCollection.length;
               _loc20_ = 0;
               while(_loc20_ < _loc19_)
               {
                  _loc21_ = param1.constantPool.stringPool[AbcSpec.readU30(_byteStream)];
                  Argument(_loc5_.argumentCollection[_loc20_]).name = _loc21_;
                  _loc20_++;
               }
            }
            _loc4_++;
         }
      }
      
      override public function deserializeTraitsInfo(param1:AbcFile, param2:ByteArray, param3:Boolean = false, param4:String = "") : Vector.<TraitInfo>
      {
         var _loc7_:Vector.<MethodInfo> = null;
         var _loc11_:TraitInfo = null;
         var _loc12_:uint = 0;
         var _loc13_:BaseMultiname = null;
         var _loc14_:QualifiedName = null;
         var _loc15_:* = 0;
         var _loc16_:TraitKind = null;
         var _loc17_:SlotOrConstantTrait = null;
         var _loc18_:MethodTrait = null;
         var _loc19_:MethodInfo = null;
         var _loc20_:ClassTrait = null;
         var _loc21_:FunctionTrait = null;
         var _loc22_:* = 0;
         var _loc23_:* = 0;
         var _loc24_:Metadata = null;
         var _loc5_:Vector.<TraitInfo> = new Vector.<TraitInfo>();
         var _loc6_:IConstantPool = param1.constantPool;
         _loc7_ = param1.methodInfo;
         var _loc8_:Vector.<Metadata> = param1.metadataInfo;
         var _loc9_:int = AbcSpec.readU30(param2);
         var _loc10_:* = 0;
         while(_loc10_ < _loc9_)
         {
            _loc12_ = AbcSpec.readU30(param2);
            _loc13_ = _loc6_.multinamePool[_loc12_];
            _loc14_ = MultinameUtil.convertToQualifiedName(_loc13_);
            _loc15_ = AbcSpec.readU8(param2);
            _loc16_ = TraitKind.determineKind(_loc15_);
            switch(_loc16_)
            {
               case TraitKind.SLOT:
               case TraitKind.CONST:
                  _loc17_ = new SlotOrConstantTrait();
                  _loc17_.slotId = AbcSpec.readU30(param2);
                  _loc17_.typeMultiname = _loc6_.multinamePool[AbcSpec.readU30(param2)];
                  _loc17_.vindex = AbcSpec.readU30(param2);
                  _loc17_.isStatic = param3;
                  if(_loc17_.vindex > 0)
                  {
                     _loc17_.vkind = ConstantKind.determineKind(AbcSpec.readU8(param2));
                     _loc17_.defaultValue = this.getSlotOrConstantDefaultValue(_loc6_,_loc17_.vindex,_loc17_.vkind);
                  }
                  _loc11_ = _loc17_;
                  break;
               case TraitKind.METHOD:
               case TraitKind.GETTER:
               case TraitKind.SETTER:
                  _loc18_ = new MethodTrait();
                  _loc18_.isStatic = param3;
                  _loc18_.dispositionId = AbcSpec.readU30(param2);
                  _loc19_ = _loc7_[AbcSpec.readU30(param2)];
                  _loc19_.methodName = _loc14_.name;
                  _loc18_.traitMethod = _loc19_;
                  _loc19_.as3commonsByteCodeAssignedMethodTrait = _loc18_;
                  _loc18_.traitMethod.as3commonsBytecodeName = _loc14_;
                  _loc11_ = _loc18_;
                  break;
               case TraitKind.CLASS:
                  _loc20_ = new ClassTrait();
                  _loc20_.classSlotId = AbcSpec.readU30(param2);
                  _loc20_.classIndex = AbcSpec.readU30(param2);
                  _loc20_.classInfo = param1.classInfo[_loc20_.classIndex];
                  _loc11_ = _loc20_;
                  break;
               case TraitKind.FUNCTION:
                  _loc21_ = new FunctionTrait();
                  _loc21_.functionSlotId = AbcSpec.readU30(param2);
                  _loc21_.functionMethod = _loc7_[AbcSpec.readU30(param2)];
                  _loc21_.functionMethod.methodName = _loc14_.name;
                  _loc21_.isStatic = param3;
                  _loc21_.functionMethod.as3commonsByteCodeAssignedMethodTrait = _loc21_;
                  _loc11_ = _loc21_;
                  break;
            }
            if(_loc15_ & TraitAttributes.METADATA.bitMask << 4)
            {
               _loc22_ = AbcSpec.readU30(param2);
               _loc23_ = 0;
               while(_loc23_ < _loc22_)
               {
                  _loc24_ = _loc8_[AbcSpec.readU30(param2)];
                  _loc11_.addMetadata(_loc24_);
                  _loc23_++;
               }
            }
            _loc11_.traitMultiname = _loc14_;
            _loc11_.isFinal = Boolean(_loc15_ >> 4 & TraitAttributes.FINAL.bitMask);
            _loc11_.isOverride = Boolean(_loc15_ >> 4 & TraitAttributes.OVERRIDE.bitMask);
            _loc11_.traitKind = _loc16_;
            _loc5_[_loc5_.length] = _loc11_;
            _loc10_++;
         }
         return _loc5_;
      }
      
      protected function getSlotOrConstantDefaultValue(param1:IConstantPool, param2:uint, param3:ConstantKind) : *
      {
         return param1.getConstantPoolItem(param3.value,param2);
      }
   }
}
