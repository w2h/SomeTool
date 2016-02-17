package equipment.cmd
{
   import RSModel.command.RSModelCommand;
   import com.netease.protobuf.UInt64;
   import serverProto.bag.ProtoItemIndex;
   
   public class StoneOperCommand extends RSModelCommand
   {
       
      public var cmd_id:int = 1;
      
      public var equipment_sequence:UInt64;
      
      public var stone_index:ProtoItemIndex;
      
      public var stone_inlay_index:int;
      
      public var obj_type:int;
      
      public function StoneOperCommand()
      {
         super();
      }
   }
}
