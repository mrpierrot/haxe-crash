
class Batch{
    
    var first:BatchElement;

    public function new() {
  
    }

	public function addFoo<T:Foo>( s : T ) : T {
		
		return s;
	}

}

class BatchElement implements IAutoBuild{

    public var parent:Batch;

    public function new() {
        
    }
}



