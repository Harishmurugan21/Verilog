//1) 1 22 333 4444 55555 4444 333 22 1 display this sequence in diamond shape

module display_diamond;


integer i;
integer j;
integer k;
//integer space;

initial begin
	
	for (i=1;i<=5;i++)begin
		for (k=1;k<=5-i;k++)begin
			$write(" ");
		end
		for (j=1;j<=i;j++)begin
			$write("%d",i);
		end
		$write("\n");

	end
	



	for (i=4;i>=1;i--)begin
		for (k=1;k<=5-i;k++)
			$write(" ");
		for (j=1;j<=i;j++)begin
			$write("%d",i);
		end
		$write("\n");

	end
	
end
endmodule

