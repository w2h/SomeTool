package newestActivity.command
{
   import com.tencent.morefun.framework.base.Command;
   import serverProto.activity.ProtoNinjaRecruitAwardBox;
   import def.PluginDef;
   
   public class RequestQueryRecruitActivityCommand extends Command
   {
       
      public var awards:Vector.<ProtoNinjaRecruitAwardBox>;
      
      public var beginTime:uint;
      
      public var endTime:uint;
      
      public var fengyinSplit:Array;
      
      public var currFengyin:int;
      
      public var superAwards:Vector.<ProtoNinjaRecruitAwardBox>;
      
      public var superNum:int;
      
      public var superMaxNum:int;
      
      public var roundNum:int;
      
      public var roundMaxNum:int;
      
      public function RequestQueryRecruitActivityCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.OPERATING_ACTIVITY;
      }
   }
}
