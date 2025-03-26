class Main {
	var _hero:Hero;

	function new() {}

	static function main() {
		new Main();
	}
}

@:build(Macros.build())
abstract class BaseUnit {
	public var rendering:Drawable;
}

/**
 * @BUG Move this at the end of this file bypass the bug.
 */
class Hero extends Unit {}

abstract class Unit extends BaseUnit {}
