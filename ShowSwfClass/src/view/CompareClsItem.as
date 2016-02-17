package view
{
	import datas.CompareClsInfo;
	
	import org.aswing.ASColor;
	import org.aswing.Component;
	import org.aswing.FlowLayout;
	import org.aswing.JLabel;
	import org.aswing.JList;
	import org.aswing.JPanel;
	import org.aswing.ListCell;

	public class CompareClsItem implements ListCell
	{
		
		private var _value:CompareClsInfo;
		
		private var panel:JPanel;
		private var label:JLabel;
		public function CompareClsItem()
		{
			init();
		}
		
		private function init():void
		{
			//构造函数做初始化工作
			panel = new JPanel(new FlowLayout());
			panel.setOpaque(true);
			panel.setBackground(ASColor.GRAY);
			
			//文字
			label = new JLabel();
			panel.append(label);
		}
		
		public function setListCellStatus(list:JList, isSelected:Boolean, index:int):void
		{
			if(isSelected)
			{
				panel.setBackground(list.getSelectionBackground());
			}
			else
			{
				panel.setBackground(list.getBackground());
			}
		}
		
		public function setCellValue(value:*):void
		{
			_value = value as CompareClsInfo;
			label.setText(_value.name);
			if(_value.isDifferent){
				label.setForeground(ASColor.RED);
			}else{
				label.setForeground(ASColor.BLACK);
			}
		}
		
		public function getCellValue():*
		{
			return _value;
		}
		
		public function getCellComponent():Component
		{
			return panel;
		}
	}
}