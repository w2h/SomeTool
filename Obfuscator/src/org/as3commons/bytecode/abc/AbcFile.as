package org.as3commons.bytecode.abc
{
   import flash.utils.Dictionary;
   import org.as3commons.bytecode.typeinfo.Metadata;
   import org.as3commons.bytecode.emit.asm.ClassInfoReference;
   import org.as3commons.bytecode.as3commons_bytecode;
   
   public final class AbcFile
   {
      
      private static const TAB_CHAR:String = "\t";
      
      private static const NL_LF_CHARS:String = "\n\t";
      
      private static const NEWLINE_CHAR:String = "\n";
      
      private static const TOSTRING_TEMPLATE:String = "Method Signatures (MethodInfo):";
       
      private var _classNameLookup:Dictionary;
      
      private var _methodInfo:Vector.<org.as3commons.bytecode.abc.MethodInfo>;
      
      private var _metadataInfo:Vector.<Metadata>;
      
      private var _instanceInfo:Vector.<org.as3commons.bytecode.abc.InstanceInfo>;
      
      private var _scriptInfo:Vector.<org.as3commons.bytecode.abc.ScriptInfo>;
      
      private var _methodBodies:Vector.<org.as3commons.bytecode.abc.MethodBody>;
      
      public var minorVersion:int;
      
      public var majorVersion:int;
      
      public var constantPool:org.as3commons.bytecode.abc.IConstantPool;
      
      public function AbcFile()
      {
         super();
         this.constantPool = new ConstantPool();
         this._classNameLookup = new Dictionary();
         this._methodInfo = new Vector.<org.as3commons.bytecode.abc.MethodInfo>();
         this._metadataInfo = new Vector.<Metadata>();
         this._instanceInfo = new Vector.<org.as3commons.bytecode.abc.InstanceInfo>();
         this._scriptInfo = new Vector.<org.as3commons.bytecode.abc.ScriptInfo>();
         this._methodBodies = new Vector.<org.as3commons.bytecode.abc.MethodBody>();
      }
      
      public function addClassInfoReference(param1:ClassInfoReference) : int
      {
         var _loc3_:ClassInfo = null;
         var _loc2_:* = 0;
         for each(_loc3_ in this.constantPool.classInfo)
         {
            if(_loc3_.classMultiname.equals(param1.classMultiName))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function addClassInfo(param1:ClassInfo) : int
      {
         return this.addUniquely(param1,this.constantPool.classInfo);
      }
      
      public function addClassInfos(param1:Array) : void
      {
         this.addCollection(this.addClassInfo,param1);
      }
      
      public function addMetadataInfo(param1:Metadata) : int
      {
         return this.addUniquely(param1,this._metadataInfo);
      }
      
      public function addMetadataInfos(param1:Array) : void
      {
         this.addCollection(this.addMetadataInfo,param1);
      }
      
      public function addMethodInfo(param1:org.as3commons.bytecode.abc.MethodInfo) : int
      {
         return this.addUniquely(param1,this._methodInfo);
      }
      
      public function addMethodInfos(param1:Array) : void
      {
         this.addCollection(this.addMethodInfo,this.methodInfo);
      }
      
      public function addUniquely(param1:Object, param2:*) : int
      {
         var _loc3_:int = param2.indexOf(param1);
         if(_loc3_ == -1)
         {
            _loc3_ = param2.push(param1) - 1;
         }
         return _loc3_;
      }
      
      public function addInstanceInfo(param1:org.as3commons.bytecode.abc.InstanceInfo) : int
      {
         var _loc2_:BaseMultiname = null;
         this._classNameLookup[param1.classMultiname.fullName] = true;
         this.constantPool.addMultiname(param1.classMultiname);
         for each(_loc2_ in param1.interfaceMultinames)
         {
            this.constantPool.addMultiname(_loc2_);
         }
         if(param1.isProtected)
         {
            this.constantPool.addNamespace(param1.protectedNamespace);
         }
         this.constantPool.addMultiname(param1.superclassMultiname);
         this.addMethodInfo(param1.instanceInitializer);
         if(param1.instanceInitializer.methodBody != null)
         {
            this.addMethodBody(param1.instanceInitializer.methodBody);
         }
         return this.addUniquely(param1,this._instanceInfo);
      }
      
      public function containsClass(param1:String) : Boolean
      {
         return this._classNameLookup[param1] == true;
      }
      
      public function addInstanceInfos(param1:Array) : void
      {
         this.addCollection(this.addInstanceInfo,param1);
      }
      
      public function addScriptInfo(param1:org.as3commons.bytecode.abc.ScriptInfo) : int
      {
         return this.addUniquely(param1,this._scriptInfo);
      }
      
      public function addScriptInfos(param1:Array) : void
      {
         this.addCollection(this.addScriptInfo,param1);
      }
      
      public function addMethodBody(param1:org.as3commons.bytecode.abc.MethodBody) : int
      {
         return this.addUniquely(param1,this._methodBodies);
      }
      
      public function get metadataInfo() : Vector.<Metadata>
      {
         return this._metadataInfo;
      }
      
      as3commons_bytecode function setMetadataInfo(param1:Vector.<Metadata>) : void
      {
         this._metadataInfo = param1;
      }
      
      public function get methodInfo() : Vector.<org.as3commons.bytecode.abc.MethodInfo>
      {
         return this._methodInfo;
      }
      
      as3commons_bytecode function setMethodInfo(param1:Vector.<org.as3commons.bytecode.abc.MethodInfo>) : void
      {
         this._methodInfo = param1;
      }
      
      public function get instanceInfo() : Vector.<org.as3commons.bytecode.abc.InstanceInfo>
      {
         return this._instanceInfo;
      }
      
      as3commons_bytecode function setInstanceInfo(param1:Vector.<org.as3commons.bytecode.abc.InstanceInfo>) : void
      {
         this._instanceInfo = param1;
      }
      
      public function get classInfo() : Vector.<ClassInfo>
      {
         return this.constantPool.classInfo;
      }
      
      as3commons_bytecode function setClassInfo(param1:Array) : void
      {
         this.constantPool.as3commons_bytecode::setClassInfo(param1);
      }
      
      public function get scriptInfo() : Vector.<org.as3commons.bytecode.abc.ScriptInfo>
      {
         return this._scriptInfo;
      }
      
      as3commons_bytecode function setScriptInfo(param1:Vector.<org.as3commons.bytecode.abc.ScriptInfo>) : void
      {
         this._scriptInfo = param1;
      }
      
      public function get methodBodies() : Vector.<org.as3commons.bytecode.abc.MethodBody>
      {
         return this._methodBodies;
      }
      
      as3commons_bytecode function setMethodBodies(param1:Vector.<org.as3commons.bytecode.abc.MethodBody>) : void
      {
         this._methodBodies = param1;
      }
      
      protected function addCollection(param1:Function, param2:*) : void
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            param1(_loc3_);
         }
      }
      
      public function hasClass(param1:String) : Boolean
      {
         var _loc2_:org.as3commons.bytecode.abc.InstanceInfo = null;
         for each(_loc2_ in this.instanceInfo)
         {
            if(_loc2_.classMultiname.fullName == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function toString() : String
      {
         var _loc1_:Array = [this.constantPool,TOSTRING_TEMPLATE,TAB_CHAR + this._methodInfo.join(NL_LF_CHARS),this.metadataInfo.join(NEWLINE_CHAR),this._instanceInfo.join(NEWLINE_CHAR),this.constantPool.classInfo.join(NEWLINE_CHAR),this._scriptInfo.join(NEWLINE_CHAR),this._methodBodies.join(NEWLINE_CHAR)];
         return _loc1_.join(NEWLINE_CHAR);
      }
   }
}
