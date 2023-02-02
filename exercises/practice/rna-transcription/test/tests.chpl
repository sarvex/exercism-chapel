use UnitTest;
use RnaTranscription;

proc testEmptyRnaSequence(test : borrowed Test) throws {
  test.assertTrue(toRna("").isEmpty());
}
proc testRnaComplementOfCytosineIsGuanine(test : borrowed Test) throws {
  test.assertEqual(toRna("C"), "G");
}
proc testRnaComplementOfGuanineIsCytosine(test : borrowed Test) throws {
  test.assertEqual(toRna("G"), "C");
}
proc testRnaComplementOfThymineIsAdenine(test : borrowed Test) throws {
  test.assertEqual(toRna("T"), "A");
}
proc testRnaComplementOfAdenineIsUracil(test : borrowed Test) throws {
  test.assertEqual(toRna("A"), "U");
}
proc testRnaComplement(test : borrowed Test) throws {
  test.assertEqual(toRna("ACGTGGTCTTAA"), "UGCACCAGAAUU");
}

UnitTest.main();
