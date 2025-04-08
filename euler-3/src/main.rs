fn main() {
    // Largest prime factor of 600851475143
    // every number can have at most 1 prime factor greater than its square root
    // so we can start from 2 and go up to the square root of the number
  	// if we find a prime factor, we divide the number by it and continue
    let mut n: i64 = 600851475143;
    let mut i = 2;
    while i * i <= n {
				while n % i == 0 {
          n = n / i;
        }
        i = i + 1;
		}
		println!("Largest prime factor: {}", n);
}
