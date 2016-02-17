package org.as3commons.bytecode.io
{
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.abc.IConstantPool;
   import org.as3commons.bytecode.abc.LNamespace;
   import org.as3commons.bytecode.abc.NamespaceSet;
   import org.as3commons.bytecode.abc.QualifiedName;
   import org.as3commons.bytecode.abc.BaseMultiname;
   import org.as3commons.bytecode.abc.enum.NamespaceKind;
   import org.as3commons.bytecode.abc.enum.MultinameKind;
   import org.as3commons.bytecode.abc.RuntimeQualifiedName;
   import org.as3commons.bytecode.abc.RuntimeQualifiedNameL;
   import org.as3commons.bytecode.abc.Multiname;
   import org.as3commons.bytecode.abc.MultinameL;
   import org.as3commons.bytecode.abc.MultinameG;
   import org.as3commons.bytecode.abc.AbcFile;
   import org.as3commons.bytecode.abc.TraitInfo;
   
   public class AbstractAbcDeserializer implements IAbcDeserializer
   {
      
      private static const UTF8_BAD_PREFIX:String = "UTF8_BAD";
       
      private var _illegalCount:uint = 0;
      
      protected var _byteStream:ByteArray;
      
      private var _constantPoolEndPosition:uint = 0;
      
      public function AbstractAbcDeserializer(param1:ByteArray = null)
      {
         super();
         this._byteStream = param1;
      }
      
      public function get byteStream() : ByteArray
      {
         return this._byteStream;
      }
      
      public function set byteStream(param1:ByteArray) : void
      {
         this._byteStream = param1;
      }
      
      public function get methodBodyExtractionMethod() : MethodBodyExtractionKind
      {
         return null;
      }
      
      public function set methodBodyExtractionMethod(param1:MethodBodyExtractionKind) : void
      {
      }
      
      public function get constantPoolEndPosition() : uint
      {
         return this._constantPoolEndPosition;
      }
      
      public function deserializeConstantPool(param1:IConstantPool) : IConstantPool
      {
         var _loc2_:* = 0;
         var _loc3_:uint = 0;
         var _loc4_:* = 0;
         var _loc5_:uint = 0;
         var _loc13_:String = null;
         var _loc14_:* = 0;
         var _loc15_:Array = null;
         var _loc16_:* = 0;
         var _loc17_:String = null;
         var _loc18_:LNamespace = null;
         var _loc19_:NamespaceSet = null;
         var _loc20_:QualifiedName = null;
         var _loc21_:uint = 0;
         var _loc22_:Array = null;
         var _loc6_:Vector.<int> = param1.integerPool;
         var _loc7_:Vector.<uint> = param1.uintPool;
         var _loc8_:Vector.<Number> = param1.doublePool;
         var _loc9_:Vector.<String> = param1.stringPool;
         var _loc10_:Vector.<LNamespace> = param1.namespacePool;
         var _loc11_:Vector.<NamespaceSet> = param1.namespaceSetPool;
         var _loc12_:Vector.<BaseMultiname> = param1.multinamePool;
         _loc4_ = this._byteStream.readUnsignedByte();
         if(_loc4_ & 128)
         {
            _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
            if(_loc4_ & 16384)
            {
               _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
               if(_loc4_ & 2097152)
               {
                  _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                  if(_loc4_ & 268435456)
                  {
                     _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                  }
               }
            }
         }
         _loc3_ = 0;
         _loc2_ = --_loc4_;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this._byteStream.readUnsignedByte();
            if(_loc4_ & 128)
            {
               _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
               if(_loc4_ & 16384)
               {
                  _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                  if(_loc4_ & 2097152)
                  {
                     _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                     if(_loc4_ & 268435456)
                     {
                        _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                     }
                  }
               }
            }
            _loc6_[++_loc3_] = _loc4_;
         }
         _loc4_ = this._byteStream.readUnsignedByte();
         if(_loc4_ & 128)
         {
            _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
            if(_loc4_ & 16384)
            {
               _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
               if(_loc4_ & 2097152)
               {
                  _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                  if(_loc4_ & 268435456)
                  {
                     _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                  }
               }
            }
         }
         _loc3_ = 0;
         _loc2_ = --_loc4_;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this._byteStream.readUnsignedByte();
            if(_loc4_ & 128)
            {
               _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
               if(_loc4_ & 16384)
               {
                  _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                  if(_loc4_ & 2097152)
                  {
                     _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                     if(_loc4_ & 268435456)
                     {
                        _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                     }
                  }
               }
            }
            _loc7_[++_loc3_] = _loc4_;
         }
         _loc4_ = this._byteStream.readUnsignedByte();
         if(_loc4_ & 128)
         {
            _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
            if(_loc4_ & 16384)
            {
               _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
               if(_loc4_ & 2097152)
               {
                  _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                  if(_loc4_ & 268435456)
                  {
                     _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                  }
               }
            }
         }
         _loc3_ = 0;
         _loc2_ = --_loc4_;
         while(_loc3_ < _loc2_)
         {
            _loc8_[++_loc3_] = this._byteStream.readDouble();
         }
         _loc4_ = this._byteStream.readUnsignedByte();
         if(_loc4_ & 128)
         {
            _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
            if(_loc4_ & 16384)
            {
               _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
               if(_loc4_ & 2097152)
               {
                  _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                  if(_loc4_ & 268435456)
                  {
                     _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                  }
               }
            }
         }
         _loc3_ = 0;
         _loc2_ = --_loc4_;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this._byteStream.readUnsignedByte();
            if(_loc4_ & 128)
            {
               _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
               if(_loc4_ & 16384)
               {
                  _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                  if(_loc4_ & 2097152)
                  {
                     _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                     if(_loc4_ & 268435456)
                     {
                        _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                     }
                  }
               }
            }
            _loc9_[++_loc3_] = this._byteStream.readUTFBytes(_loc4_);
         }
         _loc4_ = this._byteStream.readUnsignedByte();
         if(_loc4_ & 128)
         {
            _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
            if(_loc4_ & 16384)
            {
               _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
               if(_loc4_ & 2097152)
               {
                  _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                  if(_loc4_ & 268435456)
                  {
                     _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                  }
               }
            }
         }
         _loc3_ = 0;
         _loc2_ = --_loc4_;
         while(_loc3_ < _loc2_)
         {
            _loc5_ = 255 & this._byteStream[this._byteStream.position++];
            _loc4_ = this._byteStream.readUnsignedByte();
            if(_loc4_ & 128)
            {
               _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
               if(_loc4_ & 16384)
               {
                  _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                  if(_loc4_ & 2097152)
                  {
                     _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                     if(_loc4_ & 268435456)
                     {
                        _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                     }
                  }
               }
            }
            _loc10_[++_loc3_] = new LNamespace(NamespaceKind.determineKind(_loc5_),_loc9_[_loc4_]);
         }
         _loc4_ = this._byteStream.readUnsignedByte();
         if(_loc4_ & 128)
         {
            _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
            if(_loc4_ & 16384)
            {
               _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
               if(_loc4_ & 2097152)
               {
                  _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                  if(_loc4_ & 268435456)
                  {
                     _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                  }
               }
            }
         }
         _loc3_ = 0;
         _loc2_ = --_loc4_;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this._byteStream.readUnsignedByte();
            if(_loc4_ & 128)
            {
               _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
               if(_loc4_ & 16384)
               {
                  _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                  if(_loc4_ & 2097152)
                  {
                     _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                     if(_loc4_ & 268435456)
                     {
                        _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                     }
                  }
               }
            }
            _loc14_ = _loc4_;
            _loc15_ = [];
            _loc16_ = _loc15_.length - 1;
            while(--_loc14_ - -1)
            {
               _loc4_ = this._byteStream.readUnsignedByte();
               if(_loc4_ & 128)
               {
                  _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
                  if(_loc4_ & 16384)
                  {
                     _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                     if(_loc4_ & 2097152)
                     {
                        _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                        if(_loc4_ & 268435456)
                        {
                           _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                        }
                     }
                  }
               }
               _loc15_[++_loc16_] = _loc10_[_loc4_];
            }
            _loc11_[++_loc3_] = new NamespaceSet(_loc15_);
         }
         _loc4_ = this._byteStream.readUnsignedByte();
         if(_loc4_ & 128)
         {
            _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
            if(_loc4_ & 16384)
            {
               _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
               if(_loc4_ & 2097152)
               {
                  _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                  if(_loc4_ & 268435456)
                  {
                     _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                  }
               }
            }
         }
         _loc3_ = 0;
         _loc2_ = --_loc4_;
         while(_loc3_ < _loc2_)
         {
            _loc3_++;
            _loc5_ = 255 & this._byteStream[this._byteStream.position++];
            if(_loc5_ == 7 || _loc5_ == 13)
            {
               _loc4_ = this._byteStream.readUnsignedByte();
               if(_loc4_ & 128)
               {
                  _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
                  if(_loc4_ & 16384)
                  {
                     _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                     if(_loc4_ & 2097152)
                     {
                        _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                        if(_loc4_ & 268435456)
                        {
                           _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                        }
                     }
                  }
               }
               _loc18_ = _loc10_[_loc4_];
               _loc4_ = this._byteStream.readUnsignedByte();
               if(_loc4_ & 128)
               {
                  _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
                  if(_loc4_ & 16384)
                  {
                     _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                     if(_loc4_ & 2097152)
                     {
                        _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                        if(_loc4_ & 268435456)
                        {
                           _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                        }
                     }
                  }
               }
               _loc12_[_loc3_] = new QualifiedName(_loc9_[_loc4_],_loc18_,_loc5_ == 7?MultinameKind.QNAME:MultinameKind.QNAME_A);
            }
            else if(_loc5_ == 15 || _loc5_ == 16)
            {
               _loc4_ = this._byteStream.readUnsignedByte();
               if(_loc4_ & 128)
               {
                  _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
                  if(_loc4_ & 16384)
                  {
                     _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                     if(_loc4_ & 2097152)
                     {
                        _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                        if(_loc4_ & 268435456)
                        {
                           _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                        }
                     }
                  }
               }
               _loc12_[_loc3_] = new RuntimeQualifiedName(_loc9_[_loc4_],_loc5_ == 15?MultinameKind.RTQNAME:MultinameKind.RTQNAME_A);
            }
            else if(_loc5_ == 17 || _loc5_ == 18)
            {
               _loc12_[_loc3_] = new RuntimeQualifiedNameL(_loc5_ == 17?MultinameKind.RTQNAME_L:MultinameKind.RTQNAME_LA);
            }
            else if(_loc5_ == 9 || _loc5_ == 14)
            {
               _loc4_ = this._byteStream.readUnsignedByte();
               if(_loc4_ & 128)
               {
                  _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
                  if(_loc4_ & 16384)
                  {
                     _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                     if(_loc4_ & 2097152)
                     {
                        _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                        if(_loc4_ & 268435456)
                        {
                           _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                        }
                     }
                  }
               }
               _loc17_ = _loc9_[_loc4_];
               _loc4_ = this._byteStream.readUnsignedByte();
               if(_loc4_ & 128)
               {
                  _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
                  if(_loc4_ & 16384)
                  {
                     _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                     if(_loc4_ & 2097152)
                     {
                        _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                        if(_loc4_ & 268435456)
                        {
                           _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                        }
                     }
                  }
               }
               _loc19_ = _loc11_[_loc4_];
               _loc12_[_loc3_] = new Multiname(_loc17_,_loc19_,_loc5_ == 9?MultinameKind.MULTINAME:MultinameKind.MULTINAME_A);
            }
            else if(_loc5_ == 27 || _loc5_ == 28)
            {
               _loc4_ = this._byteStream.readUnsignedByte();
               if(_loc4_ & 128)
               {
                  _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
                  if(_loc4_ & 16384)
                  {
                     _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                     if(_loc4_ & 2097152)
                     {
                        _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                        if(_loc4_ & 268435456)
                        {
                           _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                        }
                     }
                  }
               }
               _loc12_[_loc3_] = new MultinameL(_loc11_[_loc4_],_loc5_ == 27?MultinameKind.MULTINAME_L:MultinameKind.MULTINAME_LA);
            }
            else if(_loc5_ == 29)
            {
               _loc4_ = this._byteStream.readUnsignedByte();
               if(_loc4_ & 128)
               {
                  _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
                  if(_loc4_ & 16384)
                  {
                     _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                     if(_loc4_ & 2097152)
                     {
                        _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                        if(_loc4_ & 268435456)
                        {
                           _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                        }
                     }
                  }
               }
               _loc20_ = _loc12_[_loc4_] as QualifiedName;
               _loc4_ = this._byteStream.readUnsignedByte();
               if(_loc4_ & 128)
               {
                  _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
                  if(_loc4_ & 16384)
                  {
                     _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                     if(_loc4_ & 2097152)
                     {
                        _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                        if(_loc4_ & 268435456)
                        {
                           _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                        }
                     }
                  }
               }
               _loc21_ = _loc4_;
               _loc22_ = [];
               _loc16_ = 0;
               while(_loc21_--)
               {
                  _loc4_ = this._byteStream.readUnsignedByte();
                  if(_loc4_ & 128)
                  {
                     _loc4_ = _loc4_ & 127 | this._byteStream.readUnsignedByte() << 7;
                     if(_loc4_ & 16384)
                     {
                        _loc4_ = _loc4_ & 16383 | this._byteStream.readUnsignedByte() << 14;
                        if(_loc4_ & 2097152)
                        {
                           _loc4_ = _loc4_ & 2097151 | this._byteStream.readUnsignedByte() << 21;
                           if(_loc4_ & 268435456)
                           {
                              _loc4_ = _loc4_ & 268435455 | this._byteStream.readUnsignedByte() << 28;
                           }
                        }
                     }
                  }
                  _loc22_[_loc16_++] = _loc12_[_loc4_];
               }
               _loc12_[_loc3_] = new MultinameG(_loc20_,_loc22_,MultinameKind.GENERIC);
            }
         }
         this._constantPoolEndPosition = this._byteStream.position;
         return param1;
      }
      
      public function deserialize(param1:int = 0) : AbcFile
      {
         return null;
      }
      
      public function deserializeClassInfos(param1:AbcFile, param2:IConstantPool, param3:int) : void
      {
      }
      
      public function deserializeMethodBodies(param1:AbcFile, param2:IConstantPool) : void
      {
      }
      
      public function deserializeScriptInfos(param1:AbcFile) : void
      {
      }
      
      public function deserializeInstanceInfo(param1:AbcFile, param2:IConstantPool) : int
      {
         return 0;
      }
      
      public function deserializeMetadata(param1:AbcFile, param2:IConstantPool) : void
      {
      }
      
      public function deserializeMethodInfos(param1:AbcFile, param2:IConstantPool) : void
      {
      }
      
      public function deserializeTraitsInfo(param1:AbcFile, param2:ByteArray, param3:Boolean = false, param4:String = "") : Vector.<TraitInfo>
      {
         return null;
      }
   }
}
