package ninja.executer
{
   import def.PluginDef;
   
   public class NinjaProtoTool
   {
      
      private static var toolInstance:ninja.executer.NinjaProtoExecuter;
       
      public function NinjaProtoTool()
      {
         super();
      }
      
      public static function get tool() : ninja.executer.NinjaProtoExecuter
      {
         if(!toolInstance)
         {
            toolInstance = new ninja.executer.NinjaProtoExecuter(PluginDef.NINJA);
         }
         return toolInstance;
      }
   }
}
