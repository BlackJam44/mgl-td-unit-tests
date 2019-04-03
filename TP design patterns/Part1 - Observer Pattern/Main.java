import java.util.ArrayList;

public class Main{
  public static void main(String[] args){
    MarcheBoursierConcret cac40 = new MarcheBoursierConcret();
    ObservateurConcret obsA = new ObservateurConcret();

    cac40.ajouterObservateur(obsA);
    cac40.getEtat();
    obsA.display();

    cac40.dollarPrice = 44;
    System.out.println("\n !! CRACK BOURSIER !!\n");

    cac40.notifierObservateurs();
    cac40.getEtat();
    obsA.display();


  }
}
