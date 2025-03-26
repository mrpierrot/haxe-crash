
class Batch {
    
    var first:BatchElement;

    public function new() {
  
    }

	/*
	 * @BUG Comment this function bypass the bug
	 */
	public function addShader<T:Shader>( s : T ) : T {
		
		return s;
	}

}

class BatchElement implements IAutoBuild{

    /*
	 * @BUG Comment this field bypass the bug
	 */
    public var batch:Batch;

    public function new() {
        
    }
}



