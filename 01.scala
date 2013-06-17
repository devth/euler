object Euler {
  // If we list all the natural numbers below 10 that are multiples of 3 or 5, we get
  // 3, 5, 6 and 9. The sum of these multiples is 23.
  // Find the sum of all the multiples of 3 or 5 below 1000.

  def sumMultipleBelow(below: Int) = (0 until below).map { case i: Int =>
    if (i % 3 == 0 || i % 5 == 0) Some(i)
    else None
  }.flatten.sum

  // 233168
  val answer = sumMultipleBelow(1000)
}
