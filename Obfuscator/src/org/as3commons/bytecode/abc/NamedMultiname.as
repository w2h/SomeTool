package org.as3commons.bytecode.abc
{
   import org.as3commons.bytecode.abc.enum.MultinameKind;
   
   public class NamedMultiname extends BaseMultiname
   {
       
      private var _name:String;
      
      public function NamedMultiname(param1:MultinameKind, param2:String)
      {
         super(param1);
         this._name = param2;
      }
      
      override public function clone() : *
      {
         return new NamedMultiname(this.kind,this._name);
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      override public function equals(param1:Object) : Boolean
      {
         var _loc2_:* = false;
         if(param1 is NamedMultiname)
         {
            if(NamedMultiname(param1).name == this._name)
            {
               if(super.equals(param1))
               {
                  _loc2_ = true;
               }
            }
         }
         return _loc2_;
      }
   }
}
