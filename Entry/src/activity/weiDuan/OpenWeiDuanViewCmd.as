package activity.weiDuan
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenWeiDuanViewCmd extends NarutoCommand
   {
       
      public function OpenWeiDuanViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
