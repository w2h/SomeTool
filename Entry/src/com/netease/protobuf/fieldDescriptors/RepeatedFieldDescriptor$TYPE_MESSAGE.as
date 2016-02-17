package com.netease.protobuf.fieldDescriptors
{
   import com.netease.protobuf.RepeatedFieldDescriptor;
   import com.netease.protobuf.WireType;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   
   public final class RepeatedFieldDescriptor$TYPE_MESSAGE extends RepeatedFieldDescriptor
   {
       
      public var messageUnion:Object;
      
      public function RepeatedFieldDescriptor$TYPE_MESSAGE(param1:String, param2:String, param3:uint, param4:Object)
      {
         super();
         this.fullName = param1;
         this._name = param2;
         this.tag = param3;
         this.messageUnion = param4;
      }
      
      override public function get nonPackedWireType() : int
      {
         return WireType.LENGTH_DELIMITED;
      }
      
      override public function get type() : Class
      {
         return Array;
      }
      
      override public function get elementType() : Class
      {
         return this.messageUnion as Class || Class(this.messageUnion = this.messageUnion());
      }
      
      override public function readSingleField(param1:IDataInput) : *
      {
         return ReadUtils.read$TYPE_MESSAGE(param1,new this.elementType());
      }
      
      override public function writeSingleField(param1:WritingBuffer, param2:*) : void
      {
         WriteUtils.write$TYPE_MESSAGE(param1,param2);
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this.messageUnion = null;
      }
   }
}
