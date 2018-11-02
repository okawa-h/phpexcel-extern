package office.phpexcel.style;

@:native("PHPExcel_Style_Font")
extern class Font {

	public function setColor(?value:Color):Font;
	public function setName(?value:String):Font;
	public function setSize(?value:Float):Font;

}
