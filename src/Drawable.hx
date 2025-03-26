

@:build(Macros.build())
class Drawable{

    /*
	 * @BUG Comment this function to bypass the bug
	 */
	public function addShader<T:Shader>( s : T ) : T {
		
		return s;
	}
}





