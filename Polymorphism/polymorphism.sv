// By: Nima Omidsajedi

// Parent class
class parent_class;
  virtual function int display(int a);
    $display("------------------");
    $display("Hello from parent class! The entered number: %d", a);
  endfunction
endclass
 
// extended class 1
class first_child extends parent_class;
  virtual function int display(int a);
    $display("------------------");
    $display("Hello from 1st child class! The entered number: %d", a+1);
  endfunction
endclass
 
// extended class 2
class second_child extends parent_class;
  virtual function int display(int a);
    $display("------------------");
    $display("Hello from 2nd child class! The entered number: %d", a+2);
  endfunction
endclass
 
// module
module class_polymorphism;
 
  initial begin
     
    //declare and create extended class
    parent_class p_c = new();
    first_child f_c = new();
    second_child s_c = new();

    p_c.display(1);
    f_c.display(1);
    s_c.display(1);
    
  end
 
endmodule
