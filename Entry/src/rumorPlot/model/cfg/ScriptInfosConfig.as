package rumorPlot.model.cfg
{
   import flash.utils.Dictionary;
   import rumorPlot.model.info.ScriptInfo;
   
   public class ScriptInfosConfig
   {
       
      public var scriptInfoDict:Dictionary;
      
      public function ScriptInfosConfig()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc4_:ScriptInfo = null;
         this.scriptInfoDict = new Dictionary();
         var _loc2_:XMLList = param1.ScriptInfo;
         var _loc3_:int = _loc2_.length();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = new ScriptInfo();
            _loc4_.decode(_loc2_[_loc5_]);
            this.scriptInfoDict[_loc4_.cmd] = _loc4_;
            _loc5_++;
         }
      }
      
      public function getScriptByCmd(param1:String) : ScriptInfo
      {
         return this.scriptInfoDict[param1];
      }
      
      public function updateScriptInfo(param1:ScriptInfo) : void
      {
         var _loc2_:ScriptInfo = this.getScriptByCmd(param1.cmd);
         param1.update(_loc2_);
      }
      
      public function encode() : XML
      {
         return null;
      }
      
      public function dispose() : void
      {
         this.scriptInfoDict = null;
      }
   }
}
