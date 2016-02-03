public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public String onlyLetters(String sString){
  String fresh = "";
  for(int i = 0;i<sString.length();i++)
  if(Character.isLetter(sString.charAt(i)))
   fresh=fresh+sString.charAt(i);
  return fresh;
}

public String noSpaces(String sWord){
  String empty = "";
  
  for(int i = 0;i<sWord.length();i++)
   
   if (sWord.charAt(i)!= ' ')
   empty=empty+sWord.charAt(i);
   return empty;
}

public String noCapitals(String sWord){
  String s = sWord.toLowerCase();
  return s;
}
public String reverse( String sWord){
  String sNew = "";
  int nLast = sWord.length()-1;
  for(int nI=nLast;nI>=0;nI--)
    sNew=sNew+sWord.charAt(nI);
  return sNew; 
}
public boolean palindrome(String sWord)
{  
String s = onlyLetters(sWord);
String z = noCapitals(s);
String r = reverse(z);
System.out.println(r); 
if(r.equals(z))
  return true;
else
  return false;
}