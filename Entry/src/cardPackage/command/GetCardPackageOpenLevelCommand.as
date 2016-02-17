package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class GetCardPackageOpenLevelCommand extends Command
   {
       
      public var id:int;
      
      public var openLevel:int;
      
      public var isOpen:Boolean;
      
      public function GetCardPackageOpenLevelCommand(param1:int)
      {
         super();
         this.id = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CARD_PACKAGE;
      }
   }
}
