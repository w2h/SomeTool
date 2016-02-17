package base
{
   import com.tencent.morefun.naruto.executer.Executer;
   import com.tencent.morefun.framework.base.Command;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import com.tencent.morefun.framework.loader.FileManager;
   import user.data.UserInfo;
   
   public class NarutoExecuter extends Executer
   {
       
      private var stateListList:Array;
      
      public function NarutoExecuter(param1:String, param2:String = null)
      {
         super(param1,param2);
         if(this.selfInfo == null)
         {
            ApplicationData.singleton.addEventListener(ModelEvent.UPDATE,this.onUpdateSelfInfo);
         }
      }
      
      override public function commandFilter(param1:Command) : Boolean
      {
         var _loc2_:NarutoCommand = null;
         if(param1 is NarutoCommand)
         {
            _loc2_ = param1 as NarutoCommand;
            return _loc2_.checkStateEnable();
         }
         return true;
      }
      
      private function onUpdateSelfInfo(param1:ModelEvent) : void
      {
         var _loc2_:Object = null;
         ApplicationData.singleton.removeEventListener(ModelEvent.UPDATE,this.onUpdateSelfInfo);
         for each(_loc2_ in this.stateListList)
         {
            this.addSelfStateListener(_loc2_.state,_loc2_.callback,_loc2_.data,_loc2_.priority);
         }
      }
      
      public function getQaulifiedUrl(param1:String) : String
      {
         return FileManager.getQualifiedUrl(param1);
      }
      
      public function get selfInfo() : UserInfo
      {
         return ApplicationData.singleton.selfInfo;
      }
      
      public function get appData() : ApplicationData
      {
         return ApplicationData.singleton;
      }
      
      public function getState(param1:String) : Boolean
      {
         return this.selfInfo.state.getFlagByName(param1);
      }
      
      public function changeSelfState(param1:String, param2:Boolean) : void
      {
         this.selfInfo.state.setFlagByName(param1,param2);
      }
      
      public function addSelfStateListener(param1:String, param2:Function, param3:Object = null, param4:int = 0) : void
      {
         if(this.selfInfo == null)
         {
            this.stateListList = this.stateListList || [];
            this.stateListList.push({
               "state":param1,
               "callback":param2,
               "data":param3,
               "priority":param4
            });
            return;
         }
         this.selfInfo.state.addFlagChangedListenerByName(param1,param2,param3,param4);
      }
      
      public function removeSelfStateListener(param1:String, param2:Function) : void
      {
         if(this.selfInfo == null)
         {
            this.removeStateListenerList(param1,param2);
            return;
         }
         this.selfInfo.state.removeFlagChangedListenerByName(param1,param2);
      }
      
      private function removeStateListenerList(param1:String, param2:Function) : void
      {
         this.stateListList = this.stateListList || [];
         var _loc3_:int = 0;
         while(_loc3_ < this.stateListList.length)
         {
            if(this.stateListList[_loc3_].state == param1 && this.stateListList[_loc3_].callback == param2)
            {
               this.stateListList.splice(_loc3_,1);
               _loc3_--;
            }
            _loc3_++;
         }
      }
   }
}
