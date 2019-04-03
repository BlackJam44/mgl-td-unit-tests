import java.util.ArrayList;

public class MarcheBoursierConcret implements MarcheBoursier{

  public static ArrayList<ObservateurConcret> observateursList;
  public static int dollarPrice;

  public MarcheBoursierConcret(){
    this.dollarPrice = 10;
    this.observateursList = new ArrayList<ObservateurConcret>();
  }

  public void ajouterObservateur(ObservateurConcret obs){
    this.observateursList.add(obs);
  }

  public void supprimerObservateur(ObservateurConcret obs){
    this.observateursList.remove(obs);
  }

  public void notifierObservateurs(){
    for(ObservateurConcret o : observateursList){
      o.actualiser(this);
    }
  }

  public void getEtat(){
    System.out.println("prix marché observable : " + this.dollarPrice);
  }

}
