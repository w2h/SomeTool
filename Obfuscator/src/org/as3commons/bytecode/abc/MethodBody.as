package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.IEquals;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import org.as3commons.lang.StringUtils;
   import org.as3commons.bytecode.util.AbcFileUtil;
   import org.as3commons.bytecode.util.AbcSpec;
   import org.as3commons.bytecode.abc.enum.Opcode;
   
   public final class MethodBody implements ICloneable, IEquals
   {
       
      public var opcodes:Vector.<org.as3commons.bytecode.abc.Op>;
      
      public var rawOpcodes:ByteArray;
      
      public var methodSignature:org.as3commons.bytecode.abc.MethodInfo;
      
      public var maxStack:int = 1;
      
      public var localCount:int = 1;
      
      public var initScopeDepth:int = 1;
      
      public var maxScopeDepth:int = 1;
      
      public var exceptionInfos:Vector.<org.as3commons.bytecode.abc.ExceptionInfo>;
      
      public var traits:Vector.<org.as3commons.bytecode.abc.TraitInfo>;
      
      public var jumpTargets:Vector.<org.as3commons.bytecode.abc.JumpTargetData>;
      
      public var opcodeBaseLocations:Dictionary;
      
      public function MethodBody()
      {
         super();
         this.opcodes = new Vector.<org.as3commons.bytecode.abc.Op>();
         this.exceptionInfos = new Vector.<org.as3commons.bytecode.abc.ExceptionInfo>();
         this.traits = new Vector.<org.as3commons.bytecode.abc.TraitInfo>();
      }
      
      public function addExceptionInfo(param1:org.as3commons.bytecode.abc.ExceptionInfo) : uint
      {
         var _loc2_:int = this.exceptionInfos.indexOf(param1);
         if(_loc2_ < 0)
         {
            _loc2_ = this.exceptionInfos.push(param1) - 1;
         }
         return _loc2_;
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("\n\t{0}\n\t{\t\n\t\t//maxStack={1}, localCount={2}, initScopeDepth={3}, maxScopeDepth={4}\n\t\t{5}\n\t}\ntraits={6}",this.methodSignature,this.maxStack,this.localCount,this.initScopeDepth,this.maxScopeDepth,this.opcodes.join("\n\t\t"),this.traits.length == 0?"(no traits)":"[\n\t" + this.traits + "]\n");
      }
      
      public function clone() : *
      {
         var _loc2_:org.as3commons.bytecode.abc.Op = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:org.as3commons.bytecode.abc.Op = null;
         var _loc6_:org.as3commons.bytecode.abc.JumpTargetData = null;
         var _loc7_:org.as3commons.bytecode.abc.JumpTargetData = null;
         var _loc1_:MethodBody = new MethodBody();
         _loc1_.opcodes = AbcFileUtil.cloneVector(this.opcodes);
         if(this.rawOpcodes != null)
         {
            _loc1_.rawOpcodes = AbcSpec.newByteArray();
            _loc1_.rawOpcodes.writeBytes(this.rawOpcodes);
            _loc1_.rawOpcodes.position = 0;
         }
         _loc1_.maxStack = this.maxStack;
         _loc1_.localCount = this.localCount;
         _loc1_.initScopeDepth = this.initScopeDepth;
         _loc1_.maxScopeDepth = this.maxScopeDepth;
         _loc1_.jumpTargets = new Vector.<org.as3commons.bytecode.abc.JumpTargetData>();
         for each(_loc2_ in _loc1_.opcodes)
         {
            if(_loc2_.opcode === Opcode.newcatch)
            {
               _loc1_.exceptionInfos[_loc1_.exceptionInfos.length] = _loc2_.parameters[0];
            }
         }
         for each(_loc7_ in this.jumpTargets)
         {
            _loc3_ = this.opcodes.indexOf(_loc7_.jumpOpcode);
            _loc4_ = this.opcodes.indexOf(_loc7_.targetOpcode);
            _loc5_ = _loc4_ == -1?Opcode.END_OF_BODY.op():_loc1_.opcodes[_loc4_];
            _loc6_ = new org.as3commons.bytecode.abc.JumpTargetData(_loc1_.opcodes[_loc3_],_loc5_);
            _loc1_.jumpTargets[_loc1_.jumpTargets.length] = _loc6_;
            for each(_loc2_ in _loc7_.extraOpcodes)
            {
               _loc6_.addTarget(_loc1_.opcodes[this.opcodes.indexOf(_loc2_)]);
            }
         }
         _loc1_.traits = AbcFileUtil.cloneVector(this.traits);
         return _loc1_;
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:org.as3commons.bytecode.abc.TraitInfo = null;
         var _loc6_:org.as3commons.bytecode.abc.TraitInfo = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:org.as3commons.bytecode.abc.JumpTargetData = null;
         var _loc10_:org.as3commons.bytecode.abc.JumpTargetData = null;
         var _loc11_:org.as3commons.bytecode.abc.Op = null;
         var _loc12_:org.as3commons.bytecode.abc.Op = null;
         var _loc2_:MethodBody = param1 as MethodBody;
         if(_loc2_ != null)
         {
            if(this.initScopeDepth != _loc2_.initScopeDepth)
            {
               return false;
            }
            if(this.localCount != _loc2_.localCount)
            {
               return false;
            }
            if(this.maxScopeDepth != _loc2_.maxScopeDepth)
            {
               return false;
            }
            if(this.maxStack != _loc2_.maxStack)
            {
               return false;
            }
            if(this.traits.length != _loc2_.traits.length)
            {
               return false;
            }
            _loc3_ = this.traits.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.traits[_loc4_];
               _loc6_ = _loc2_.traits[_loc4_];
               if(!_loc5_.equals(_loc6_))
               {
                  return false;
               }
               _loc4_++;
            }
            if(this.jumpTargets.length != _loc2_.jumpTargets.length)
            {
               return false;
            }
            _loc3_ = this.jumpTargets.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc9_ = this.jumpTargets[_loc4_];
               _loc10_ = _loc2_.jumpTargets[_loc4_];
               if(_loc9_.extraOpcodes != null)
               {
                  if(_loc10_.extraOpcodes == null)
                  {
                     return false;
                  }
                  if(_loc9_.extraOpcodes.length != _loc10_.extraOpcodes.length)
                  {
                     return false;
                  }
                  _loc7_ = _loc9_.extraOpcodes.length;
                  _loc8_ = 0;
                  while(_loc8_ < _loc7_)
                  {
                     _loc11_ = _loc9_.extraOpcodes[_loc8_];
                     _loc12_ = _loc10_.extraOpcodes[_loc8_];
                     if(!_loc11_.equals(_loc12_))
                     {
                        return false;
                     }
                     _loc8_++;
                  }
               }
               _loc4_++;
            }
            _loc3_ = this.opcodes.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc11_ = this.opcodes[_loc4_];
               _loc12_ = _loc2_.opcodes[_loc4_];
               if(!_loc11_.equals(_loc12_))
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
