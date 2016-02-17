package serverProto.innerActivity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoInnerActivityToolsReq extends Message
   {
      
      public static const ACTIVITY_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.activity_id","activityId",1 << 3 | WireType.VARINT);
      
      public static const CMD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.cmd","cmd",2 << 3 | WireType.VARINT);
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.type","type",3 << 3 | WireType.VARINT);
      
      public static const DATA1:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.data1","data1",4 << 3 | WireType.VARINT);
      
      public static const DATA2:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.data2","data2",5 << 3 | WireType.VARINT);
      
      public static const DATA3:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.data3","data3",6 << 3 | WireType.VARINT);
      
      public static const XML_DATA:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerActivity.ProtoInnerActivityToolsReq.xml_data","xmlData",7 << 3 | WireType.LENGTH_DELIMITED);
       
      private var activity_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var cmd$field:uint;
      
      private var type$field:uint;
      
      private var data1$field:int;
      
      private var data2$field:int;
      
      private var data3$field:int;
      
      private var xml_data$field:String;
      
      public function ProtoInnerActivityToolsReq()
      {
         super();
      }
      
      public function clearActivityId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.activity_id$field = new uint();
      }
      
      public function get hasActivityId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set activityId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.activity_id$field = param1;
      }
      
      public function get activityId() : uint
      {
         return this.activity_id$field;
      }
      
      public function clearCmd() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.cmd$field = new uint();
      }
      
      public function get hasCmd() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set cmd(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.cmd$field = param1;
      }
      
      public function get cmd() : uint
      {
         return this.cmd$field;
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.type$field = new uint();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set type(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.type$field = param1;
      }
      
      public function get type() : uint
      {
         return this.type$field;
      }
      
      public function clearData1() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.data1$field = new int();
      }
      
      public function get hasData1() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set data1(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.data1$field = param1;
      }
      
      public function get data1() : int
      {
         return this.data1$field;
      }
      
      public function clearData2() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.data2$field = new int();
      }
      
      public function get hasData2() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set data2(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.data2$field = param1;
      }
      
      public function get data2() : int
      {
         return this.data2$field;
      }
      
      public function clearData3() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.data3$field = new int();
      }
      
      public function get hasData3() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set data3(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.data3$field = param1;
      }
      
      public function get data3() : int
      {
         return this.data3$field;
      }
      
      public function clearXmlData() : void
      {
         this.xml_data$field = null;
      }
      
      public function get hasXmlData() : Boolean
      {
         return this.xml_data$field != null;
      }
      
      public function set xmlData(param1:String) : void
      {
         this.xml_data$field = param1;
      }
      
      public function get xmlData() : String
      {
         return this.xml_data$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasActivityId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.activity_id$field);
         }
         if(this.hasCmd)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.cmd$field);
         }
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.type$field);
         }
         if(this.hasData1)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.data1$field);
         }
         if(this.hasData2)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.data2$field);
         }
         if(this.hasData3)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.data3$field);
         }
         if(this.hasXmlData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_STRING(param1,this.xml_data$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
