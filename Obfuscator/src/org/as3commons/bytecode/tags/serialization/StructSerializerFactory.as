package org.as3commons.bytecode.tags.serialization
{
   import flash.utils.Dictionary;
   import org.as3commons.bytecode.tags.struct.FillStyle;
   import org.as3commons.bytecode.tags.struct.RGB;
   import org.as3commons.bytecode.tags.struct.RGBA;
   import org.as3commons.bytecode.tags.struct.Symbol;
   
   public class StructSerializerFactory implements IStructSerializerFactory
   {
       
      private var _createdFactories:Dictionary;
      
      private var _factoryClasses:Dictionary;
      
      public function StructSerializerFactory()
      {
         super();
         this.initFactory();
      }
      
      protected function initFactory() : void
      {
         this._createdFactories = new Dictionary();
         this._factoryClasses = new Dictionary();
         this._factoryClasses[FillStyle] = FillStyleSerializer;
         this._factoryClasses[RGB] = RGBSerializer;
         this._factoryClasses[RGBA] = RGBASerializer;
         this._factoryClasses[Symbol] = SymbolSerializer;
      }
      
      public function createSerializer(param1:Class) : IStructSerializer
      {
         if(this._createdFactories[param1] == null)
         {
            if(this._factoryClasses[param1] != null)
            {
               this._createdFactories[param1] = new this._factoryClasses[param1]();
            }
            else
            {
               throw new Error("Unable to create serializer for struct class " + param1);
            }
         }
         return this._createdFactories[param1];
      }
   }
}
