package newestActivity.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestAwardRecruitActivityCommand extends Command
   {
       
      public var boxId:int;
      
      public var num:int;
      
      public var maxNum:int;
      
      public var index:int;
      
      public function RequestAwardRecruitActivityCommand(param1:int)
      {
         super();
         this.boxId = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.OPERATING_ACTIVITY;
      }
   }
}
