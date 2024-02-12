module task2_tb();
logic a1;
logic b1;
logic c1;
logic sum1;
logic carry1;
task2 DUT(
.a(a1),
.b(b1),
.c(c1),
.sum(sum1),
.carry(carry1)
);
initial
begin

a1 = 0; b1 = 0; c1 = 0;
#10;
a1 = 0; b1 = 0; c1 = 1;
#15;
a1 = 0; b1 = 1; c1 = 0;
#20;
a1 = 0; b1 = 1; c1 = 1;
#25;
a1 = 1; b1 = 0; c1 = 0;
#30;
a1 = 1; b1 = 0; c1 = 1;
#35;
a1 = 1; b1 = 1; c1 = 0;
#40;
a1 = 1; b1 = 1; c1 = 1;
#10;
$stop;
end
initial 
begin
$monitor("carry=%b, sum=%b, a=%b, b=%b, c=%b", carry1,sum1,a1,b1,c1);
end
endmodule