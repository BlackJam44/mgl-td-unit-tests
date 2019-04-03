package romannumberconverter;

import java.util.HashMap;
import java.util.Map;
import java.util.Iterator;
import java.util.Set;

public class RomanNumberConverter{


  int convertToInt(String letter){
    String str = letter;
    if(str != null){
      int size = str.length();
      System.out.println("Roman number to convert : " + str);
      int tab[] = null;
      for (int j=0; j<tab.length; j++){
        switch(str.charAt(j)){
          case 'I':
            tab[j]=1;
          case 'V':
            tab[j]=5;
          case 'X':
            tab[j]=10;
          case 'L':
            tab[j]=50;
          case 'C':
            tab[j]=100;
          case 'D':
            tab[j]=500;
          case 'M':
            tab[j]=1000;
        }
      }

      int res = 0;
      res += tab[0];

      for(int i=1; i<size; i++){
        int news = tab[i];
        int old = tab[i-1];
        if(old>news){
          res+=news;
        }else if(old<news){
          res-= 2*old;
          res+= news;
        }
      }
    }
    else if(str==null){
      return -1;
    }
    return 0;
  }


/*
  String convertToString(int number){
    int integer = number;
  }*/


}
