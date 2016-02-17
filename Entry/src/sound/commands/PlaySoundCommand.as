package sound.commands
{
   public class PlaySoundCommand extends PlayUISoundCommand
   {
       
      public var volume:uint;
      
      public function PlaySoundCommand(param1:uint, param2:uint = 100)
      {
         this.volume = param2;
         super(param1);
      }
   }
}
