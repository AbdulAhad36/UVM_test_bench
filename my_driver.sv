// DRIVER CLASS

class my_driver extends uvm_driver #(my_packet);
	
	`uvm_component_utils(my_driver)
	
	//since the ports of sequencer and driver are builtin we just need to connect them
	//using their upper class whcih is the agent class
	my_paacket pkt;
	my_interface inter;

	//CONSTRUCTOR
	function new( string name= "my_driver" , uvm_component parent= null);
		super.new(name,parent);

	endfunction

		
	//BUILD PHASE
	function void build_phase (uvm_phase phase);
		//build other components
		uvm_config_db#(virtual my_interface)::get(null,"*","inter",inter); //get method
		pkt=my_packet::type_id::create("my packet");
	endfunction


	//CONNECT PHASE
	function void connect_phase (uvm_phase phase);
		//neccessary connections
	endfunction


	//RUN PHASE				
	task run_phase(uvm_phase phase);	//this will be task because its a time consuming phase
		//main logic
	endtask


endclass

