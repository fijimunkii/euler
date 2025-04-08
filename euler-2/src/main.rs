// Every number in the sequence is the sum of the 2 previous numbers starting with the 'seed' 0,1.
// 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233
// Notice that every 3rd number is even.
// Fibonacci Even numbers
// 0, 2, 8, 34, 144
// If you dig deep into fibonacci you will find that every number in the EVEN sequence is 4 times the previous even number PLUS the "previous-previous" even number. Mathematically the formula is:
// n = (n-1 * 4) + n-2

fn main() {
  let mut n1 = 0;
  let mut n2 = 2;
  let mut sum = n1 + n2;
  let mut n3 = 0;
  while n3 < 4_000_000 {
    n3 = (n2 * 4) + n1;
    if n3 > 4_000_000 {
	  		break;
		}
    sum += n3;
    n1 = n2;
    n2 = n3;
  }
  println!("{}", sum);
}
