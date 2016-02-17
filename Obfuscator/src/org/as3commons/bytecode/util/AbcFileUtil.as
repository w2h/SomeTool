package org.as3commons.bytecode.util
{
   import org.as3commons.bytecode.swf.SWFFile;
   import org.as3commons.bytecode.tags.DoABCTag;
   import org.as3commons.bytecode.abc.AbcFile;
   import org.as3commons.bytecode.as3commons_bytecode;
   import org.as3commons.bytecode.abc.IConstantPool;
   import org.as3commons.bytecode.abc.ConstantPool;
   import org.as3commons.bytecode.abc.ClassInfo;
   import org.as3commons.bytecode.abc.InstanceInfo;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import org.as3commons.lang.ICloneable;
   import avmplus.getQualifiedClassName;
   import flash.utils.getDefinitionByName;
   
   public final class AbcFileUtil
   {
      
      private static const SWF_HEADER:Array = [70,87,83,10,255,255,255,255,120,0,3,232,0,0,11,184,0,0,12,1,0,68,17,8,0,0,0];
      
      private static const ABC_HEADER:Array = [63,18];
      
      private static var SWF_FOOTER:Array = [64,0,0,0];
      
      private static const INSTANCE_INITIALIZER_QNAME:String = "{instance initializer (constructor?)}";
      
      private static const PERIOD:String = ".";
       
      public function AbcFileUtil()
      {
         super();
      }
      
      public static function mergeAbcFilesInSWFFile(param1:SWFFile) : void
      {
         var _loc6_:DoABCTag = null;
         var _loc7_:* = 0;
         var _loc2_:Array = param1.getTagsByType(DoABCTag);
         if(_loc2_.length < 2)
         {
            return;
         }
         var _loc3_:uint = _loc2_.length;
         var _loc4_:uint = 1;
         while(_loc4_ < _loc3_)
         {
            _loc7_ = param1.tags.indexOf(_loc2_[_loc4_]);
            if(_loc7_ > -1)
            {
               param1.tags.splice(_loc7_,1);
            }
            _loc4_++;
         }
         var _loc5_:Array = [];
         for each(_loc6_ in _loc2_)
         {
            _loc5_[_loc5_.length] = _loc6_.abcFile;
         }
         DoABCTag(_loc2_[0]).abcFile = mergeMultipleAbcFiles(_loc5_);
      }
      
      public static function mergeMultipleAbcFiles(param1:Array) : AbcFile
      {
         if(!param1 || param1.length == 0)
         {
            return null;
         }
         if(param1.length == 1)
         {
            return param1[0];
         }
         var _loc2_:AbcFile = new AbcFile();
         var _loc3_:uint = param1.length;
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = mergeAbcFiles(_loc2_,param1[_loc4_]);
            _loc4_++;
         }
         return _loc2_;
      }
      
      public static function mergeAbcFiles(param1:AbcFile, param2:AbcFile) : AbcFile
      {
         var _loc3_:AbcFile = new AbcFile();
         _loc3_.majorVersion = param1.majorVersion;
         _loc3_.minorVersion = param1.minorVersion;
         _loc3_.constantPool = mergeConstantPools(param1.constantPool,param2.constantPool);
         _loc3_.as3commons_bytecode::setClassInfo(param1.classInfo.concat(param2.classInfo));
         _loc3_.as3commons_bytecode::setInstanceInfo(param1.instanceInfo.concat(param2.instanceInfo));
         _loc3_.as3commons_bytecode::setMetadataInfo(param1.metadataInfo.concat(param2.metadataInfo));
         _loc3_.as3commons_bytecode::setMethodBodies(param1.methodBodies.concat(param2.methodBodies));
         _loc3_.as3commons_bytecode::setMethodInfo(param1.methodInfo.concat(param2.methodInfo));
         _loc3_.as3commons_bytecode::setScriptInfo(param1.scriptInfo.concat(param2.scriptInfo));
         return _loc3_;
      }
      
      public static function mergeConstantPools(param1:IConstantPool, param2:IConstantPool) : IConstantPool
      {
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:String = null;
         var _loc7_:uint = 0;
         var _loc3_:ConstantPool = new ConstantPool();
         _loc3_.as3commons_bytecode::setDoublePool(param1.doublePool.concat([]));
         for each(_loc4_ in param2.doublePool)
         {
            if(_loc3_.doublePool.indexOf(_loc4_) < 0)
            {
               _loc3_.doublePool[_loc3_.doublePool.length] = _loc4_;
            }
         }
         _loc3_.as3commons_bytecode::setIntegerPool(param1.integerPool.concat([]));
         for each(_loc5_ in param2.integerPool)
         {
            if(_loc3_.integerPool.indexOf(_loc5_) < 0)
            {
               _loc3_.integerPool[_loc3_.integerPool.length] = _loc5_;
            }
         }
         _loc3_.as3commons_bytecode::setMultinamePool(param1.multinamePool.concat(param2.multinamePool));
         _loc3_.as3commons_bytecode::setNamespacePool(param1.namespacePool.concat(param2.namespacePool));
         _loc3_.as3commons_bytecode::setNamespaceSetPool(param1.namespaceSetPool.concat(param2.namespaceSetPool));
         _loc3_.as3commons_bytecode::setStringPool(param1.stringPool.concat([]));
         for each(_loc6_ in param2.stringPool)
         {
            if(_loc3_.stringPool.indexOf(_loc6_) < 0)
            {
               _loc3_.stringPool[_loc3_.stringPool.length] = _loc6_;
            }
         }
         _loc3_.as3commons_bytecode::setUintPool(param1.uintPool.concat([]));
         for each(_loc7_ in param2.uintPool)
         {
            if(_loc3_.uintPool.indexOf(_loc7_) < 0)
            {
               _loc3_.uintPool[_loc3_.uintPool.length] = _loc7_;
            }
         }
         return _loc3_;
      }
      
      public static function getClassinfoByFullyQualifiedName(param1:AbcFile, param2:String) : ClassInfo
      {
         var _loc3_:ClassInfo = null;
         var param2:String = normalizeFullName(param2);
         for each(_loc3_ in param1.classInfo)
         {
            if(_loc3_.classMultiname.fullName == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public static function getInstanceinfoByFullyQualifiedName(param1:AbcFile, param2:String) : InstanceInfo
      {
         var _loc3_:InstanceInfo = null;
         var param2:String = normalizeFullName(param2);
         for each(_loc3_ in param1.instanceInfo)
         {
            if(_loc3_.classMultiname.fullName == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public static function normalizeFullName(param1:String) : String
      {
         return param1.replace(MultinameUtil.DOUBLE_COLON_REGEXP,PERIOD);
      }
      
      public static function wrapBytecodeInSWF(param1:Array) : ByteArray
      {
         var _loc3_:* = 0;
         var _loc4_:ByteArray = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.endian = Endian.LITTLE_ENDIAN;
         for each(_loc3_ in SWF_HEADER)
         {
            _loc2_.writeByte(_loc3_);
         }
         for each(_loc4_ in param1)
         {
            for each(_loc6_ in ABC_HEADER)
            {
               _loc2_.writeByte(_loc6_);
            }
            _loc2_.writeInt(_loc4_.length);
            _loc2_.writeBytes(_loc4_);
         }
         for each(_loc5_ in SWF_FOOTER)
         {
            _loc2_.writeByte(_loc5_);
         }
         _loc2_.position = 4;
         _loc2_.writeInt(_loc2_.length);
         _loc2_.position = 0;
         return _loc2_;
      }
      
      public static function cloneVector(param1:*) : *
      {
         var _loc5_:ICloneable = null;
         var _loc2_:String = getQualifiedClassName(param1);
         var _loc3_:Class = getDefinitionByName(_loc2_) as Class;
         var _loc4_:* = new _loc3_();
         for each(_loc5_ in param1)
         {
            _loc4_[_loc4_.length] = _loc5_.clone();
         }
         return _loc4_;
      }
   }
}
