package com.tencent.morefun.naruto.base
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import com.tencent.morefun.naruto.base.def.GlobelModelKeyDef;
   
   public class GlobelInfo extends BaseModel
   {
       
      public var minStageWidth:int = 600;
      
      public var minStageHeight:int = 600;
      
      private var m_key:String = "";
      
      private var m_platform:String = "";
      
      private var m_sceneId:int = 0;
      
      private var m_preSceneId:int = 0;
      
      private var m_version:String;
      
      private var _register:Boolean;
      
      private var _sceneStepId:int;
      
      public var sceneToId:int;
      
      public function GlobelInfo()
      {
         super("globel");
      }
      
      public function set initSceneId(param1:int) : void
      {
         this.m_sceneId = param1;
      }
      
      public function get register() : Boolean
      {
         return this._register;
      }
      
      public function set register(param1:Boolean) : void
      {
         this._register = param1;
      }
      
      public function set preSceneId(param1:int) : void
      {
         var _loc2_:* = 0;
         _loc2_ = this.m_preSceneId;
         this.m_preSceneId = param1;
         this.dispModelEvent(ModelEvent.UPDATE,GlobelModelKeyDef.PRE_SCENE_ID,_loc2_,this.m_preSceneId);
      }
      
      public function get preSceneId() : int
      {
         return this.m_preSceneId;
      }
      
      public function set sceneId(param1:int) : void
      {
         var _loc2_:* = 0;
         _loc2_ = this.m_sceneId;
         this.m_sceneId = param1;
         this.dispModelEvent(ModelEvent.UPDATE,GlobelModelKeyDef.SCENE_ID,_loc2_,this.m_sceneId);
      }
      
      public function get sceneId() : int
      {
         return this.m_sceneId;
      }
      
      public function get sceneStepId() : int
      {
         return this._sceneStepId;
      }
      
      public function set sceneStepId(param1:int) : void
      {
         if(param1 == this._sceneStepId)
         {
            return;
         }
         var _loc2_:int = this._sceneStepId;
         this._sceneStepId = param1;
         this.dispModelEvent(ModelEvent.UPDATE,GlobelModelKeyDef.SCENE_STEP_ID,_loc2_,this._sceneStepId);
      }
      
      public function get version() : String
      {
         return this.m_version;
      }
      
      public function set version(param1:String) : void
      {
         this.m_version = param1;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super["autoSetNull"]();
         }
         this.m_key = null;
         this.m_platform = null;
      }
   }
}
