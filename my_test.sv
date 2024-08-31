
//TEST CLASS



class my_test extends uvm_test:
	
	`uvm_component_utils(my_test)	//factory macro for component class

	//instantiate classes
	my_env env;

	//constructor	
	function new(string name = "my_test" , uvm_component parent = null);
		super.new(name,parent);

	endfunction
	
	//main logic of test component

	
	//BUILD PHASE
	function void build_phase (uvm_phase phase);//build other components //build env class		
		env= my_env::type_id::create("env",this); //create env objects
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
	 