package office.phpexcel.style;

import office.phpexcel.style.Color;

@:native("PHPExcel_Style_Fill")
extern class Fill {

	public static inline var FILL_NONE					:String = 'none';
	public static inline var FILL_SOLID					:String = 'solid';
	public static inline var FILL_GRADIENT_LINEAR		:String = 'linear';
	public static inline var FILL_GRADIENT_PATH			:String = 'path';
	public static inline var FILL_PATTERN_DARKDOWN		:String = 'darkDown';
	public static inline var FILL_PATTERN_DARKGRAY		:String = 'darkGray';
	public static inline var FILL_PATTERN_DARKGRID		:String = 'darkGrid';
	public static inline var FILL_PATTERN_DARKHORIZONTAL :String= 'darkHorizontal';
	public static inline var FILL_PATTERN_DARKTRELLIS	:String = 'darkTrellis';
	public static inline var FILL_PATTERN_DARKUP		:String = 'darkUp';
	public static inline var FILL_PATTERN_DARKVERTICAL	:String = 'darkVertical';
	public static inline var FILL_PATTERN_GRAY0625		:String = 'gray0625';
	public static inline var FILL_PATTERN_GRAY125		:String = 'gray125';
	public static inline var FILL_PATTERN_LIGHTDOWN		:String = 'lightDown';
	public static inline var FILL_PATTERN_LIGHTGRAY		 :String= 'lightGray';
	public static inline var FILL_PATTERN_LIGHTGRID		:String = 'lightGrid';
	public static inline var FILL_PATTERN_LIGHTHORIZONTAL:String= 'lightHorizontal';
	public static inline var FILL_PATTERN_LIGHTTRELLIS :String = 'lightTrellis';
	public static inline var FILL_PATTERN_LIGHTUP      :String = 'lightUp';
	public static inline var FILL_PATTERN_LIGHTVERTICAL:String = 'lightVertical';
	public static inline var FILL_PATTERN_MEDIUMGRA    :String = 'mediumGray';

	public function getSharedComponent():Fill;
	public function getStyleArray(array:Array<Dynamic>):Array<Dynamic>;
	public function applyFromArray(?array:Array<Dynamic>):Fill;

	public function getFillType():String;
	public function setFillType(value:String=FILL_NONE):Fill;

	public function getRotation():Float;
	public function setRotation(value:Float=0):Fill;

	public function getStartColor():Color;
	public function setStartColor(?value:Color):Fill;

	public function getEndColor():Color;
	public function setEndColor(?value:Color):Fill;

	public function getHashCode():String;

}
