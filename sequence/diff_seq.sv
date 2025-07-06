class dff_seq extends uvm_sequence #(uvm_sequence_item);
    `uvm_object_utils(dff_seq)
    function new(string name = "dff_seq");
        super.new(name);
    endfunction

    task body();
        // Apply reset
        // Apply stimulus to d, check q
    endtask
endclass