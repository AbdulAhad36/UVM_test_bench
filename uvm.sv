
//TOP MODULE

`include "uvm_package.svh"
import uvm_pkg::*;

module top();
	
	my_interface inter; //intantiate interfaces 		
	our design uut(): //instantiate our design
	
	initial begin		//setting interface in the data base interface=way to encapsulate data into block	
		uvm_config_db#(virtual my_interface)::set(null, ,"*","inter",inter);	//set method		

	end

	initial begin
		run_test("test");
	end
endmodule


	
