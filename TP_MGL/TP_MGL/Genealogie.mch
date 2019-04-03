MACHINE
    Genealogie
    
SETS 
    PERSONNES  /* Ensemble des personnes ayant existe ou qui existeront un jour */
    
CONSTANTS 
    H0, F0     /* Ensemble des hommes et des femmes originaux. */
PROPERTIES
    H0<:PERSONNES & 
    F0<:PERSONNES & 
    H0/\F0={}  
    
VARIABLES
    Hommes, Femmes, Peres, Meres , Maries

INVARIANT
    Hommes <: PERSONNES
    & Femmes <: PERSONNES
    & Hommes /\ Femmes = {}
    /* mères : couples associant un enfant a sa mère */
    & Meres : (Hommes\/Femmes-H0-F0) --> Femmes
    & Peres : (Hommes\/Femmes-H0-F0) --> Hommes
    & Maries : Hommes <-> Femmes
    & Maries : Femmes >+> Hommes
    /* & Maries : Femmes +-> Hommes
       & Maries~ : Hommes +-> Femmes */ 
    
    /* Toute personne ayant un pere ou une mere en a au plus 1 de chaque */
    
    /* Un couple marie est necessairement forme d'un homme et d'une femme;    
       Chaque homme est marie au plus une fois;
       Chaque femme est mariee au plus une fois;
       Toute personne n'est pas necessairement mariee.
    */
    
    /* Deux parents d'une meme personne sont maries ensembles. */
    
    
INITIALISATION
    Hommes:=H0  || Femmes:=F0 ||
    Meres := {} || Peres :={} || Maries:={}
    
OPERATIONS
    /* Choisi une nouvelle personne et l'ajoute dans l'arborescence Pere / Mere */
    naitre(pere, mere) = 
    PRE 
    	pere : Hommes & mere : Femmes
    THEN 
	    ANY bambin WHERE
	        bambin : PERSONNES-Femmes-Hommes
	    THEN
	        CHOICE
	            Hommes:=Hommes\/{bambin}
	        OR
	            Femmes:=Femmes\/{bambin}
	        END ||
	        Peres(bambin):=pere ||
	        Meres(bambin):=mere
	        /* ou Meres:=Meres\/{bambin|->mere} */
	    END
	
	END
	
;
    
    /* Fait se marier 2 personnes */
    marier(p1, p2) = 
    PRE
 	    / ***** a completer ***** /
    THEN
	    / ***** a completer ***** /
	END;
    
    
    / * Renvoie si une personne p1 est un descendant direct de p2 * /
    res <-- estParent(p1, p2) = 
    PRE 
 	    / ***** a completer ***** /
    THEN
 	    / ***** a completer ***** /
    END;
    
    
    
    / * Renvoie si une personne p1 est un descendant direct ou indirect de p2 * /
    res <-- estAncetre(p1, p2) = 
    PRE 
 	    / ***** a completer ***** /
    THEN
 	    / ***** a completer ***** /
    END
*/    
END
    
