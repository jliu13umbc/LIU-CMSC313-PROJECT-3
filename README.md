Analysis:
O0 leads to no optimization, which means that every variable in the program is stored in memory instead of registers. This leads to the program reading RAM when it's really not needed.
O1 uses registers, which is an improvment over O0 as we don't have to access memory when we can use registers.
O3 utilizes loop alignment to speed up larger more complicated computation. This leads to O3 having more lines than O0.
