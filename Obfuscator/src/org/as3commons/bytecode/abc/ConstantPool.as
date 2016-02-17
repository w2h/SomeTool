package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.IEquals;
   import flash.utils.Dictionary;
   import org.as3commons.bytecode.util.StringLookup;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.abc.enum.ConstantKind;
   import org.as3commons.bytecode.as3commons_bytecode;
   import flash.errors.IllegalOperationError;
   import org.as3commons.bytecode.util.Assertions;
   import org.as3commons.lang.StringUtils;
   
   public final class ConstantPool implements IEquals, IConstantPool
   {
      
      private static const NAMESPACE_SET_PROPERTYNAME:String = "namespaceSet";
      
      private static const NAME_PROPERTYNAME:String = "name";
      
      private static const LOCKED_CONSTANTPOOL_ERROR:String = "Constantpool is locked";
       
      private var _dupeCheck:Boolean = true;
      
      private var _integerPool:Vector.<int>;
      
      private var _integerLookup:Dictionary;
      
      private var _uintPool:Vector.<uint>;
      
      private var _uintLookup:Dictionary;
      
      private var _doublePool:Vector.<Number>;
      
      private var _doubleLookup:Dictionary;
      
      private var _stringPool:Vector.<String>;
      
      private var _stringLookup:StringLookup;
      
      private var _namespacePool:Vector.<org.as3commons.bytecode.abc.LNamespace>;
      
      private var _namespaceLookup:Dictionary;
      
      private var _namespaceSetPool:Vector.<org.as3commons.bytecode.abc.NamespaceSet>;
      
      private var _namespaceSetLookup:Dictionary;
      
      private var _multinamePool:Vector.<org.as3commons.bytecode.abc.BaseMultiname>;
      
      private var _classInfo:Vector.<org.as3commons.bytecode.abc.ClassInfo>;
      
      private var _multinameLookup:Dictionary;
      
      private var _lookup:Dictionary;
      
      private var _locked:Boolean = false;
      
      private var _rawConstantPool:ByteArray;
      
      public function ConstantPool()
      {
         super();
         this.reset();
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this._locked = param1;
      }
      
      public function get dupeCheck() : Boolean
      {
         return this._dupeCheck;
      }
      
      public function set dupeCheck(param1:Boolean) : void
      {
         this._dupeCheck = param1;
      }
      
      public function reset() : void
      {
         this._integerLookup = new Dictionary();
         this._uintLookup = new Dictionary();
         this._doubleLookup = new Dictionary();
         this._stringLookup = new StringLookup();
         this._namespaceLookup = new Dictionary();
         this._namespaceSetLookup = new Dictionary();
         this._multinameLookup = new Dictionary();
         this._integerPool = new <int>[0];
         this._uintPool = new <uint>[0];
         this._doublePool = new <Number>[NaN];
         this._classInfo = new Vector.<org.as3commons.bytecode.abc.ClassInfo>();
         this._stringPool = new <String>[org.as3commons.bytecode.abc.LNamespace.ASTERISK.name];
         this._integerLookup[0] = 0;
         this._uintLookup[0] = 0;
         this._doubleLookup[NaN] = 0;
         this._stringLookup.set(org.as3commons.bytecode.abc.LNamespace.ASTERISK.name,0);
         this._namespacePool = new <org.as3commons.bytecode.abc.LNamespace>[org.as3commons.bytecode.abc.LNamespace.ASTERISK];
         this._namespaceLookup[org.as3commons.bytecode.abc.LNamespace.ASTERISK.toString()] = 0;
         this._namespaceSetPool = new <org.as3commons.bytecode.abc.NamespaceSet>[new org.as3commons.bytecode.abc.NamespaceSet([org.as3commons.bytecode.abc.LNamespace.ASTERISK])];
         this._namespaceSetLookup[this._namespaceSetPool[0].toString()] = 0;
         this._multinamePool = new <org.as3commons.bytecode.abc.BaseMultiname>[new QualifiedName(org.as3commons.bytecode.abc.LNamespace.ASTERISK.name,org.as3commons.bytecode.abc.LNamespace.ASTERISK)];
         this._multinameLookup[this._multinamePool[0].toString()] = 0;
         this._lookup = new Dictionary();
         this._lookup[ConstantKind.INT] = [this._integerPool,this._integerLookup];
         this._lookup[ConstantKind.UINT] = [this._uintPool,this._uintLookup];
         this._lookup[ConstantKind.DOUBLE] = [this._doublePool,this._doubleLookup];
         this._lookup[ConstantKind.UTF8] = [this._stringPool,this._stringLookup];
         this._lookup[ConstantKind.NAMESPACE] = [this._namespacePool,this._namespaceLookup];
         this._lookup[ConstantKind.PACKAGE_NAMESPACE] = [this._namespacePool,this._namespaceLookup];
         this._lookup[ConstantKind.PACKAGE_INTERNAL_NAMESPACE] = [this._namespacePool,this._namespaceLookup];
         this._lookup[ConstantKind.PROTECTED_NAMESPACE] = [this._namespacePool,this._namespaceLookup];
         this._lookup[ConstantKind.EXPLICIT_NAMESPACE] = [this._namespacePool,this._namespaceLookup];
         this._lookup[ConstantKind.STATIC_PROTECTED_NAMESPACE] = [this._namespacePool,this._namespaceLookup];
         this._lookup[ConstantKind.PRIVATE_NAMESPACE] = [this._namespacePool,this._namespaceLookup];
         this._lookup[ConstantKind.TRUE] = true;
         this._lookup[ConstantKind.FALSE] = false;
         this._lookup[ConstantKind.NULL] = null;
         this._lookup[ConstantKind.UNDEFINED] = undefined;
      }
      
      public function getConstantPoolItem(param1:uint, param2:uint) : *
      {
         var _loc3_:ConstantKind = ConstantKind.determineKind(param1);
         var _loc4_:* = this._lookup[_loc3_];
         return _loc4_ is Array?_loc4_[0][param2]:_loc4_;
      }
      
      public function getConstantPoolItemIndex(param1:ConstantKind, param2:*) : int
      {
         var _loc3_:* = this._lookup[param1];
         return _loc3_ is Array?_loc3_[1] is Dictionary?_loc3_[1][param2]:_loc3_[1].get(param2):-1;
      }
      
      public function addItemToPool(param1:ConstantKind, param2:*) : int
      {
         var _loc3_:* = this._lookup[param1];
         if(_loc3_ is Array)
         {
            return this.addToPool(_loc3_[0],_loc3_[1],param2);
         }
         return 1;
      }
      
      public function get integerPool() : Vector.<int>
      {
         return this._integerPool;
      }
      
      as3commons_bytecode function setIntegerPool(param1:Vector.<int>) : void
      {
         this._integerPool = param1;
      }
      
      public function get uintPool() : Vector.<uint>
      {
         return this._uintPool;
      }
      
      as3commons_bytecode function setUintPool(param1:Vector.<uint>) : void
      {
         this._uintPool = param1;
      }
      
      public function get doublePool() : Vector.<Number>
      {
         return this._doublePool;
      }
      
      as3commons_bytecode function setDoublePool(param1:Vector.<Number>) : void
      {
         this._doublePool = param1;
      }
      
      public function get stringPool() : Vector.<String>
      {
         return this._stringPool;
      }
      
      as3commons_bytecode function setStringPool(param1:Vector.<String>) : void
      {
         this._stringPool = param1;
      }
      
      public function get namespacePool() : Vector.<org.as3commons.bytecode.abc.LNamespace>
      {
         return this._namespacePool;
      }
      
      as3commons_bytecode function setNamespacePool(param1:Vector.<org.as3commons.bytecode.abc.LNamespace>) : void
      {
         this._namespacePool = param1;
      }
      
      public function get namespaceSetPool() : Vector.<org.as3commons.bytecode.abc.NamespaceSet>
      {
         return this._namespaceSetPool;
      }
      
      as3commons_bytecode function setNamespaceSetPool(param1:Vector.<org.as3commons.bytecode.abc.NamespaceSet>) : void
      {
         this._namespaceSetPool = param1;
      }
      
      public function get multinamePool() : Vector.<org.as3commons.bytecode.abc.BaseMultiname>
      {
         return this._multinamePool;
      }
      
      as3commons_bytecode function setMultinamePool(param1:Vector.<org.as3commons.bytecode.abc.BaseMultiname>) : void
      {
         this._multinamePool = param1;
      }
      
      public function get classInfo() : Vector.<org.as3commons.bytecode.abc.ClassInfo>
      {
         return this._classInfo;
      }
      
      as3commons_bytecode function setClassInfo(param1:Vector.<org.as3commons.bytecode.abc.ClassInfo>) : void
      {
         this._classInfo = param1;
      }
      
      public function addMultiname(param1:org.as3commons.bytecode.abc.BaseMultiname) : int
      {
         var _loc3_:MultinameG = null;
         var _loc4_:org.as3commons.bytecode.abc.BaseMultiname = null;
         if(param1 is NamedMultiname)
         {
            this.addString(NamedMultiname(param1).name);
         }
         if(param1.hasOwnProperty(NAMESPACE_SET_PROPERTYNAME))
         {
            this.addNamespaceSet(param1[NAMESPACE_SET_PROPERTYNAME]);
         }
         if(param1 is QualifiedName)
         {
            this.addNamespace(QualifiedName(param1).nameSpace);
         }
         if(param1 is MultinameG)
         {
            _loc3_ = param1 as MultinameG;
            this.addMultiname(_loc3_.qualifiedName);
            for each(_loc4_ in _loc3_.parameters)
            {
               this.addMultiname(_loc4_);
            }
         }
         var _loc2_:* = -1;
         if(this._dupeCheck)
         {
            _loc2_ = this.addObject(this._multinamePool,this._multinameLookup,param1);
         }
         if(_loc2_ == -1)
         {
            if(!this.locked)
            {
               _loc2_ = this._multinamePool.push(param1) - 1;
               param1.poolIndex = _loc2_;
            }
            else
            {
               throw new Error(LOCKED_CONSTANTPOOL_ERROR);
            }
         }
         return _loc2_;
      }
      
      protected function validateMultiname(param1:org.as3commons.bytecode.abc.BaseMultiname) : void
      {
         var _loc2_:QualifiedName = null;
         if(param1.kind == null)
         {
            throw new IllegalOperationError("Illegal multiname: " + param1.toString());
         }
         switch(true)
         {
            case param1 is QualifiedName:
               _loc2_ = QualifiedName(param1);
               if(_loc2_.name == null)
               {
                  throw new IllegalOperationError("Illegal QualifiedName: " + _loc2_.toString());
               }
               if(_loc2_.nameSpace == null)
               {
                  throw new IllegalOperationError("Illegal QualifiedName: " + _loc2_.toString());
               }
               if(!this.validateNamespace(_loc2_.nameSpace))
               {
                  throw new IllegalOperationError("Illegal QualifiedName: " + _loc2_.toString());
               }
               break;
         }
      }
      
      protected function validateNamespace(param1:org.as3commons.bytecode.abc.LNamespace) : Boolean
      {
         return param1.name != null;
      }
      
      private function addObject(param1:*, param2:Dictionary, param3:Object) : int
      {
         var _loc6_:* = undefined;
         if(param3.hasOwnProperty(NAME_PROPERTYNAME))
         {
            this.addString(param3.name);
         }
         var _loc4_:String = null;
         var _loc5_:* = -1;
         if(this._dupeCheck)
         {
            _loc4_ = param3.toString();
            _loc6_ = param2[_loc4_];
            _loc5_ = _loc6_ != null?_loc6_:-1;
         }
         if(_loc5_ == -1)
         {
            if(!this.locked)
            {
               _loc5_ = param1.push(param3) - 1;
               _loc4_ = _loc4_ || param3.toString();
               param2[_loc4_] = _loc5_;
            }
            else
            {
               throw new Error(LOCKED_CONSTANTPOOL_ERROR);
            }
         }
         return _loc5_;
      }
      
      public function getStringPosition(param1:String) : int
      {
         return this._stringPool.indexOf(param1);
      }
      
      public function getIntPosition(param1:int) : int
      {
         return this._integerPool.indexOf(param1);
      }
      
      public function getUintPosition(param1:uint) : int
      {
         return this._uintPool.indexOf(param1);
      }
      
      public function getDoublePosition(param1:Number) : int
      {
         return this._doublePool.indexOf(param1);
      }
      
      public function getNamespacePosition(param1:org.as3commons.bytecode.abc.LNamespace) : int
      {
         var _loc2_:* = -1;
         var _loc3_:uint = this._namespacePool.length;
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_)
         {
            if(IEquals(this._namespacePool[_loc4_]).equals(param1))
            {
               _loc2_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function getNamespaceSetPosition(param1:org.as3commons.bytecode.abc.NamespaceSet) : int
      {
         var _loc2_:* = -1;
         var _loc3_:uint = this._namespaceSetPool.length;
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_)
         {
            if(IEquals(this._namespaceSetPool[_loc4_]).equals(param1))
            {
               _loc2_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function getMultinamePosition(param1:org.as3commons.bytecode.abc.BaseMultiname) : int
      {
         var _loc2_:* = -1;
         var _loc3_:uint = this._multinamePool.length;
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_)
         {
            if(IEquals(this._multinamePool[_loc4_]).equals(param1))
            {
               _loc2_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function getMultinamePositionByName(param1:String) : int
      {
         var _loc5_:NamedMultiname = null;
         var _loc2_:* = -1;
         var _loc3_:uint = this._multinamePool.length;
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this._multinamePool[_loc4_] as NamedMultiname;
            if(_loc5_ != null)
            {
               if(NamedMultiname(_loc5_).name == param1)
               {
                  _loc2_ = _loc4_;
                  break;
               }
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function addString(param1:String) : int
      {
         return this.addToPool(this._stringPool,this._stringLookup,param1);
      }
      
      public function addInt(param1:int) : int
      {
         return this.addToPool(this._integerPool,this._integerLookup,param1);
      }
      
      public function addUint(param1:uint) : int
      {
         return this.addToPool(this._uintPool,this._uintLookup,param1);
      }
      
      public function addDouble(param1:Number) : int
      {
         return this.addToPool(this._doublePool,this._doubleLookup,param1);
      }
      
      public function addNamespace(param1:org.as3commons.bytecode.abc.LNamespace) : int
      {
         return this.addObject(this._namespacePool,this._namespaceLookup,param1);
      }
      
      public function addNamespaceSet(param1:org.as3commons.bytecode.abc.NamespaceSet) : int
      {
         var _loc2_:org.as3commons.bytecode.abc.LNamespace = null;
         for each(_loc2_ in param1.namespaces)
         {
            this.addNamespace(_loc2_);
         }
         return this.addObject(this._namespaceSetPool,this._namespaceSetLookup,param1);
      }
      
      public function initializeLookups() : void
      {
         var _loc2_:* = 0;
         var _loc3_:uint = 0;
         var _loc4_:* = NaN;
         var _loc5_:String = null;
         var _loc6_:org.as3commons.bytecode.abc.BaseMultiname = null;
         var _loc7_:org.as3commons.bytecode.abc.LNamespace = null;
         var _loc8_:org.as3commons.bytecode.abc.NamespaceSet = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this._integerPool)
         {
            this._integerLookup[_loc2_] = _loc1_++;
         }
         _loc1_ = 0;
         for each(_loc3_ in this._uintPool)
         {
            this._uintLookup[_loc3_] = _loc1_++;
         }
         _loc1_ = 0;
         for each(_loc4_ in this._doublePool)
         {
            this._doubleLookup[_loc4_] = _loc1_++;
         }
         _loc1_ = 0;
         for each(_loc5_ in this._stringPool)
         {
            this._stringLookup.set(_loc5_,_loc1_++);
         }
         _loc1_ = 0;
         for each(_loc6_ in this._multinamePool)
         {
            this._multinameLookup[_loc6_.toString()] = _loc1_++;
         }
         _loc1_ = 0;
         for each(_loc7_ in this._namespacePool)
         {
            this._namespaceLookup[_loc7_.toString()] = _loc1_++;
         }
         _loc1_ = 0;
         for each(_loc8_ in this._namespaceSetPool)
         {
            this._namespaceSetLookup[_loc8_.toString()] = _loc1_++;
         }
      }
      
      public function addToPool(param1:*, param2:*, param3:Object) : int
      {
         var _loc4_:* = param2 is Dictionary?param2[param3]:param2.get(param3);
         var _loc5_:int = _loc4_ != null?_loc4_:-1;
         if(_loc5_ > -1)
         {
            return _loc5_;
         }
         if(!this.locked)
         {
            _loc5_ = param1.push(param3) - 1;
            if(param2 is Dictionary)
            {
               param2[param3] = _loc5_;
            }
            else
            {
               param2.set(param3,_loc5_);
            }
            return _loc5_;
         }
         throw new Error(LOCKED_CONSTANTPOOL_ERROR);
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc2_:ConstantPool = ConstantPool(param1);
         return Assertions.assertArrayContentsEqual(this._integerPool,_loc2_._integerPool) && Assertions.assertArrayContentsEqual(this._uintPool,_loc2_._uintPool) && Assertions.assertArrayContentsEqual(this._doublePool,_loc2_._doublePool) && Assertions.assertArrayContentsEqual(this._stringPool,_loc2_._stringPool) && Assertions.assertArrayContentsEqual(this._namespacePool,_loc2_._namespacePool) && Assertions.assertArrayContentsEqual(this._namespaceSetPool,_loc2_._namespaceSetPool) && Assertions.assertVectorContentsEqual(this._multinamePool,_loc2_._multinamePool);
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("Integer Pool: {0}\n" + "Uint Pool: {1}\n" + "Double Pool: {2}\n" + "String Pool:\n\t{3}" + "\nNamespace Pool:\n\t{4}" + "\nNamespace Set Pool:\n\t{5}" + "\nMultiname Pool:\n\t{6}",this._integerPool.join(),this._uintPool.join(),this._doublePool.join(),this._stringPool.join("\n\t"),this._namespacePool.join("\n\t"),this._namespaceSetPool.join("\n\t"),this._multinamePool.join("\n\t"));
      }
      
      public function get rawConstantPool() : ByteArray
      {
         return this._rawConstantPool;
      }
      
      public function set rawConstantPool(param1:ByteArray) : void
      {
         this._rawConstantPool = param1;
      }
   }
}
