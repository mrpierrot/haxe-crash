

/**
 * @BUG Move this at the end of this file bypass the bug.
 */
class Hero extends Unit<HeroData>  {}

@:build(Macros.build())
abstract class BaseUnit{
    public var rendering:Drawable;
}


abstract class Unit<T:UnitData> extends BaseUnit {}

abstract class UnitData {
	/*
	 * @BUG Initially use to trigger the bug. Seams not need any more. I keep it commented, it can be usefull later
	 */
	//public function apply<D:UnitData>(pUnit:Unit<D>):Void {}
}


