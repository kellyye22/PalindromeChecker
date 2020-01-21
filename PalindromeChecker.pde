public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String original = onlyLetters(word);
  original = noSpaces(original);
  
  String reversed = reverse(word);
  reversed = onlyLetters(reversed);
  reversed = noSpaces(reversed);
    
  //System.out.println(original);
  //System.out.println(reversed);
  
  if(reversed.toLowerCase().equals(original.toLowerCase())){
    return true;
  }
  
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    
    for(int i = str.length()-1; i >= 0; i--){
      sNew = sNew + str.substring(i,i+1);
    }
        
    return sNew;
}

public String noSpaces(String str){
  String noSpaces = "";
  
  for(int i = 0; i < str.length(); i++){
    if(!str.substring(i,i+1).equals(" ")){
       noSpaces=noSpaces + str.substring(i,i+1);
    }
  }
  
  return noSpaces;
}

public String onlyLetters(String sString){
  String letters = "";
  
  for(int i = 0; i< sString.length();i++){
    char temp = sString.charAt(i);
    if(Character.isLetter(temp)){
      letters = letters + temp;
    }
  }
  
  return letters;
}
