package tactic.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import tactic.event.TacticModelEvent;
   import def.ModelDef;
   import flash.utils.describeType;
   import serverProto.inc.NinjaSourceType;
   
   [Event(name="change",type="tactic.event.TacticModelEvent")]
   public class TacticModel extends BaseModel
   {
      
      private static var _singleton:tactic.model.TacticModel;
       
      private var _models:Dictionary;
      
      public function TacticModel()
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:TacticUniqueModel = null;
         super(ModelDef.TACTIC);
         var _loc1_:Dictionary = new Dictionary(false);
         var _loc2_:XMLList = describeType(NinjaSourceType).constant;
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = _loc3_.@name;
            _loc5_ = new TacticUniqueModel(NinjaSourceType[_loc4_]);
            _loc5_.addEventListener(Event.CHANGE,this.modelChangeHandler);
            _loc1_[_loc5_.type] = _loc5_;
         }
         this._models = _loc1_;
      }
      
      public static function get singleton() : tactic.model.TacticModel
      {
         return _singleton = _singleton || new tactic.model.TacticModel();
      }
      
      private function modelChangeHandler(param1:Event) : void
      {
         var _loc2_:TacticUniqueModel = param1.currentTarget as TacticUniqueModel;
         var _loc3_:TacticModelEvent = new TacticModelEvent(TacticModelEvent.CHANGE,_loc2_.type);
         _loc3_.model = _loc2_;
         dispatchEvent(_loc3_);
      }
      
      public function updateUniqueTactic() : void
      {
      }
      
      public function getUniqueModel(param1:uint) : TacticUniqueModel
      {
         return this._models[param1] as TacticUniqueModel;
      }
   }
}
