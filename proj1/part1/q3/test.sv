module mod2(a, b, c, d, e); 
input a, c;
output logic b, d, e;
always_comb begin
    if (c == 1) begin
        e = a;
  //      b = c; 
    end
    else begin
        e = 0;
//        b = a;
    end 
end
always_comb begin
    d  = a | c;
    b  = e ^ a;
end
endmodule
