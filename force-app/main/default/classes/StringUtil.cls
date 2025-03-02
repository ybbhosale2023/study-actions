public with sharing class StringUtil {
  /**
     * Checks if a string is null or empty.
     * @param input The string to check.
     * @return Boolean True if the string is null or empty, otherwise false.
     */
    public static Boolean isNullOrEmpty(String input) {
        return String.isEmpty(input);
    }
    
    /**
     * Converts a string to title case.
     * @param input The string to convert.
     * @return String The title-cased string.
     */
    public static String toTitleCase(String input) {
        if (isNullOrEmpty(input)) {
            return input;
        }
        
        String[] words = input.split(' ');
        String result = '';
        
        for (String word : words) {
            if (word.length() > 0) {
                // Convert the first character to uppercase and the rest to lowercase
                result += (word.substring(0, 1).toUpperCase() + word.substring(1).toLowerCase() + ' ');
            }
        }
        
        return result.trim();
    }
    
    /**
     * Removes all whitespace from a string.
     * @param input The string from which to remove whitespace.
     * @return String The string without whitespace.
     */
    public static String removeWhitespace(String input) {
        if (isNullOrEmpty(input)) {
            return input;
        }
        
        return input.replaceAll('\\s+', '');
    }
    
    /**
     * Reverses a string.
     * @param input The string to reverse.
     * @return String The reversed string.
     */
    public static String reverse(String input) {
        if (input == null) return null;
        return input.reverse();
    }

}