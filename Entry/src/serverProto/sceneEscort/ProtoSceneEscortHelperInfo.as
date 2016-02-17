package serverProto.sceneEscort
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerBaseInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSceneEscortHelperInfo extends Message
   {
      
      public static const BASE_SHOW_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.sceneEscort.ProtoSceneEscortHelperInfo.base_show_info","baseShowInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerBaseInfo);
      
      public static const FORMATION_NINJA:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoSceneEscortHelperInfo.formation_ninja","formationNinja",2 << 3 | WireType.VARINT);
      
      public static const FRIEND_DEGREE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoSceneEscortHelperInfo.friend_degree_level","friendDegreeLevel",3 << 3 | WireType.VARINT);
      
      public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.sceneEscort.ProtoSceneEscortHelperInfo.status","status",4 << 3 | WireType.VARINT,ProtoSceneEscortHelperApplyStatus);
       
      private var base_show_info$field:ProtoPlayerBaseInfo;
      
      [ArrayElementType("int")]
      public var formationNinja:Array;
      
      private var friend_degree_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var status$field:int;
      
      public function ProtoSceneEscortHelperInfo()
      {
         this.formationNinja = [];
         super();
      }
      
      public function clearBaseShowInfo() : void
      {
         this.base_show_info$field = null;
      }
      
      public function get hasBaseShowInfo() : Boolean
      {
         return this.base_show_info$field != null;
      }
      
      public function set baseShowInfo(param1:ProtoPlayerBaseInfo) : void
      {
         this.base_show_info$field = param1;
      }
      
      public function get baseShowInfo() : ProtoPlayerBaseInfo
      {
         return this.base_show_info$field;
      }
      
      public function clearFriendDegreeLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.friend_degree_level$field = new int();
      }
      
      public function get hasFriendDegreeLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set friendDegreeLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.friend_degree_level$field = param1;
      }
      
      public function get friendDegreeLevel() : int
      {
         return this.friend_degree_level$field;
      }
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.status$field = new int();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set status(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.status$field = param1;
      }
      
      public function get status() : int
      {
         return this.status$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasBaseShowInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_show_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.formationNinja.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.formationNinja[_loc2_]);
            _loc2_++;
         }
         if(this.hasFriendDegreeLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.friend_degree_level$field);
         }
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_ENUM(param1,this.status$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
