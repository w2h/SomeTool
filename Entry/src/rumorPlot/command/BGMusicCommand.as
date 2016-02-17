package rumorPlot.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BGMusicCommand extends Command
   {
      
      public static const PLAY:int = 0;
      
      public static const RESET:int = 1;
      
      public static const STOP:int = 2;
       
      public var type:int;
      
      public var path:String;
      
      public var envAudio:String;
      
      public function BGMusicCommand(param1:int, param2:String = "", param3:String = "")
      {
         super();
         this.type = param1;
         this.path = param2;
         this.envAudio = param3;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
