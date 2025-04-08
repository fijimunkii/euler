// largest palindrome product
// https://projecteuler.net/problem=4
// The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-digit numbers.
// Counting downwards is more efficient than counting upwards.
fn main() {
    let mut largest_palindrome = 0;
    for i in (100..=999).rev() {
        for j in (100..=999).rev() {
            let product = i * j;
            if product > largest_palindrome && is_palindrome(product) {
                largest_palindrome = product;
                break;
            } else if largest_palindrome > product {
                break;
            }
        }
    }
    println!("The largest palindrome made from the product of two 3-digit numbers is: {}", largest_palindrome);
}

fn is_palindrome(n: i32) -> bool {
  let s = n.to_string();
  let reversed: String = s.chars().rev().collect();
  s == reversed
}
