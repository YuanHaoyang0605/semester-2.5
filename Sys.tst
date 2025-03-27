// This script loads and runs the functions in Sys.vm.
// The output file Sys.out will contain the values stored in SP
// and RAM[256] at the end of the execution of your Sys.vm.
// With the initial data supplied below, the output file should
// contain:
//
// | RAM[0] |RAM[256]|
// |    257 | -32737 |
//
// If you change the initial value of SP on line 18 below, to get
// meaningful results in your Sys.out you should update lines 16
// and 23 accordingly.

load Sys.vm,
output-file Test.out,
output-list RAM[0]%D1.6.1 RAM[256]%D1.6.1;

set sp 257,
set local 100,
set argument 200,
set this 1000,
set that 2000,
set RAM[256] 31,
repeat 100000 {
    vmstep;
}
output;