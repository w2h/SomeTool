package throughTheBeast.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ProtoChangeCarryBeastsCmd extends Command
   {
       
      public var pos:int = 0;
      
      public var index:int = -1;
      
      public var status:int = -1;
      
      public function ProtoChangeCarryBeastsCmd(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
