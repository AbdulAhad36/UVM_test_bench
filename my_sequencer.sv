// SEQUENCER CLASS

class my_sequencer extends uvm_sequencer #(my_packet);
	
	`uvm_component_utils(my_sequencer)

	//since the ports of sequencer and driver are builtin we just need to connect them
	//using their upper class whcih is the agent class

	//CONSTRUCTOR
	function new( string name= "my_sequencer" , uvm_component parent= null);
		super.new(name,parent);

	endfunction

		
	//BUILD PHASE
	function void build_phase (uvm_phase phase);
		//build other components
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
