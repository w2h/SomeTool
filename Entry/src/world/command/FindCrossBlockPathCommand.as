package world.command
{
   import world.commands.BaseWorldCommand;
   import npc.cfgs.BaseNpcCfg;
   
   public class FindCrossBlockPathCommand extends BaseWorldCommand
   {
       
      public var portalCfgList:Vector.<BaseNpcCfg>;
      
      public var ropeCfgList:Vector.<BaseNpcCfg>;
      
      public var startBlockId:int;
      
      public var endBlockId:int;
      
      public var blockPath:Array;
      
      public function FindCrossBlockPathCommand(param1:Vector.<BaseNpcCfg>, param2:Vector.<BaseNpcCfg>, param3:int, param4:int)
      {
         super();
         this.portalCfgList = param1;
         this.ropeCfgList = param2;
         this.startBlockId = param3;
         this.endBlockId = param4;
      }
   }
}
