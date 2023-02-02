use UnitTest;

use Anagram;

proc testNoMatches(test : borrowed Test) throws {
  var expected = [];
  var anagrams = findAnagrams("diaper", ["hello", "world", "zombies", "pants"]);
  test.assertEqual(anagrams, []);
}
proc testDetectsTwoAnagrams(test : borrowed Test) throws {
  var expected = ["lemons", "melons"];
  var anagrams = findAnagrams("solemn", ["lemons", "cherry", "melons"]);
  test.assertEqual(anagrams, ["lemons", "melons"]);
}
proc testDoesNotDetectAnagramSubsets(test : borrowed Test) throws {
  var expected = [];
  var anagrams = findAnagrams("good", ["dog", "goody"]);
  test.assertEqual(anagrams, []);
}
proc testDetectsAnagram(test : borrowed Test) throws {
  var expected = ["inlets"];
  var anagrams = findAnagrams("listen", ["enlists", "google", "inlets", "banana"]);
  test.assertEqual(anagrams, ["inlets"]);
}
proc testDetectsThreeAnagrams(test : borrowed Test) throws {
  var expected = ["gallery", "regally", "largely"];
  var anagrams = findAnagrams("allergy", ["gallery", "ballerina", "regally", "clergy", "largely", "leading"]);
  test.assertEqual(anagrams, ["gallery", "regally", "largely"]);
}
proc testDetectsMultipleAnagramsWithDifferentCase(test : borrowed Test) throws {
  var expected = ["Eons", "ONES"];
  var anagrams = findAnagrams("nose", ["Eons", "ONES"]);
  test.assertEqual(anagrams, ["Eons", "ONES"]);
}
proc testDoesNotDetectNonAnagramsWithIdenticalChecksum(test : borrowed Test) throws {
  var expected = [];
  var anagrams = findAnagrams("mass", ["last"]);
  test.assertEqual(anagrams, []);
}
proc testDetectsAnagramsCaseInsensitively(test : borrowed Test) throws {
  var expected = ["Carthorse"];
  var anagrams = findAnagrams("Orchestra", ["cashregister", "Carthorse", "radishes"]);
  test.assertEqual(anagrams, ["Carthorse"]);
}
proc testDetectsAnagramsUsingCaseInsensitiveSubject(test : borrowed Test) throws {
  var expected = ["carthorse"];
  var anagrams = findAnagrams("Orchestra", ["cashregister", "carthorse", "radishes"]);
  test.assertEqual(anagrams, ["carthorse"]);
}
proc testDetectsAnagramsUsingCaseInsensitivePossibleMatches(test : borrowed Test) throws {
  var expected = ["Carthorse"];
  var anagrams = findAnagrams("orchestra", ["cashregister", "Carthorse", "radishes"]);
  test.assertEqual(anagrams, ["Carthorse"]);
}
proc testDoesNotDetectAnAnagramIfTheOriginalWordIsRepeated(test : borrowed Test) throws {
  var expected = [];
  var anagrams = findAnagrams("go", ["go Go GO"]);
  test.assertEqual(anagrams, []);
}
proc testAnagramsMustUseAllLettersExactlyOnce(test : borrowed Test) throws {
  var expected = [];
  var anagrams = findAnagrams("tapper", ["patter"]);
  test.assertEqual(anagrams, []);
}
proc testWordsAreNotAnagramsOfThemselves(test : borrowed Test) throws {
  var expected = [];
  var anagrams = findAnagrams("BANANA", ["BANANA"]);
  test.assertEqual(anagrams, []);
}
proc testWordsAreNotAnagramsOfThemselvesEvenIfLetterCaseIsPartiallyDifferent(test : borrowed Test) throws {
  var expected = [];
  var anagrams = findAnagrams("BANANA", ["Banana"]);
  test.assertEqual(anagrams, []);
}
proc testWordsAreNotAnagramsOfThemselvesEvenIfLetterCaseIsCompletelyDifferent(test : borrowed Test) throws {
  var expected = [];
  var anagrams = findAnagrams("BANANA", ["banana"]);
  test.assertEqual(anagrams, []);
}
proc testWordsOtherThanThemselvesCanBeAnagrams(test : borrowed Test) throws {
  var expected = ["Silent"];
  var anagrams = findAnagrams("LISTEN", ["LISTEN", "Silent"]);
  test.assertEqual(anagrams, ["Silent"]);
}

UnitTest.main();
