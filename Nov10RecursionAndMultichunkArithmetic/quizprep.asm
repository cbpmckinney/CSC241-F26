fmt: .asciz "The sum of %i and %i is %i\n"
                        w1     w2    w3  

// %f when printing is actually a double
// %f with scanf is a single, %lf is a double

ldr x0, =fmt
