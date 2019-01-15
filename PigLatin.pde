int n = 0;
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
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
  for(int num = 0; num < sWord.length(); num++){
    if(sWord.substring(num, num + 1).equals("a")){
      return -2;
    }else if(sWord.substring(num, num + 1).equals("e")){
      return -2;
    }else if(sWord.substring(num, num + 1).equals("i")){
      return -2;
    }else if(sWord.substring(num, num + 1).equals("o")){
      return -2;
    }else if(sWord.substring(num, num + 1).equals("u")){
      return -2;
    }
  }
  return -1;
}

public int leadingConsonsants(String sWord){
  while(sWord.substring(n,n + 1).equals("a") == false && sWord.substring(n,n + 1).equals("e") == false && sWord.substring(n,n + 1).equals("i") == false && sWord.substring(n,n + 1).equals("o") == false && sWord.substring(n,n + 1).equals("u") == false){
    n++;
  }
  return n;
}
public int beginQu(String sWord){
  if(sWord.substring(0,2).equals("qu")){
    return 1;
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1){
		return sWord + "ay";
  }else if(sWord.substring(0,1).equals("a") || sWord.substring(0,1).equals("e") || sWord.substring(0,1).equals("i") || sWord.substring(0,1).equals("o") || sWord.substring(0,1).equals("u")){
    return sWord + "way";
  }else if(beginQu(sWord) == 1){
    return sWord.substring(2) + "quay";
  
  }else if(leadingConsonsants(sWord) != 0){
    return sWord.substring(n) + sWord.substring(0,n) + "ay";
	}else{
		return "ERROR!";
	}
}
