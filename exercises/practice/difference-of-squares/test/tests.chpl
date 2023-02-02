use UnitTest;
use DifferenceOfSquares;

proc testSquareTheSumOfTheNumbersUpToTheGivenNumberSquareOfSum1(test : borrowed Test) throws {
  test.assertEqual(squareOfSum(1), 1);
}
proc testSquareTheSumOfTheNumbersUpToTheGivenNumberSquareOfSum5(test : borrowed Test) throws {
  test.assertEqual(squareOfSum(5), 225);
}
proc testSquareTheSumOfTheNumbersUpToTheGivenNumberSquareOfSum100(test : borrowed Test) throws {
  test.assertEqual(squareOfSum(100), 25502500);
}
proc testSumTheSquaresOfTheNumbersUpToTheGivenNumberSumOfSquares1(test : borrowed Test) throws {
  test.assertEqual(sumOfSquares(1), 1);
}
proc testSumTheSquaresOfTheNumbersUpToTheGivenNumberSumOfSquares5(test : borrowed Test) throws {
  test.assertEqual(sumOfSquares(5), 55);
}
proc testSumTheSquaresOfTheNumbersUpToTheGivenNumberSumOfSquares100(test : borrowed Test) throws {
  test.assertEqual(sumOfSquares(100), 338350);
}
proc testSubtractSumOfSquaresFromSquareOfSumsDifferenceOfSquares1(test : borrowed Test) throws {
  test.assertEqual(differenceOfSquares(1), 0);
}
proc testSubtractSumOfSquaresFromSquareOfSumsDifferenceOfSquares5(test : borrowed Test) throws {
  test.assertEqual(differenceOfSquares(5), 170);
}
proc testSubtractSumOfSquaresFromSquareOfSumsDifferenceOfSquares100(test : borrowed Test) throws {
  test.assertEqual(differenceOfSquares(100), 25164150);
}

UnitTest.main();
