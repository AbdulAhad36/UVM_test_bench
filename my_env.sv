
// ENVIRONMENT CLASS

class my_env extends uvm_env;
	
	`uvm_component_utils(my_env)
	
	//instantiate classes
	my_agent agnt;

	//CONSTRUCTOR
	function new( string name= "my_env" , uvm_component parent= null);
		super.new(name,parent);

	endfunction

		
	//BUILD PHASE
	function void build_phase (uvm_phase phase); //build other components //build agent class				
		agnt= my_agnt::type_id::create("agnt",this);  //create agent
	
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


