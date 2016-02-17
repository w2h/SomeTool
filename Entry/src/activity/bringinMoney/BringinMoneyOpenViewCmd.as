package activity.bringinMoney
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class BringinMoneyOpenViewCmd extends NarutoCommand
   {
       
      public function BringinMoneyOpenViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
