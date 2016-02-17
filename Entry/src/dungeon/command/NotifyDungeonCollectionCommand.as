package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class NotifyDungeonCollectionCommand extends Command
   {
       
      public var collectionArr:Array;
      
      public var add:Boolean;
      
      public function NotifyDungeonCollectionCommand(param1:Array, param2:Boolean = false)
      {
         super();
         this.collectionArr = param1;
         this.add = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
