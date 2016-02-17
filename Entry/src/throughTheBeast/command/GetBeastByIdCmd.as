package throughTheBeast.command
{
   import com.tencent.morefun.framework.base.Command;
   import throughTheBeast.data.BeastData;
   import def.PluginDef;
   
   public class GetBeastByIdCmd extends Command
   {
       
      public var m_beastId:int;
      
      public var status:int;
      
      public var beastInfo:BeastData;
      
      public function GetBeastByIdCmd(param1:int)
      {
         this.m_beastId = param1;
         super(2,true);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
