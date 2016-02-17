package miniGame.cmds
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class CallMiniGameCmd extends Command
   {
       
      public var type:int;
      
      public var id:int;
      
      public var data:Object;
      
      public function CallMiniGameCmd()
      {
         super(2,true);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.MINI_GAME;
      }
   }
}
