package base
{
   import com.tencent.morefun.framework.base.Command;
   import user.data.UserInfo;
   
   public class NarutoCommand extends Command
   {
       
      private var bingdingStateList:Array;
      
      private var enableStateList:Array;
      
      private var beginStateList:Array;
      
      private var endStateList:Array;
      
      public function NarutoCommand(param1:int = 2)
      {
         super(param1);
      }
      
      public function addBeginStateInfo(param1:String, param2:Boolean) : void
      {
         this.beginStateList = this.beginStateList || [];
         this.beginStateList.push(new NarutoCommandStateInfo(param1,param2));
      }
      
      public function addEndStateInfo(param1:String, param2:Boolean) : void
      {
         this.endStateList = this.endStateList || [];
         this.endStateList.push(new NarutoCommandStateInfo(param1,param2));
      }
      
      public function addEnableStateInfo(param1:String, param2:Boolean) : void
      {
         this.enableStateList = this.enableStateList || [];
         this.enableStateList.push(new NarutoCommandStateInfo(param1,param2));
      }
      
      override public function begin() : void
      {
         var _loc1_:NarutoCommandStateInfo = null;
         super.begin();
         for each(_loc1_ in this.beginStateList)
         {
            this.selfInfo.state.setFlagByName(_loc1_.state,_loc1_.value);
         }
      }
      
      override public function end() : void
      {
         var _loc1_:NarutoCommandStateInfo = null;
         super.end();
         for each(_loc1_ in this.endStateList)
         {
            this.selfInfo.state.setFlagByName(_loc1_.state,_loc1_.value);
         }
      }
      
      public function getEnableState() : Array
      {
         return [];
      }
      
      public function checkStateEnable() : Boolean
      {
         var _loc1_:NarutoCommandStateInfo = null;
         for each(_loc1_ in this.enableStateList)
         {
            if(this.selfInfo.state.getFlagByName(_loc1_.state) != _loc1_.value)
            {
               return false;
            }
         }
         return true;
      }
      
      public function get selfInfo() : UserInfo
      {
         return ApplicationData.singleton.selfInfo;
      }
   }
}
