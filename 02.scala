object Euler {
  // By considering the terms in the Fibonacci sequence whose values do not exceed four
  // million, find the sum of the even-valued terms.

  def isEven(i: Int) = i % 2 == 0

  val lazyFib: Stream[Int] = Stream.from(0).map {
    case 0 => 0
    case 1 => 1
    case n => lazyFib(n - 1) + lazyFib(n - 2)
  }

  // 4613732
  val answer = lazyFib.takeWhile(i => i < 4000000)
                .filter(isEven)
                .sum

}
