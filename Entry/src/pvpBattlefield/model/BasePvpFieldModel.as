package pvpBattlefield.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import pvpBattlefield.model.def.PVPFieldModelDef;
   import def.ModelDef;
   
   public class BasePvpFieldModel extends BaseModel
   {
       
      public function BasePvpFieldModel()
      {
         super(ModelDef.BATTLE_FILE_MODEL);
      }
      
      public function dispathFightStateUpdate(param1:Array) : void
      {
         this.dispModelEvent(ModelEvent.UPDATE,PVPFieldModelDef.FIGHT_STATE_UPDATE,null,param1);
      }
   }
}
