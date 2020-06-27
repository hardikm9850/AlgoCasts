// --- Directions
// Print out the n-th entry in the fibonacci series.
// The fibonacci series is an ordering of numbers where
// each number is the sum of the preceeding two.
// For example, the sequence
//  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
// forms the first ten entries of the fibonacci series.
// Example:
//   fib(4) === 3

int fib(int n) {
  if (n < 2) {
    return n;
  }
  return fib(n - 1) + fib(n - 2);
}

int fib2(int n) {
  if (n < 2) {
    return n;
  }
  int nMinus2 = 0;
  int nMinus1 = 1;
  int fib;
  for (int i = 2; i <= n; i++) {
    fib = nMinus1 + nMinus2;
    nMinus2 = nMinus1;
    nMinus1 = fib;
  }
  print("fib($n) = $fib");
  return fib;
}
