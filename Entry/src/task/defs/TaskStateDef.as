package task.defs
{
   public class TaskStateDef
   {
      
      public static const RECEIVE_ABLE:int = 0;
      
      public static const RECEIVED:int = 1;
      
      public static const COMMIT_ABLE:int = 2;
      
      public static const COMMITED:int = 3;
      
      public static const FAILED:int = 4;
       
      public function TaskStateDef()
      {
         super();
      }
   }
}
