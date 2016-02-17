package npc.commands
{
   import npc.cfgs.BaseNpcCfg;
   
   public class GetNpcInSceneCommand extends BaseNpcCommand
   {
       
      public var npcList:Vector.<BaseNpcCfg>;
      
      public function GetNpcInSceneCommand()
      {
         super();
      }
   }
}
