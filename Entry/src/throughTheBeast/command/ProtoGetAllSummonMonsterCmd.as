package throughTheBeast.command
{
   import com.tencent.morefun.framework.base.Command;
   import serverProto.summonMonster.ProtoGetSummonMonsterResponse;
   import def.PluginDef;
   
   public class ProtoGetAllSummonMonsterCmd extends Command
   {
       
      public var status:int = -1;
      
      public var result:ProtoGetSummonMonsterResponse;
      
      public function ProtoGetAllSummonMonsterCmd(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
