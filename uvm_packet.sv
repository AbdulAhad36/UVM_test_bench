// packet is basically set of random bits generated which is an object in uvm terms and 
// these packets are processed in DUT in the form of sequence for testing 
// the DUT(design for e.g. ALU)


//BASIC STRUCTURE OF PACKET CLASS

class my_packet extends uvm_sequence_item ; 
	`uvm_object_utils(my_packet)	//factory macro to create object class

	//request items 
	rand bit [7:0] input_1;
	rand bit [7:0] input_2;

	//response
	bit [15:0] output_1;
	
	//CONSTRUCTOR 
	function new( string name= "my_packet");
		super.new(name);

	endfunction

endclass
