package bag.command
{
   import RSModel.command.RSModelCommand;
   import bag.data.ItemData;
   
   public class GetConfDataCommand extends RSModelCommand
   {
       
      private var _returnNew:Boolean;
      
      private var _id:uint;
      
      private var _data:ItemData;
      
      private var _idList:Vector.<uint>;
      
      private var _dataList:Vector.<ItemData>;
      
      public function GetConfDataCommand(param1:Boolean = false)
      {
         super();
         this.returnNew = param1;
      }
      
      public function get returnNew() : Boolean
      {
         return this._returnNew;
      }
      
      public function set returnNew(param1:Boolean) : void
      {
         this._returnNew = param1;
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function set id(param1:uint) : void
      {
         this._id = param1;
      }
      
      public function get data() : ItemData
      {
         return this._data;
      }
      
      public function set data(param1:ItemData) : void
      {
         this._data = param1;
      }
      
      public function get idList() : Vector.<uint>
      {
         return this._idList;
      }
      
      public function set idList(param1:Vector.<uint>) : void
      {
         this._idList = param1;
      }
      
      public function get dataList() : Vector.<ItemData>
      {
         return this._dataList;
      }
      
      public function set dataList(param1:Vector.<ItemData>) : void
      {
         this._dataList = param1;
      }
   }
}
