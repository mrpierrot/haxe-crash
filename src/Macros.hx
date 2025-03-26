
#if macro
import haxe.macro.Type.ClassType;
import haxe.macro.TypeTools;
import haxe.macro.ComplexTypeTools;
import haxe.macro.Expr.Field;
import haxe.macro.Context;

class Macros {

    static var indentCount:Int = 0;
	static public function build() {
		var fields:Array<Field> = Context.getBuildFields();
		var cl = Context.getLocalClass().get();
		begin('build.start ${cl.name}');
		for (f in fields) {
			switch (f.kind) {
				case FVar(t, e):
                    begin('field.start ${cl.name}.${f.name}');
					crashTest(ComplexTypeTools.toType(t));
                    end('field.end ${cl.name}.${f.name}');
				case _:
			}
		}
        end('build.end ${cl.name}');
		return fields;
	}

	static function crashTest(pType:haxe.macro.Type) {

        var type = pType;
        var fieldClass = getClass(type);
        if(fieldClass != null){
            begin('crashTest.start '+getClassName(fieldClass));
            var drawFunc = TypeTools.findField(fieldClass, "__foo");
            end('crashTest.end '+getClassName(fieldClass));
        }
	}

	static public function getClass(t:haxe.macro.Type) {
		return t == null ? null : switch (TypeTools.follow(t)) {
			case TInst(c, _): c.get();
			case _: null;
		}
	}



    static public function indent():String {
		var ret = "";
		for(i in 0...indentCount)  ret += "  ";
		return ret;
	}

	static public function begin(pMsg:String) {
		indentCount++;
		trace(indent()+pMsg);
	}

	static public function end(pMsg:String) {
		trace(indent()+pMsg);
		indentCount--;
	}

    static public function getClassName(pClass:ClassType):String {
        return pClass.pack.concat([pClass.name]).join('.');
    }
}
#end
