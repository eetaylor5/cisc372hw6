# cisc372hw6
CISC372 Homework 6

## Authors
Jackson Burns and Emily Taylor

## Building and Running
Documentation for all modifications made by the Authors is provided inline.

(Part 1) To compile the executable for the serial version, use `make fastblur`.

(Part 2) For the slower CUDA version using Unified Memory, use `make cudablur`.

(Part 3) For the fastest execution time using no Unified Memory, use `make fastcudablur`.

The program can then be executed on the cisc372 server with `srun cudablur gauss.jpg 50` where cudablur can also be substituted for `fastcudablur`.

## Best Block Size
We gathered the following data to try and find the best block size and thread count for faster performance:
BLOCK_SIZE	execution time (us)
512	76926
384	63960
282	61797
256	56350
244	56331
128	57213
100	61655
64	58466

The ideal value seems to be in the area of 256, which corresponds to 12 blocks of threads with 256 threads each.