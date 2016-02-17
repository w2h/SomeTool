package serverProto.zoneReport
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGlobal extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.zoneReport.ProtoGlobal.type","type",1 << 3 | WireType.VARINT);
      
      public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.zoneReport.ProtoGlobal.uin","uin",2 << 3 | WireType.VARINT);
      
      public static const REPORT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.zoneReport.ProtoGlobal.report","report",3 << 3 | WireType.LENGTH_DELIMITED,ProtoZoneInfoReport);
      
      public static const INFO_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.zoneReport.ProtoGlobal.info_list","infoList",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerZoneInfo);
       
      public var type:uint;
      
      public var uin:uint;
      
      private var report$field:serverProto.zoneReport.ProtoZoneInfoReport;
      
      private var info_list$field:serverProto.zoneReport.ProtoPlayerZoneInfo;
      
      public function ProtoGlobal()
      {
         super();
      }
      
      public function clearReport() : void
      {
         this.report$field = null;
      }
      
      public function get hasReport() : Boolean
      {
         return this.report$field != null;
      }
      
      public function set report(param1:serverProto.zoneReport.ProtoZoneInfoReport) : void
      {
         this.report$field = param1;
      }
      
      public function get report() : serverProto.zoneReport.ProtoZoneInfoReport
      {
         return this.report$field;
      }
      
      public function clearInfoList() : void
      {
         this.info_list$field = null;
      }
      
      public function get hasInfoList() : Boolean
      {
         return this.info_list$field != null;
      }
      
      public function set infoList(param1:serverProto.zoneReport.ProtoPlayerZoneInfo) : void
      {
         this.info_list$field = param1;
      }
      
      public function get infoList() : serverProto.zoneReport.ProtoPlayerZoneInfo
      {
         return this.info_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.type);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.uin);
         if(this.hasReport)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.report$field);
         }
         if(this.hasInfoList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.info_list$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
