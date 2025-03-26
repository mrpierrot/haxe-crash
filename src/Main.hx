class Main {
	var _hero:Hero;

	function new() {}

	static function main() {
		new Main();
	}
}

/**
 * @BUG Move this at the end of this file bypass the bug.
 */
class Hero extends Unit {}

@:build(Macros.build())
abstract class BaseUnit {
	public var rendering:Drawable;
}

abstract class Unit extends BaseUnit {}
