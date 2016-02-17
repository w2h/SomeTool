package com.netease.protobuf.fieldDescriptors
{
   import com.netease.protobuf.FieldDescriptor;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   
   public final class FieldDescriptor$TYPE_MESSAGE extends FieldDescriptor
   {
       
      public var messageUnion:Object;
      
      public function FieldDescriptor$TYPE_MESSAGE(param1:String, param2:String, param3:uint, param4:Object)
      {
         super();
         this.fullName = param1;
         this._name = param2;
         this.tag = param3;
         this.messageUnion = param4;
      }
      
      override public function get type() : Class
      {
         return this.messageUnion as Class || Class(this.messageUnion = this.messageUnion());
      }
      
      override public function readSingleField(param1:IDataInput) : *
      {
         return ReadUtils.read$TYPE_MESSAGE(param1,new this.type());
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
