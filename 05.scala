object Eueler5 {
  // 2520 is the smallest number that can be divided by each of the numbers from 1 to
  // 10 without any remainder.
  // What is the smallest positive number that is evenly divisible by all of the
  // numbers from 1 to 20?

  def isDivisibleBy1to20(n: Int) = (1 to 20).forall(n % _ == 0)

  def answer = Stream.from(1).toIterator.find(isDivisibleBy1to20).get

}
