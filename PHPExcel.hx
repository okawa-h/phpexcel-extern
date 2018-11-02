package office;

import haxe.extern.EitherType;
import office.phpexcel.*;

extern class PHPExcel {

	private var uniqueID:String;
	private var properties:DocumentProperties;
	private var security:DocumentProperties;
	private var workSheetCollection:Array<Worksheet>;
	private var calculationEngine:Calculation;
	private var activeSheetIndex:Int;
	private var namedRanges:Array<NamedRange>;
	private var cellXfSupervisor:Style;
	private var cellXfCollection:Array<Style>;
	private var cellStyleXfCollection:Array<Style>;
	// private var hasMacros:Bool;
	private var macrosCode:String;
	private var macrosCertificate:String;
	private var ribbonXMLData:String;
	private var ribbonBinObjects:Array<String>;

	public function hasMacros():Bool;
	public function setHasMacros(hasMacros:Bool=false):Bool;

	public function setMacrosCode(?macrosCode:String):Void;
	public function getMacrosCode():String;
	public function setMacrosCertificate(?certificate:String):String;
	public function hasMacrosCertificate():Bool;
	public function getMacrosCertificate():String;
	public function discardMacros():Void;

	public function setRibbonXMLData(?target:String,?xMLData:String):Void;
	public function getRibbonXMLData(?what:String):EitherType<String,Array<String>>;
	public function setRibbonBinObjects(?binObjectsNames:String,?binObjectsData:String):Void;
	public function getExtensionOnly(thePath:String):String;
	public function getRibbonBinObjects(?what:String):Void;
	public function hasRibbon():Bool;
	public function hasRibbonBinObjects():Bool;

	public function sheetCodeNameExists(pSheetCodeName:String):Bool;
	public function getSheetByCodeName(?pName:String):Worksheet;

	public function new():Void;
	public function __destruct():Void;

	public function disconnectWorksheets():Void;
	public function getCalculationEngine():Calculation;

	public function getProperties():DocumentProperties;
	public function setProperties(pValue:DocumentProperties):Void;

	public function getSecurity():DocumentSecurity;
	public function setSecurity(pValue:DocumentSecurity):Void;

	public function getActiveSheet():EitherType<Worksheet,Exception>;
	public function createSheet(?iSheetIndex:Int):EitherType<Worksheet,Exception>;
	public function sheetNameExists(pSheetName:String):Bool;
	public function addSheet(pSheet:Worksheet,?iSheetIndex:Int):EitherType<Worksheet,Exception>;
	public function removeSheetByIndex(?pIndex:Int):EitherType<Void,Exception>;
	public function getSheet(?pIndex:Int):EitherType<Worksheet,Exception>;
	public function getAllSheets():Array<Worksheet>;
	public function getSheetByName(?pName:String):Worksheet;

	public function getIndex(pSheet:Worksheet):EitherType<Int,Exception>;
	public function setIndexByName(sheetName:String,newIndex:Int):EitherType<Int,Exception>;
	public function getSheetCount():Int;
	public function getActiveSheetIndex():Int;
	public function setActiveSheetIndex(?pIndex:Int):EitherType<Worksheet,Exception>;
	public function setActiveSheetIndexByName(?pValue:String):EitherType<Worksheet,Exception>;

	public function getSheetNames():Array<String>;
	public function addExternalSheet(pSheet:Worksheet,?iSheetIndex:Int):EitherType<Worksheet,Exception>;
	public function getNamedRanges():Array<NamedRange>;
	public function addNamedRange(namedRange:NamedRange):Bool;
	public function getNamedRange(namedRange:NamedRange,?pSheet:Worksheet):NamedRange;
	public function removeNamedRange(namedRange:NamedRange,?pSheet:Worksheet):PHPExcel;

	public function getWorksheetIterator():WorksheetIterator;
	public function copy():PHPExcel;
	public function __clone():Void;

	public function getCellXfCollection():Array<Style>;
	public function getCellXfByIndex(?pIndex:Int):Style;
	public function getCellXfByHashCode(?pValue:String):EitherType<Style,Bool>;
	public function cellXfExists(?pCellStyle:Style):Bool;

	public function getDefaultStyle():EitherType<Style,Exception>;
	public function addCellXf(style:Style):Void;
	public function removeCellXfByIndex(?pIndex:Int):EitherType<Void,Exception>;
	public function getCellXfSupervisor():Style;
	public function getCellStyleXfCollection():Array<Style>;
	public function getCellStyleXfByIndex(?pIndex:Int):Style;
	public function getCellStyleXfByHashCode(?pValue:String):EitherType<Style,Bool>;
	public function addCellStyleXf(pStyle:Style):Void;
	public function removeCellStyleXfByIndex(?pIndex:Int):EitherType<Void,Exception>;

	public function garbageCollect():Void;

	public function getID():String;

}
