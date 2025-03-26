import units.Unit;


abstract class UnitData extends Object {
	public function apply<D:UnitData>(pUnit:Unit<D>):Void {}
}
