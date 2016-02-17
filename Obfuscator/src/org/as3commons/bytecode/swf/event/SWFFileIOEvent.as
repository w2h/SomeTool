package org.as3commons.bytecode.swf.event
{
   import flash.events.Event;
   import org.as3commons.bytecode.tags.serialization.ITagSerializer;
   
   public class SWFFileIOEvent extends Event
   {
      
      public static const TAG_SERIALIZER_CREATED:String = "tagSerializerCreated";
       
      private var _tagSerializer:ITagSerializer;
      
      public function SWFFileIOEvent(param1:String, param2:ITagSerializer, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._tagSerializer = param2;
      }
      
      public function get tagSerializer() : ITagSerializer
      {
         return this._tagSerializer;
      }
      
      public function set tagSerializer(param1:ITagSerializer) : void
      {
         this._tagSerializer = param1;
      }
      
      override public function clone() : Event
      {
         return new SWFFileIOEvent(this.type,this.tagSerializer,this.bubbles,this.cancelable);
      }
   }
}
