#include <stdio.h>
#include <omp.h>

// This program adds the numbers from 1 to 10 in parallel using OpenMP.

int main() {
    int sum = 0; // Variable to hold the sum of numbers from 1 to 10.

    // parallelize the following loop and reduce the sum, automatically determining number of threads
    #pragma omp parallel for reduction(+:sum)
    for (int i = 1; i <= 10; i++) {
        sum += i; // Accumulate the sum of numbers from 1 to 10.
    }

    // Print the final sum after all parallel computations are done.
    printf("Sum: %d\n", sum);

    return 0; // Exit the program.
}