MACHINE

    ECLUSE

SETS

    NIVEAU = { haut , bas } ;
    PORTE = { ouverte , fermee }

ABSTRACT_VARIABLES

    sas ,               /* niveau de l'eau dans le sas */
    pav ,               /* etat de la porte aval */
    pam                        /* etat de la porte amont */

INVARIANT

    sas : NIVEAU
    & pav : PORTE
    & pam : PORTE

    & not ( pam = ouverte & pav = ouverte )
    & not ( pam = ouverte & sas = bas )
    & not ( pav = ouverte & sas = haut )

    /* & not (pav = ouverte => sas = bas)
       & not (pam = ouverte => sas = haut) */


INITIALISATION

    sas , pav , pam := haut , fermee , fermee

OPERATIONS

    remplir =
        PRE
            sas = bas
            & ( pam = fermee & pav = fermee )
        THEN
            sas := haut
        END
    ;
    vider =
        PRE
            sas = haut
            & ( pam = fermee & pav = fermee )
        THEN
            sas := bas
        END
    ;
    ouvrir_amont =
        PRE
            sas = haut
            & ( pam = fermee & pav = fermee )
        THEN
            pam := ouverte
        END
    ;
    fermer_amont =
        PRE
            sas = haut
            & ( pam = ouverte & pav = fermee )
        THEN
            pam := fermee
        END
    ;
    ouvrir_aval =
        PRE
           sas = bas
            & ( pam = fermee & pav = fermee )
        THEN
            pav := ouverte
        END
    ;
    fermer_aval =
        PRE
            sas = bas
            & ( pam = fermee & pav = ouverte )
        THEN
            pav := fermee
        END
END
