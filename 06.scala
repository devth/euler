object Euler6 {
  // The sum of the squares of the first ten natural numbers is,
  // 12 + 22 + ... + 102 = 385

  // The square of the sum of the first ten natural numbers is,
  // (1 + 2 + ... + 10)2 = 552 = 3025
  // Hence the difference between the sum of the squares of the first ten natural
  // numbers and the square of the sum is 3025 − 385 = 2640.

  // Find the difference between the sum of the squares of the first one hundred
  // natural numbers and the square of the sum.

  val first100 = 1 to 100
  def sumOfSquares(r: Seq[Int]) = r.map(n => n * n).sum
  def squareOfSums(r: Seq[Int]) = {
    val s = r.sum
    s * s
  }
  def answer = (sumOfSquares(first100) - squareOfSums(first100)).abs

}
