package npc.cfgs
{
   public interface ITaskStateCheck
   {
       
      function get defaultShow() : Boolean;
      
      function get doingTaskShow() : String;
      
      function get doingTaskHide() : String;
      
      function get doneTaskShow() : String;
      
      function get doneTaskHide() : String;
      
      function get receiveAbleTaskShow() : String;
      
      function get receiveAbleTaskHide() : String;
   }
}
