package view
{
	import datas.SwfInfo;
	
	import flash.display.Bitmap;
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;
	import flash.utils.getQualifiedSuperclassName;
	
	import org.aswing.BorderLayout;
	import org.aswing.Component;
	import org.aswing.Container;
	import org.aswing.GeneralListCellFactory;
	import org.aswing.JFrame;
	import org.aswing.JLabel;
	import org.aswing.JList;
	import org.aswing.JPanel;
	import org.aswing.JScrollPane;
	import org.aswing.JTextArea;
	import org.aswing.event.AWEvent;
	import org.aswing.event.SelectionEvent;
	import org.aswing.plaf.ASColorUIResource;
	import org.aswing.plaf.ComponentUI;
	
	public class SwfFrame extends JPanel
	{
		
		private var _desTxt:JLabel;
		private var _list:JList;
		private var _contentPanel:JPanel;
		
		private var _data:SwfInfo;
		
		private var _context:LoaderContext;
		public function SwfFrame()
		{
			_context = new LoaderContext();
			_context.allowCodeImport = true;
			init();
			
		}
		
		private function init():void
		{
			
			this.setLayout(new BorderLayout(15,15));
			
			_desTxt = new JLabel();
				
			this.append(_desTxt, BorderLayout.NORTH);
			
			_contentPanel = new JPanel();
			
			this.append(_contentPanel, BorderLayout.CENTER);
			
		}
		

		public function get data():SwfInfo
		{
			return _data;
		}

		public function set data(value:SwfInfo):void
		{
			if(_data != null)return;
			_data = value;
			if(_data != null)
			{
				this.name = _data.name;
				_desTxt.setText("FPS:" + _data.fps + " Frames:"+ _data.totalFrames +" Version:"+ _data.version);
				_list = new JList(_data.clsArr, new GeneralListCellFactory(ClsItem, false, true, 22));
				_list.setVisibleCellWidth(180);
				_list.setVisibleRowCount(6);
				
				this.append(new JScrollPane(_list), BorderLayout.WEST);
				
				loadSwfBytes(_data.bytes);
				
				_list.addEventListener(SelectionEvent.LIST_SELECTION_CHANGED, __onSelectionChange);
			}
		}
		
		private function loadSwfBytes(bytes:ByteArray):void
		{
			var loader:Loader = new Loader();
			loader.loadBytes(bytes, _context);
		}
		
		private function __onSelectionChange(evt:SelectionEvent):void
		{
			var value:String = _list.getSelectedValue();
			showCls(value);
		}
		
		private var _curShowDisplay:DisplayObject;
		private function showCls(clsName:String):void
		{
			if(_context.applicationDomain.hasDefinition(clsName))
			{
				var cls:Object = _context.applicationDomain.getDefinition(clsName);
				var superClassname:String = getQualifiedSuperclassName(cls);
				if(superClassname == "flash.display::BitmapData"){
					instance = new Bitmap(new cls());
				}else{
					var instance:DisplayObject = new cls() as DisplayObject;
				}
				if(_curShowDisplay != null){
					if(_curShowDisplay is Bitmap) 
					{
						var targetBitmap:Bitmap = Bitmap(_curShowDisplay);
						if(targetBitmap.parent)targetBitmap.parent.removeChild(targetBitmap);
						if(targetBitmap.bitmapData)targetBitmap.bitmapData.dispose();
					}else if(_curShowDisplay is MovieClip){
						var mc:MovieClip = MovieClip(_curShowDisplay);
						mc.stop();
						if(mc.parent)mc.parent.removeChild(mc);
					}
				}
				instance.x = (_contentPanel.width - instance.width)*0.5
				instance.y = (_contentPanel.height - instance.height)*0.5
				
				_curShowDisplay = _contentPanel.addChild(instance as DisplayObject);
			}
		}

	}
}