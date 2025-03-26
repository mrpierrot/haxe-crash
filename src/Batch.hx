
class Batch extends Drawable{
    
    var first:BatchElement;
    var last:BatchElement;

    public function new() {
  
    }

    public function add(e:BatchElement) {
		e.parent = this;
		if (first == null) {
			first = last = e;
			e.prev = e.next = null;
		} else {
			last.next = e;
			e.prev = last;
			e.next = null;
			last = e;
		}
		return e;
	}
}