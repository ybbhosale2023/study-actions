@isTest public class StringUtilTest {
    
    /**
     * Test method for isNullOrEmpty.
     */
    @isTest  static void testIsNullOrEmpty() {
        System.assertEquals(true, StringUtil.isNullOrEmpty(null), 'Expected null input to return true');
        System.assertEquals(true, StringUtil.isNullOrEmpty(''), 'Expected empty string to return true');
        System.assertEquals(false, StringUtil.isNullOrEmpty('test'), 'Expected non-empty string to return false');
    }
    
    /**
     * Test method for toTitleCase.
     */
    @isTest static void testToTitleCase() {
        System.assertEquals('Hello World', StringUtil.toTitleCase('hello world'), 'Expected title case conversion');
        System.assertEquals('Test String', StringUtil.toTitleCase('test STRING'), 'Expected title case conversion with mixed case');
        System.assertEquals('', StringUtil.toTitleCase(''), 'Expected empty string to remain empty');
        System.assertEquals(null, StringUtil.toTitleCase(null), 'Expected null input to remain null');
    }
    
    /**
     * Test method for removeWhitespace.
     */
    @isTest static void testRemoveWhitespace() {
        System.assertEquals('helloworld', StringUtil.removeWhitespace('hello world'), 'Expected whitespace removal');
        System.assertEquals('teststring', StringUtil.removeWhitespace('test string  '), 'Expected removal of trailing whitespace');
        System.assertEquals('', StringUtil.removeWhitespace('   '), 'Expected all whitespace string to become empty');
        System.assertEquals(null, StringUtil.removeWhitespace(null), 'Expected null input to remain null');
    }
    
    /**
     * Test method for reverse.
     */
    @isTest static void testReverse() {
        System.assertEquals('dlrow', StringUtil.reverse('world'), 'Expected string to be reversed');
        System.assertEquals('olleh', StringUtil.reverse('hello'), 'Expected string to be reversed');
        System.assertEquals('', StringUtil.reverse(''), 'Expected empty string to remain empty');
        System.assertEquals(null, StringUtil.reverse(null), 'Expected null input to remain null');
    }
}