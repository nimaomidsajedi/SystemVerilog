// By: Nima Omidsajedi

class parent_class;
   
  virtual function void display_no_vrtl;
    $display("------------------");
    $display("Hello from parent class!");
    $display("------------------");
  endfunction
  
  function void display_vrtl;
    $display("------------------");
    $display("Hello from parent class!");
    $display("------------------");
  endfunction
   
endclass
  
class child_class extends parent_class;
   
  function void display_no_vrtl;
    $display("------------------");
    $display("Hello from child class!");
    $display("------------------");
  endfunction

  function void display_vrtl;
    $display("------------------");
    $display("Hello from child class!");
    $display("------------------");
  endfunction
  
endclass
 
module virtual_class;
  initial begin
    parent_class     my_parent_class;
    child_class my_child_class;
     
    my_child_class = new();
    my_parent_class = my_child_class;    
    
    my_parent_class.display_no_vrtl();  // Bcz of "Virtual" keyword, with calling the same method the values from child class will be assigned (override) to the value of parent class
    my_parent_class.display_vrtl();    // Dispite assigning the value of child class to the parent class, this will not take effect due to no use of "Virtual" keyword
    
  end
endmodule
