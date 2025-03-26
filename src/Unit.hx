import Batch.BatchElement;

abstract class BaseUnit implements IAutoBuild{
    public var rendering:BatchElement;
}

abstract class Unit<T:UnitData> extends BaseUnit {
	public var data:T;
	
}

abstract class UnitData {
	public function apply<D:UnitData>(pUnit:Unit<D>):Void {}
}




