module alu_tb ();
parameter n=4;
reg [n-1:0]a,b;
reg control;
reg [n-2:0]sel;

wire [n-1:0]y;
wire cout;

integer i;

alu_nbit #(.n(n)) inst (a,b,sel,control,y,cout);

initial begin

	$monitor("time=%0t | a=%b(%0d) | b=%b(%0d) | control=%b | sel=%b | y=%b(%0d) | cout=%b| ",$time,a,a,b,b,control,sel,y,y,cout);


	/*a=n'b1110;b=1001;sel=111;#5;
	a=1110;b=0001;control=0;sel=000;#5;
	control=1;sel=001;#5;
	$finish;*/

       a=$random;b=$random;control=0;sel=0;#5;
       for (i=0;i<15;i++)begin
	       a=$random;
	       b=$random;
	       control=$random;
	       sel=$random;
	       #5;
       end




end

endmodule


