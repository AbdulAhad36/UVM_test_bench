// AGENT CLASS

class my_agent extends uvm_agent;
	
	`uvm_component_utils(my_agent)
	
	//instantiate classes
	my_sequencer seq;
	my_driver driv;
	my_monitor moni;
	
	//CONSTRUCTOR
	function new( string name= "my_agent" , uvm_component parent= null);
		super.new(name,parent);

	endfunction

		
	//BUILD PHASE
	function void build_phase (uvm_phase phase);//build other components //build sequencer,driver and monitor class		
		seq= my_seq::type_id::create("seq",this);  //create 
		driv= my_driv::type_id::create("driv",this);
		moni= my_moni::type_id::create("moni",this);

	endfunction


	//CONNECT PHASE
	function void connect_phase (uvm_phase phase);
		//neccessary connections
		driv.seq_item_port.connect(seq.seq_item_export)
		
	endfunction


	//RUN PHASE				
	task run_phase(uvm_phase phase);	//this will be task because its a time consuming phase
		//main logic
	endtask


endclass

