public void setup() {
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) {
    if(palindrome(lines[i])==true) {
      println(lines[i] + " IS a palindrome.");
    }
    else {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word) {
  String tempWord = onlyLetters(noCapitals(word));

  if ( reverse(tempWord).equals(tempWord) ) 
    return true;
  return false;
}
public String reverse(String str) {
  String sNew = new String();
  for ( int i = str.length(); i > 0; i-- ) {
    sNew += str.substring(i-1, i);
  }
  return sNew;
}
public String noCapitals(String word) {
  String ans = "";
  for ( int i = 0; i < word.length(); i++) 
    ans += Character.toLowerCase(word.charAt(i));
  return ans;
}
public String noSpaces(String word) {
  String ans = "";
  for ( int i = 0; i < word.length(); i++) 
    if (word.charAt(i) != ' ')
      ans += word.charAt(i);
  return ans;
}
public String onlyLetters(String sString) {
  String ans = "";
  for ( int i = 0; i < sString.length(); i++ ) 
    if ( Character.isLetter(sString.charAt(i)) ) ans += sString.charAt(i);
  return ans;
}

