package view
{
	import datas.CompareClsInfo;
	import datas.SwfInfo;
	
	import flash.display.Bitmap;
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;
	import flash.utils.getQualifiedSuperclassName;
	
	import org.aswing.BorderLayout;
	import org.aswing.GeneralListCellFactory;
	import org.aswing.JLabel;
	import org.aswing.JList;
	import org.aswing.JPanel;
	import org.aswing.JScrollPane;
	import org.aswing.LayoutManager;
	import org.aswing.SoftBoxLayout;
	import org.aswing.event.SelectionEvent;
	import org.aswing.util.ObjectUtils;
	
	import utils.SwfCompare;
	
	public class CompareSwfFrame extends JPanel
	{
		private var _leftName:JLabel;
		private var _leftList:JList;
		private var _leftData:SwfInfo;
		private var _leftContext:LoaderContext;
		private var _leftPanel:JPanel;
		
		private var _rightName:JLabel;
		private var _rightList:JList;
		private var _rightData:SwfInfo;
		private var _rightContext:LoaderContext;
		private var _rightPanel:JPanel
		
		private var _contentPanel:JPanel;
		
		
		public function CompareSwfFrame(layout:LayoutManager=null)
		{
			super(new BorderLayout(5, 5));
			_leftContext = new LoaderContext();
			_rightContext = new LoaderContext();
			_leftContext.allowCodeImport = true;
			_rightContext.allowCodeImport = true;
			init();
		}
		
		
		
		private function init():void
		{
			
			this.setLayout(new BorderLayout(15,15));
			_leftPanel = new JPanel();
			_leftPanel.setSizeWH(200,510);
			_leftPanel.setLayout(new SoftBoxLayout(SoftBoxLayout.Y_AXIS, 10));
			_rightPanel = new JPanel();
			_rightPanel.setSizeWH(200,510);
			_rightPanel.setLayout(new SoftBoxLayout(SoftBoxLayout.Y_AXIS, 10));
			
			_leftName = new JLabel();
			_rightName = new JLabel();
			_leftPanel.append(_leftName);
			_rightPanel.append(_rightName);
			
			this.append(_leftPanel, BorderLayout.WEST);
			this.append(_rightPanel, BorderLayout.EAST);
			
			_contentPanel = new JPanel();
			
			this.append(_contentPanel, BorderLayout.CENTER);
			
		}
		
		
		public function get leftData():SwfInfo
		{
			return _leftData;
		}
		public function get rightData():SwfInfo
		{
			return _rightData;
		}
		
		public function setData(leftValue:SwfInfo, rightValue:SwfInfo):void
		{
			if(_leftData != null && _rightData != null)return;
			_leftData = leftValue;
			_rightData = rightValue;
			if(_leftData != null && _rightData != null)
			{
				SwfCompare.compareSwfCls(_leftData, _rightData);
				this.name = _leftData.name + "&&" + _rightData.name;
				
				//左边的数据
				_leftName.setText(limitString(_leftData.fullName));
				_leftList = new JList(_leftData.clsArr, new GeneralListCellFactory(CompareClsItem, false, true, 22));
				_leftList.setVisibleCellWidth(180);
				_leftList.setVisibleRowCount(22);
				
				_leftPanel.append(new JScrollPane(_leftList), BorderLayout.WEST);
				
				loadSwfBytes(_leftData.bytes, _leftContext);
				
				_leftList.addEventListener(SelectionEvent.LIST_SELECTION_CHANGED, __onLeftSelectionChange);
				
				
				//右边的数据
				_rightName.setText(limitString(_rightData.fullName));
				_rightList = new JList(_rightData.clsArr, new GeneralListCellFactory(CompareClsItem, false, true, 22));
				_rightList.setVisibleCellWidth(180);
				_rightList.setVisibleRowCount(22);
				
				_rightPanel.append(new JScrollPane(_rightList), BorderLayout.EAST);
				
				loadSwfBytes(_rightData.bytes, _rightContext);
				
				_rightList.addEventListener(SelectionEvent.LIST_SELECTION_CHANGED, __onRightSelectionChange);
			}
		}
		
		private function limitString(str:String, len:int = 30):String
		{
			if(str.length > len){
				return ".."+str.slice(str.length - len+2);
			}
			return str;
		}
		
		private function loadSwfBytes(bytes:ByteArray, context:LoaderContext):void
		{
			var loader:Loader = new Loader();
			loader.loadBytes(bytes, context);
		}
		
		private function __onLeftSelectionChange(evt:SelectionEvent):void
		{
			var value:CompareClsInfo = _leftList.getSelectedValue();
			showCls(value.name, _leftContext);
		}
		private function __onRightSelectionChange(evt:SelectionEvent):void
		{
			var value:CompareClsInfo = _rightList.getSelectedValue();
			showCls(value.name, _rightContext);
		}
		
		private var _curShowDisplay:DisplayObject;
		private function showCls(clsName:String, context:LoaderContext):void
		{
			if(context.applicationDomain.hasDefinition(clsName))
			{
				var cls:Object = context.applicationDomain.getDefinition(clsName);
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
				instance.x = (_contentPanel.width - instance.width)*0.5;
				instance.y = (_contentPanel.height - instance.height)*0.5;
				
				_curShowDisplay = _contentPanel.addChild(instance as DisplayObject);
			}
		}
	}
}