package office.phpexcel;

import office.PHPExcel;
// import office.phpexcel.BaseDrawing;
// import office.phpexcel.Chart;
// import office.phpexcel.Cell;
import office.phpexcel.Style;
import office.phpexcel.worksheet.*;

@:native("PHPExcel_Worksheet")
extern class Worksheet {

	public static inline var BREAK_NONE   : Int = 0;
	public static inline var BREAK_ROW    : Int = 1;
	public static inline var BREAK_COLUMN : Int = 2;

	public static inline var SHEETSTATE_VISIBLE    : String = 'visible';
	public static inline var SHEETSTATE_HIDDEN     : String = 'hidden';
	public static inline var SHEETSTATE_VERYHIDDEN : String = 'veryHidden';

	public function getInvalidCharacters():Array<String>;

	public function _checkSheetCodeName(value:String):String;
	public function _checkSheetTitle(value:String):String;

	// public function getCellCollection(isSorted:Bool):Cell;
	public function sortCellCollection():Worksheet;

	public function getRowDimension(row:Int=0):RowDimension;
	public function getDefaultRowDimension():RowDimension;

	public function getColumnDimensions():ColumnDimension;
	public function getDefaultColumnDimension():ColumnDimension;

	// public function getDrawingCollection():BaseDrawing;

	// public function getChartCollection():Chart;
	// public function addChart(?chart:addChart,?chartIndex:Int):Chart;
	public function getChartCount():Int;
	// public function getChartByIndex(index:Int):Chart;
	public function getChartNames():String;
	// public function getChartByName(chartName:String=''):Chart;

	public function refreshColumnDimensions():Worksheet;
	public function refreshRowDimensions():Worksheet;

	public function calculateWorksheetDimension():String;
	public function calculateWorksheetDataDimension():String;
	public function calculateColumnWidths(iscalculateMergeCells:Bool=false):Worksheet;

	public function getParent():PHPExcel;

	public function rebindParent(parent:PHPExcel):Worksheet;

	public function getTitle():String;
	public function setTitle(value:String='Worksheet',isupdateFormulaCellReferences:Bool=true):Worksheet;

	public function getSheetState():String;
	public function setSheetState(value:String=Worksheet.SHEETSTATE_VISIBLE):Worksheet;

	// public function getPageSetup():PageSetup;
	// public function setPageSetup(value:PageSetup):Worksheet;

	// public function getPageMargins():PageMargins;
	// public function setPageMargins(value:PageMargins):Worksheet;

	// public function getHeaderFooter():HeaderFooter;
	// public function setHeaderFooter(value:HeaderFooter):Worksheet;

	// public function getSheetView():SheetView;
	// public function setSheetView(value:SheetView):Worksheet;

	public function setCellValue(colum:String,value:Dynamic):Worksheet;
	public function setCellValueByColumnAndRow(column:Int=0,row:Int=1,?value:Dynamic,isReturnCell:Bool=false):Worksheet;
	public function getColumnDimensionByColumn(column:Int=0):ColumnDimension;

	public function getStyle(value:String):Style;
	public function getStyleByColumnAndRow(column:Int=0,row:Int=1,?column2:Int,?row2:Int):Style;
	public function getFill(column:Int=0,row:Int=1,column2:Int=null,row2:Int=null):Style;

	public function createSheet():Worksheet;

}
