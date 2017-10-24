package office.phpexcel;

import office.PHPExcel;
import office.phpexcel.style.*;

@:native("PHPExcel_Style")
extern class Style {

	public function new(isSupervisor:Bool=false,isConditional:Bool=false):Void;
	public function getSharedComponent():Style;
	public function getParent():PHPExcel;
	public function getStyleArray(array:Array<Dynamic>):Array<Dynamic>;
	public function applyFromArray(?prop:Dynamic,isAdvanced:Bool=true):Exception;

	public function getFill():Fill;

	public function getFont():Font;
	public function setFont():Style;

	public function getBorders():Borders;
	// public function getAlignment():Alignment;
	// public function getNumberFormat():NumberFormat;
	// public function getConditionalStyles():ConditionalStyles;

	public function setBorderStyle(value:String=Border.BORDER_NONE):Border;

}
