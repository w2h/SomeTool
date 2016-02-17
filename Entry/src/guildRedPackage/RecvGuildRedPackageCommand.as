package guildRedPackage
{
   import def.PluginDef;
   
   public class RecvGuildRedPackageCommand extends GuildRedPackageCommand
   {
       
      public var redPackageId:uint;
      
      public function RecvGuildRedPackageCommand(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.OPERATING_ACTIVITY;
      }
   }
}
