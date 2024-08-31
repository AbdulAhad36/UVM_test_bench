// sequence is made by arranging random packets containing random bits
// is passes to design (DUT) for testing

//STRUCTURE OF SEQUENCE CLASS

class my_sequence extends uvm_sequence;
	`uvm_object_utils(my_sequence) //factory macro to create object class

	my_packet pkt;
		
	//CONSTRUCTUOR
	function new( string name ="my_sequence");
		super.new(name);
	
	endfunction

	task body();		//responsible for randomizing packets to create sequence
		pkt = my_packet::type_id::create("my packet");	
		
		repeat(10) begin	//generation of stimulus
		start_item(pkt);
		pkt.randomize();	// randomizes the value of only rand variables present in packet
		finish_item(pkt);

		end
	endtask

		
endclass

	
