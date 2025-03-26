abstract class BaseUnit extends Entity{
    public var rendering:BatchElement;

    public function new() {
        rendering = new BatchElement(); 
    }
}