package bytestools.view
{
	import flash.events.Event;
	import flash.filesystem.File;
	
	import controller.BytesToolsController;
	
	import org.aswing.BorderLayout;
	import org.aswing.JButton;
	import org.aswing.JComboBox;
	import org.aswing.JFrame;
	import org.aswing.JOptionPane;
	import org.aswing.SoftBox;
	import org.aswing.event.AWEvent;
	
	public class ByteToolsFrame extends JFrame
	{
		private var _btnContainer:SoftBox;
		
		private var _paramsCombox:JComboBox;
		
		public function ByteToolsFrame(owner:*=null, title:String="", modal:Boolean=false)
		{
			super(owner, title, modal);
			this.getContentPane().setLayout(new BorderLayout(5, 5));
			initView();
			addEvent();
		}
		
		override public function dispose():void
		{
			super.dispose();
			removeEvent();
		}
		
		private function initView():void
		{
			
			_btnContainer = SoftBox.createVerticalBox(4);
			this.getContentPane().append(_btnContainer, BorderLayout.NORTH);
			
			creatButton("compress");
			creatButton("uncompress");
			creatButton("uncompress_swf");
			creatButton("compressswf_zws");
			creatButton("zip");
			creatButton("unzip");
			creatButton("zws_swf");
			creatButton("unzws_swf");
			creatButton("lzma");
			creatButton("unlzma");
			creatButton("descrypt_huoying");
			creatButton("resolve_resourcecfg");
			creatButton("descrypt_shenqu");
			
			
			_paramsCombox = new JComboBox(["zlib", "deflate","lzma"]);
			_paramsCombox.setSelectedIndex(0);
			_paramsCombox.setEditable(true);
			_paramsCombox.setPreferredWidth(120);
			
			_btnContainer.append(_paramsCombox);
			
		}
		
		private function creatButton(btnName:String):void
		{
			var btn:JButton = new JButton(btnName);
			btn.addActionListener(__onBtnClick);
			_btnContainer.append(btn);
		}
		
		private function addEvent():void
		{
//			_compressBtn.addActionListener(__onCompress);
//			_uncompressBtn.addActionListener(__onUncompress);
//			_zipFileBtn.addActionListener(__onZip);
//			_unzipFileBtn.addActionListener(__onUnzip);
//			_zwsSwf.addActionListener(__onZwsSwf);
//			_unZwsSwf.addActionListener(__onUnzwsSwf);
		}
		
		private function removeEvent():void
		{
//			_compressBtn.removeActionListener(__onCompress);
//			_uncompressBtn.removeActionListener(__onUncompress);
//			_zipFileBtn.removeActionListener(__onZip);
//			_unzipFileBtn.removeActionListener(__onUnzip);
//			_zwsSwf.removeActionListener(__onZwsSwf);
//			_unZwsSwf.removeActionListener(__onUnzwsSwf);
		}
		
		private var _opearBtnName:String = "";
		
		private function __onBtnClick(e:AWEvent):void
		{
			_opearBtnName = (e.currentTarget as JButton).getText();
			browseFile();
		}
		
		private function browseFile():void
		{
			var file:File = new File();
			file.addEventListener(Event.SELECT, __onFileSelected);
			file.browseForOpen("open");
		}
		
		private function __onFileSelected(evt:Event):void
		{
			var file:File = evt.target as File;
			file.removeEventListener(Event.SELECT, __onFileSelected);
			var ctr:BytesToolsController = new BytesToolsController(file);
			switch(_opearBtnName)
			{
				case "compress":
					ctr.compress(_paramsCombox.getSelectedItem());
					break;
				case "uncompress":
					ctr.uncompress(_paramsCombox.getSelectedItem());
					break;
				case "zip":
					ctr.zipFile();
					break;
				case "unzip":
					ctr.unzipFile();
					break;
				case "zws_swf":
					ctr.zwsSwf();
					break;
				case "unzws_swf":
					ctr.unzwsSwf();
					break;
				case "lzma":
					ctr.lzmaFile();
					break;
				case "unlzma":
					ctr.unlzmaFile();
					break;
				case "descrypt_huoying":
					ctr.descryptHuoYing();
					break;
				case "resolve_resourcecfg":
					ctr.resolveResourceCfg();
					break;
				case "descrypt_shenqu":
					ctr.descryptShenqu();			
					break
				case "uncompress_swf":
					ctr.uncompressswf();
					break;
				case "compressswf_zws":
					ctr.compressswf_zws();
					break;
				default:
					JOptionPane.showMessageDialog("提示", "没有此功能");
					break;
			}
		}
		
	}
}