package user.command
{
   import flash.display.Sprite;
   import bag.data.ItemData;
   
   public class PickUpDungeonItemsCommand extends BaseUserCommand
   {
       
      public var npc:Sprite;
      
      public var data:Vector.<ItemData>;
      
      public function PickUpDungeonItemsCommand(param1:Sprite, param2:Vector.<ItemData>)
      {
         super();
         this.npc = param1;
         this.data = param2;
      }
   }
}
