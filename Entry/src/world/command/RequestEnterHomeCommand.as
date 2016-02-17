package world.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestEnterHomeCommand extends Command
   {
       
      public var type:int;
      
      public var sceneId:int;
      
      public var npcId:int;
      
      public var useListId:Boolean;
      
      public function RequestEnterHomeCommand(param1:int)
      {
         super();
         this.type = param1;
         this.sceneId = -1;
         this.npcId = -1;
         this.useListId = false;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD;
      }
   }
}
