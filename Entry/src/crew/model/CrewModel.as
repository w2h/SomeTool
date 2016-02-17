package crew.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import ninja.model.data.NinjaInfo;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import crew.def.CrewModelKeys;
   import def.ModelDef;
   
   public class CrewModel extends BaseModel
   {
       
      private var _viewId:int;
      
      private var _selectedNinja:NinjaInfo;
      
      private var _multiSellActivated:Boolean;
      
      private var _majorRoleDisabled:Boolean;
      
      public function CrewModel()
      {
         super(ModelDef.CREW);
      }
      
      public function destroy() : void
      {
      }
      
      public function get viewId() : int
      {
         return this._viewId;
      }
      
      public function set viewId(param1:int) : void
      {
         if(this._viewId == param1)
         {
            return;
         }
         this._viewId = param1;
      }
      
      public function get selectedNinja() : NinjaInfo
      {
         return this._selectedNinja;
      }
      
      public function set selectedNinja(param1:NinjaInfo) : void
      {
         if(this._selectedNinja == param1)
         {
            return;
         }
         var _loc2_:NinjaInfo = this._selectedNinja;
         this._selectedNinja = param1;
         this.dispModelEvent(ModelEvent.UPDATE,CrewModelKeys.SELECTED_NINJA_CHANGE,_loc2_,param1);
      }
      
      public function get multiSellActivated() : Boolean
      {
         return this._multiSellActivated;
      }
      
      public function set multiSellActivated(param1:Boolean) : void
      {
         if(this._multiSellActivated == param1)
         {
            return;
         }
         var _loc2_:Boolean = this._multiSellActivated;
         this._multiSellActivated = param1;
         this.dispModelEvent(ModelEvent.UPDATE,CrewModelKeys.MULTI_SELL_ACTIVATED,_loc2_,param1);
      }
      
      public function get majorRoleDisabled() : Boolean
      {
         return this._majorRoleDisabled;
      }
      
      public function set majorRoleDisabled(param1:Boolean) : void
      {
         if(this._majorRoleDisabled == param1)
         {
            return;
         }
         var _loc2_:Boolean = this._majorRoleDisabled;
         this._majorRoleDisabled = param1;
         this.dispModelEvent(ModelEvent.UPDATE,CrewModelKeys.MAJOR_ROLE_DISABLED,_loc2_,param1);
      }
   }
}
