package task.commands
{
   public class HrefEventCommand extends TaskBaseCommand
   {
      
      public static const DATA_LARGESS_NPC:String = "goto,2015002,26900615";
      
      public static const DATA_ESCORT_NPC:String = "cgoto,1003001,26900622";
      
      public static const DATA_WANTED_NPC:String = "cgoto,2015003,26900623";
      
      public static const ERROR_UNOPEN:int = 444;
       
      public var data:String;
      
      public function HrefEventCommand(param1:String)
      {
         this.data = param1;
         super();
      }
   }
}
