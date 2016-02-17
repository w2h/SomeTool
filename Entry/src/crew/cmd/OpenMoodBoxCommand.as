package crew.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenMoodBoxCommand extends Command
   {
       
      public var ninjaId:int;
      
      public var ninjaSequence:uint;
      
      public function OpenMoodBoxCommand(param1:uint, param2:int)
      {
         super();
         this.ninjaId = param2;
         this.ninjaSequence = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CREW;
      }
   }
}
