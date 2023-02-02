use UnitTest;
use RomanNumerals;

proc test1IsI(test : borrowed Test) throws {
  test.assertEqual(convert(1), "I");
}
proc test2IsIi(test : borrowed Test) throws {
  test.assertEqual(convert(2), "II");
}
proc test3IsIii(test : borrowed Test) throws {
  test.assertEqual(convert(3), "III");
}
proc test4IsIv(test : borrowed Test) throws {
  test.assertEqual(convert(4), "IV");
}
proc test5IsV(test : borrowed Test) throws {
  test.assertEqual(convert(5), "V");
}
proc test6IsVi(test : borrowed Test) throws {
  test.assertEqual(convert(6), "VI");
}
proc test9IsIx(test : borrowed Test) throws {
  test.assertEqual(convert(9), "IX");
}
proc test16IsXvi(test : borrowed Test) throws {
  test.assertEqual(convert(16), "XVI");
}
proc test27IsXxvii(test : borrowed Test) throws {
  test.assertEqual(convert(27), "XXVII");
}
proc test48IsXlviii(test : borrowed Test) throws {
  test.assertEqual(convert(48), "XLVIII");
}
proc test49IsXlix(test : borrowed Test) throws {
  test.assertEqual(convert(49), "XLIX");
}
proc test59IsLix(test : borrowed Test) throws {
  test.assertEqual(convert(59), "LIX");
}
proc test66IsLxvi(test : borrowed Test) throws {
  test.assertEqual(convert(66), "LXVI");
}
proc test93IsXciii(test : borrowed Test) throws {
  test.assertEqual(convert(93), "XCIII");
}
proc test141IsCxli(test : borrowed Test) throws {
  test.assertEqual(convert(141), "CXLI");
}
proc test163IsClxiii(test : borrowed Test) throws {
  test.assertEqual(convert(163), "CLXIII");
}
proc test166IsClxvi(test : borrowed Test) throws {
  test.assertEqual(convert(166), "CLXVI");
}
proc test402IsCdii(test : borrowed Test) throws {
  test.assertEqual(convert(402), "CDII");
}
proc test575IsDlxxv(test : borrowed Test) throws {
  test.assertEqual(convert(575), "DLXXV");
}
proc test666IsDclxvi(test : borrowed Test) throws {
  test.assertEqual(convert(666), "DCLXVI");
}
proc test911IsCmxi(test : borrowed Test) throws {
  test.assertEqual(convert(911), "CMXI");
}
proc test1024IsMxxiv(test : borrowed Test) throws {
  test.assertEqual(convert(1024), "MXXIV");
}
proc test1666IsMdclxvi(test : borrowed Test) throws {
  test.assertEqual(convert(1666), "MDCLXVI");
}
proc test3000IsMmm(test : borrowed Test) throws {
  test.assertEqual(convert(3000), "MMM");
}
proc test3001IsMmmi(test : borrowed Test) throws {
  test.assertEqual(convert(3001), "MMMI");
}
proc test3999IsMmmcmxcix(test : borrowed Test) throws {
  test.assertEqual(convert(3999), "MMMCMXCIX");
}

UnitTest.main();
