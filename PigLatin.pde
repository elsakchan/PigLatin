public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}

public int findFirstVowel(String sWord){
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.substring(i, i+1).equals("a"))
      return i;
    else if(sWord.substring(i, i+1).equals("e"))
      return i;
    else if(sWord.substring(i, i+1).equals("i"))
      return i;
    else if(sWord.substring(i, i+1).equals("o"))
      return i;
    else if(sWord.substring(i, i+1).equals("u"))
      return i;
}
	return -1;
}

public String pigLatin(String sWord)
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if(findFirstVowel(sWord) == 0)
 	{ 
    		return sWord + "way";
  	}
  	if(sWord.substring(0, 2).equals("qu"))
  	{
    		return sWord.substring(2, sWord.length()) + "quay";
  	}
  	if(findFirstVowel(sWord) == 1)
  	{
    		return sWord.substring(1, sWord.length()) + sWord.substring(0, 1) + "ay";
  	}
  	if(findFirstVowel(sWord) == 2)
  	{
    		return sWord.substring(2, sWord.length()) + sWord.substring(0, 2) + "ay";
  	}
  	if(findFirstVowel(sWord) == 3)
  	{
    		return sWord.substring(3, sWord.length()) + sWord.substring(0, 3) + "ay";
  	}
	else
	{
		return "ERROR!";
	}
}
