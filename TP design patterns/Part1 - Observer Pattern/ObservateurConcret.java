
public class ObservateurConcret implements Observateur{
  public static int dollarPrice;
  public static MarcheBoursierConcret observable;

  public ObservateurConcret(){
    //this.observable = Null;
    this.dollarPrice = 10;
  }

  public void actualiser(MarcheBoursierConcret observable){
    this.observable = observable;
    this.dollarPrice = observable.dollarPrice;
  }

  public void display(){
    System.out.println("prix observateur : " + this.dollarPrice);
  }

}
