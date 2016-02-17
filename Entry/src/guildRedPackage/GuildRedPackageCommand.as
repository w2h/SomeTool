package guildRedPackage
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class GuildRedPackageCommand extends Command
   {
       
      public var rechargeMoney:int;
      
      public var beginTime:uint;
      
      public var endTime:uint;
      
      public var returnMoney:int;
      
      public var sendMoney:int;
      
      public var sendedMoney:int;
      
      public var recvMoney:int;
      
      public var money:int;
      
      public function GuildRedPackageCommand(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.OPERATING_ACTIVITY;
      }
   }
}
