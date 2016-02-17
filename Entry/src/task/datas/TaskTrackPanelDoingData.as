package task.datas
{
   public class TaskTrackPanelDoingData
   {
      
      private static var _href:String;
       
      public function TaskTrackPanelDoingData()
      {
         super();
      }
      
      public static function get href() : String
      {
         return _href;
      }
      
      public static function set href(param1:String) : void
      {
         _href = param1;
      }
   }
}
