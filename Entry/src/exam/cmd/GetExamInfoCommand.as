package exam.cmd
{
   import exam.data.ExamInfoData;
   import exam.data.ExamLevelData;
   import bag.data.ItemData;
   
   public class GetExamInfoCommand extends BaseExamCommand
   {
       
      public var updateView:Boolean;
      
      public var data:ExamInfoData;
      
      public var levelData:ExamLevelData;
      
      public var awards:Vector.<ItemData>;
      
      public function GetExamInfoCommand(param1:Boolean = false)
      {
         super();
         this.updateView = param1;
      }
   }
}
