
// MONITOR CLASS

class my_monitor extends uvm_monitor;
	
	`uvm_component_utils(my_monitor)
	my_interface inter;
	uvm_analysis_port #(our_sequence_item) mon_port;  //monitor port creation
	
	//CONSTRUCTOR
	function new( string name= "my_monitor" , uvm_component parent= null);
		super.new(name,parent);

	endfunction

		
	//BUILD PHASE
	function void build_phase (uvm_phase phase);
		//build other components
		uvm_config_db#(virtual my_interface)::get(null,"*","inter",inter);	//get interface
		mon_port=new("Monitor Port",this);		///monitor port building
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
