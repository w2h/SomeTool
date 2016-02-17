package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.media.Video;
	import flash.utils.ByteArray;
	
	import bytestools.view.ByteToolsFrame;
	
	import controller.DropController;
	
	import datas.SwfInfo;
	
	import org.aswing.ASColor;
	import org.aswing.AsWingManager;
	import org.aswing.Container;
	import org.aswing.EmptyLayout;
	import org.aswing.Insets;
	import org.aswing.JMenu;
	import org.aswing.JMenuBar;
	import org.aswing.JMenuItem;
	import org.aswing.JOptionPane;
	import org.aswing.JTabbedPane;
	import org.aswing.JWindow;
	import org.aswing.KeySequence;
	import org.aswing.KeyStroke;
	import org.aswing.border.BevelBorder;
	import org.aswing.border.EmptyBorder;
	import org.aswing.event.AWEvent;
	
	import utils.SwfParser;
	
	import view.CompareSwfFrame;
	import view.SwfFrame;
	
	[SWF(width="800",height="600",frameRate="25")]
	public class ShowSwfClass extends Sprite
	{
		private var _file:File = new File();
		private var _tabpane:JTabbedPane;

		private var _controller:DropController;
		
		private var _currentShowSwf:SwfInfo;
		public function ShowSwfClass()
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			initController();
			initView();
			
		}
		
		private function initController():void
		{
			_controller = new DropController();
		}
		
		
		private function initView():void
		{
			
			AsWingManager.setRoot(this);
			//容器
			
			
			
			//菜单栏
			var menuBar:JMenuBar = new JMenuBar();
//			menuBar.setBorder(new SideLineBorder(null,SideLineBorder.SOUTH,ASColor.BLACK,1));
			menuBar.setSizeWH(800, 25);
			menuBar.setBackground(ASColor.WHITE);
			
			var menu:JMenu = new JMenu("打开(&F)");
			menuBar.append(menu);
			menu.addActionListener(__onLoadBtn);
			menu = new JMenu("编辑(&E)");
			menuBar.append(menu);
			
			var menuItem1:JMenuItem = new JMenuItem("保存(&S)");
			var menuItem2:JMenuItem = new JMenuItem("关闭(&C)");
			menuItem1.addActionListener(menuAction);
			menuItem2.addActionListener(menuAction);
			//助记键
			menuItem1.setAccelerator(new KeySequence(KeyStroke.VK_CONTROL,KeyStroke.VK_S));
			menuItem2.setAccelerator(new KeySequence(KeyStroke.VK_CONTROL,KeyStroke.VK_C));
			menu.append(menuItem1);
			menu.append(menuItem2);
			
			menu = new JMenu("BytesTool");
			menu.addActionListener(openBytesTools);
			menuBar.append(menu);

			
			_tabpane = new JTabbedPane();
			_tabpane.setBorder(new BevelBorder());
			var window:JWindow = new JWindow();
			var panel:Container = window.getContentPane();
//			window.setBackgroundDecorator(new SolidBackground(UIManager.getColor("window")));
			window.setBorder(new EmptyBorder(null, new Insets(1, 1, 1, 1)));
			window.setSizeWH(stage.stageWidth,stage.stageHeight);
			panel.setLayout(new EmptyLayout());
			panel.append(menuBar);
			panel.append(_tabpane);
			_tabpane.setLocationXY(0,30);
			_tabpane.setSizeWH(stage.stageWidth, stage.stageHeight - 35);
			window.show();
			
			_controller.addListener(_tabpane, parseFile);

		}
		
		private function openBytesTools(e:AWEvent):void
		{
			var bytesFrame:ByteToolsFrame = new ByteToolsFrame(this, "BytesTool", true);
			bytesFrame.setSizeWH(400,300);
			bytesFrame.setLocationXY(200,150);
			bytesFrame.show();
		}
		
		private function menuAction(e:AWEvent):void{
			var menu:JMenuItem = e.currentTarget as JMenuItem;
			trace(menu.getText() + " clicked!");
		}
		
		
		private function __onLoadBtn(evt:AWEvent):void
		{
			_file.addEventListener(Event.SELECT, __onFileSelected);
			_file.browseForOpen("open");
		}
		
		private function __onFileSelected(evt:Event):void
		{
			parseFile(_file);
		}
		
		private var _newSwf:SwfInfo;
		
		private function parseFile(file:File):void
		{
			var stream:FileStream = new FileStream();
			stream.open(file, FileMode.READ);
			
			var fileBytes:ByteArray = new ByteArray();
			
			stream.readBytes(fileBytes);
			
			var swfInfo:SwfInfo = SwfParser.parser(fileBytes, file.nativePath);
			
			if(_currentShowSwf != null){
				_newSwf = swfInfo;
				var content:String = "需要和" +_currentShowSwf.name + "对比吗？"
				JOptionPane.showMessageDialog("提示", content, campareCall, null);
			}else{
				showSwf(swfInfo);
			}
		}
		
		private function showSwf(swfInfo:SwfInfo):void
		{
			var frame:SwfFrame = new SwfFrame();
			frame.data = swfInfo;
			frame.setSizeWH(620,450);
//			frame.setLocationXY(75, 75);
			
			//修改标题栏背景色
			
			_tabpane.append(frame);
			
			_currentShowSwf = swfInfo;
		}
		
		private function campareCall(result:Number):void
		{
			if(result == JOptionPane.OK){
				campareSwf(_currentShowSwf, _newSwf);
			}else{
				showSwf(_newSwf);
			}
		}
		
		private function campareSwf(leftInfo:SwfInfo, rightInfo:SwfInfo):void
		{
			var frame:CompareSwfFrame = new CompareSwfFrame();
			frame.setData(leftInfo, rightInfo);
			frame.setSizeWH(620,450);
			//			frame.setLocationXY(75, 75);
			
			//修改标题栏背景色
			
			_tabpane.append(frame);
		}
		
	}
}