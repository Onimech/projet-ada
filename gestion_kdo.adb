with ada.Text_IO, ada.Integer_Text_IO, outils;
  use ada.Text_IO, Ada.Integer_Text_IO, outils;

package body gestion_kdo is






   Procedure saisie_kdo (T : out T_stock) is

      type Nb_stock is array (integer range 1..4) of integer;
        N1, N2, N3, N4 : integer;
   Begin

      put("combien de boisson d'accueil ?"); saisie_secur_entier(N1);
      T(boisson) := N1;

      put("combien de boites de bisuit ?"); saisie_secur_entier(N2);
      T(biscuit) := N2;

      put("combien de  boîte de chocolats de Noël ?"); saisie_secur_entier(N3);
      T(chocolat):= N3;

      put("combien de corbeille fruits confits ?"); saisie_secur_entier(N4);
      T(fruits) := N4;

   end saisie_kdo;


   procedure affichage_kdo (T: in t_stock) is
   begin
      for i in T'Range loop
         put(t_cadeau'image(i)); put(":");
           put(T(i)); new_line;

      end loop;

   end affichage_kdo;


   procedure reappro_kdo (T: out t_stock) is
      s : string(1..9);
      k : Integer;
      KDO : T_cadeau;
      NbK : integer;
      begin
         loop
            begin
      put("quel cadeau voulez vous réapprovisionner?"); get_line(s,k);
      --une fois saisi on trouve à quel cadeau ça correspond, on demande de combien on veut réappro... saisie sécurisée d'entier et on ajoute l'entier à la valeur du tableau
         KDO := t_cadeau'value(s(1..k)); exit;
      exception
            when constraint_error => put_line("pas compris, ressayez");
      end;
      end loop;
      put("combien de "); put(t_cadeau'image(KDO)); put("voulez vous réapprovisionner? "); saisie_secur_entier(nbK);

      -- approvisionner KDO de NbK
   -- je sais pas comment faire ici :/
   end reappro_kdo;
   end gestion_kdo;

