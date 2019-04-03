package romannumberconverter;

import org.junit.Test;
import org.junit.Before;
import static org.assertj.core.api.Assertions.*;

import java.util.HashMap;
import java.util.Map;
import java.util.Iterator;
import java.util.Set;

public class RomanNumberConverterTest {

  RomanNumberConverter romannumberconverter;

  @Before
  public void setup() {
    romannumberconverter = new RomanNumberConverter();
  }

  @Test
  public void check_letter() {
    String in[] = {"I","V","X","L","C","D","M"};
    int out[] = {1,5,10,50,100,500,1000};
    for(int i=0; i<in.length; i++){
      assertThat(romannumberconverter.convertToInt(in[i]))
        .isEqualTo(out[i]);
    }
  }
/*
  @Test
  public void check_real_numbers() {
    String in[] = {"III","IV","XII","XLII","CVI","DCXXVII","IXM"};
    int out[] = {3,4,12,42,106,627,989};
    for(int i=0; i<in.length; i++){
      assertThat(romannumberconverter.convertToInt(in[i]))
        .isEqualTo(out[i]);
    }
  }*/

  @Test
  public void check_null() {
    String in = null;
    int out = -1;
    assertThat(romannumberconverter.convertToInt(in))
      .isEqualTo(out);
  }
}
