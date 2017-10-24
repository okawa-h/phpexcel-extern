package office.phpexcel.worksheet;

@:native("PHPExcel_Worksheet_RowDimension")
extern class RowDimension {

	public function new(index:Int):Void;

	public function getRowIndex():Int;
	public function setRowIndex(value:Float):RowDimension;

	public function getRowHeight():Float;
	public function setRowHeight(value:Float=-1):RowDimension;

	public function getZeroHeight():Bool;
	public function setZeroHeight(value:Bool=false):RowDimension;

	public function getVisible():Bool;
	public function setVisible(value:Bool=true):RowDimension;

	public function getOutlineLevel():Int;
	public function setOutlineLevel(value:Int):RowDimension;

	public function getCollapsed():Bool;
	public function setCollapsed(value:Bool=true):RowDimension;

	public function getXfIndex():Int;
	public function setXfIndex(value:Int=0):RowDimension;

}
