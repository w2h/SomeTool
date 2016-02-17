package activity.unionService
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class UnionServiceOpenViewCmd extends NarutoCommand
   {
       
      public function UnionServiceOpenViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
