package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoLimitActivityHotPointRsp extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.id","id",1 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitActivityHotPointRsp.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.begin_time","beginTime",3 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.end_time","endTime",4 << 3 | WireType.VARINT);
      
      public static const TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.type","type",5 << 3 | WireType.VARINT);
      
      public static const SUB_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.sub_type","subType",6 << 3 | WireType.VARINT);
      
      public static const IS_LIGHT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.is_light","isLight",7 << 3 | WireType.VARINT);
      
      public static const PRE_OPENUI:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitActivityHotPointRsp.pre_openui","preOpenui",8 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const OPENUI:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitActivityHotPointRsp.openui","openui",9 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const TITLE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitActivityHotPointRsp.title","title",10 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitActivityHotPointRsp.desc","desc",11 << 3 | WireType.LENGTH_DELIMITED);
       
      public var id:int;
      
      private var name$field:String;
      
      private var begin_time$field:int;
      
      private var hasField$0:uint = 0;
      
      private var end_time$field:int;
      
      private var type$field:int;
      
      private var sub_type$field:int;
      
      private var is_light$field:int;
      
      private var pre_openui$field:String;
      
      private var openui$field:String;
      
      private var title$field:String;
      
      private var desc$field:String;
      
      public function ProtoLimitActivityHotPointRsp()
      {
         super();
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearBeginTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.begin_time$field = new int();
      }
      
      public function get hasBeginTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set beginTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.begin_time$field = param1;
      }
      
      public function get beginTime() : int
      {
         return this.begin_time$field;
      }
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.end_time$field = new int();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set endTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.end_time$field = param1;
      }
      
      public function get endTime() : int
      {
         return this.end_time$field;
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.type$field = new int();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set type(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.type$field = param1;
      }
      
      public function get type() : int
      {
         return this.type$field;
      }
      
      public function clearSubType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.sub_type$field = new int();
      }
      
      public function get hasSubType() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set subType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.sub_type$field = param1;
      }
      
      public function get subType() : int
      {
         return this.sub_type$field;
      }
      
      public function clearIsLight() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.is_light$field = new int();
      }
      
      public function get hasIsLight() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set isLight(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.is_light$field = param1;
      }
      
      public function get isLight() : int
      {
         return this.is_light$field;
      }
      
      public function clearPreOpenui() : void
      {
         this.pre_openui$field = null;
      }
      
      public function get hasPreOpenui() : Boolean
      {
         return this.pre_openui$field != null;
      }
      
      public function set preOpenui(param1:String) : void
      {
         this.pre_openui$field = param1;
      }
      
      public function get preOpenui() : String
      {
         return this.pre_openui$field;
      }
      
      public function clearOpenui() : void
      {
         this.openui$field = null;
      }
      
      public function get hasOpenui() : Boolean
      {
         return this.openui$field != null;
      }
      
      public function set openui(param1:String) : void
      {
         this.openui$field = param1;
      }
      
      public function get openui() : String
      {
         return this.openui$field;
      }
      
      public function clearTitle() : void
      {
         this.title$field = null;
      }
      
      public function get hasTitle() : Boolean
      {
         return this.title$field != null;
      }
      
      public function set title(param1:String) : void
      {
         this.title$field = param1;
      }
      
      public function get title() : String
      {
         return this.title$field;
      }
      
      public function clearDesc() : void
      {
         this.desc$field = null;
      }
      
      public function get hasDesc() : Boolean
      {
         return this.desc$field != null;
      }
      
      public function set desc(param1:String) : void
      {
         this.desc$field = param1;
      }
      
      public function get desc() : String
      {
         return this.desc$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.id);
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.begin_time$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.end_time$field);
         }
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.type$field);
         }
         if(this.hasSubType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.sub_type$field);
         }
         if(this.hasIsLight)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.is_light$field);
         }
         if(this.hasPreOpenui)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_STRING(param1,this.pre_openui$field);
         }
         if(this.hasOpenui)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_STRING(param1,this.openui$field);
         }
         if(this.hasTitle)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_STRING(param1,this.title$field);
         }
         if(this.hasDesc)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_STRING(param1,this.desc$field);
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
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
