package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.IEquals;
   import org.as3commons.lang.util.CloneUtils;
   
   public final class NamespaceSet implements ICloneable, IEquals
   {
      
      public static const PUBLIC_NSSET:org.as3commons.bytecode.abc.NamespaceSet = new org.as3commons.bytecode.abc.NamespaceSet([LNamespace.PUBLIC]);
       
      private var _namespaces:Array;
      
      public function NamespaceSet(param1:Array = null)
      {
         super();
         this._namespaces = param1?param1:[];
      }
      
      public function clone() : *
      {
         var _loc1_:org.as3commons.bytecode.abc.NamespaceSet = new org.as3commons.bytecode.abc.NamespaceSet(CloneUtils.cloneList(this._namespaces));
      }
      
      public function get namespaces() : Array
      {
         return this._namespaces;
      }
      
      public function addNamespace(param1:LNamespace) : void
      {
         this._namespaces[this._namespaces.length] = param1;
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc4_:* = 0;
         var _loc2_:org.as3commons.bytecode.abc.NamespaceSet = NamespaceSet(param1);
         var _loc3_:* = this.namespaces.length == _loc2_.namespaces.length;
         if(_loc3_)
         {
            _loc4_ = 0;
            while(_loc4_ < this.namespaces.length)
            {
               if(!this.namespaces[_loc4_].equals(_loc2_.namespaces[_loc4_]))
               {
                  _loc3_ = false;
                  break;
               }
               _loc4_++;
            }
         }
         return _loc3_;
      }
      
      public function toString() : String
      {
         return "[" + this.namespaces.join(", ") + "]";
      }
   }
}
