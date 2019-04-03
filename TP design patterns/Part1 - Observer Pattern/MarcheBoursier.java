import java.util.ArrayList;

public interface MarcheBoursier{

  public void ajouterObservateur(ObservateurConcret obs);
  public void supprimerObservateur(ObservateurConcret obs);
  public void notifierObservateurs();
  public void getEtat();

}
