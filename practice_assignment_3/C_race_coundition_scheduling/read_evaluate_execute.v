always @(posedge clk)
    q <= d + 1;


Step 1: READ

The simulator reads the current value of all variables on the right-hand side (RHS).

Here, it reads the current value of d.

This happens immediately in the Active region (when the event triggers).



🔹 Step 2: EVALUATE

The simulator computes the expression using the old values it just read.

But — it does not assign the result to q yet!

It stores this computed result temporarily in a pending update queue (NBA queue).



Step 3: SCHEDULE

The assignment to the left-hand side (LHS) (q) is scheduled to happen later, in the Non-Blocking Assignment (NBA) region, after all Active region events finish.

This ensures all computations in the current time step use the previous values of variables, just like how real flip-flops sample inputs on a clock edge.
