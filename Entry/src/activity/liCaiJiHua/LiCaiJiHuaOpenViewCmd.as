package activity.liCaiJiHua
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class LiCaiJiHuaOpenViewCmd extends NarutoCommand
   {
       
      public function LiCaiJiHuaOpenViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
