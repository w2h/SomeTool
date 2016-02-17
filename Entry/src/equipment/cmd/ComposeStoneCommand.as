package equipment.cmd
{
   import RSModel.command.RSModelCommand;
   import com.netease.protobuf.UInt64;
   import bag.data.GemItemData;
   
   public class ComposeStoneCommand extends RSModelCommand
   {
       
      public var equipment_sequence:UInt64;
      
      public var mainStoneIndex:uint;
      
      public var materialStones:Vector.<GemItemData>;
      
      public var operateObjType:int;
      
      public function ComposeStoneCommand()
      {
         super();
      }
   }
}
