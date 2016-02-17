package controller
{
	import flash.desktop.Clipboard;
	import flash.desktop.ClipboardFormats;
	import flash.desktop.NativeDragManager;
	import flash.display.DisplayObject;
	import flash.display.InteractiveObject;
	import flash.events.MouseEvent;
	import flash.events.NativeDragEvent;
	import flash.filesystem.File;
	import flash.utils.ByteArray;
	
	import utils.SwfParser;

	public class DropController
	{
		public function DropController()
		{
		}
		
		private var _curDispatcher:InteractiveObject;
		private var _backCall:Function;
		public function addListener(eventDispatcher:InteractiveObject, backCall:Function):void
		{
			_curDispatcher = eventDispatcher;
			_backCall = backCall;
			_curDispatcher.addEventListener(NativeDragEvent.NATIVE_DRAG_ENTER,dragEnterHandler);
			_curDispatcher.addEventListener(NativeDragEvent.NATIVE_DRAG_DROP,dragDropHandler);
			_curDispatcher.addEventListener(NativeDragEvent.NATIVE_DRAG_EXIT,dragExitHandler);
		}
		
		private function dragEnterHandler(e:NativeDragEvent):void
		{
			trace("dragEnterHandler")
			var clipBoard:Clipboard = e.clipboard;
			if(clipBoard.hasFormat(ClipboardFormats.BITMAP_FORMAT) ||
				clipBoard.hasFormat(ClipboardFormats.FILE_LIST_FORMAT)
			)
			{
				NativeDragManager.acceptDragDrop(_curDispatcher);
			}
		}
		
		private function dragDropHandler(e:NativeDragEvent):void
		{
			trace("dragDropHandler")
			var fileArr:Array = e.clipboard.getData(ClipboardFormats.FILE_LIST_FORMAT) as Array;
			if(_backCall != null){
				for each(var file:File in fileArr)
				{
					_backCall(file);
				}
			}
		}
		
		
		private function dragExitHandler(e:NativeDragEvent):void
		{
			trace("dragExitHandler");
		}

		
	}
}