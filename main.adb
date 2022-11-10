with ada.Text_IO, ada.Integer_Text_IO, gestion_kdo, gestion_activite, gestion_igloo, gestion_locataire; --gestion_elfes
use ada.Text_IO, Ada.Integer_Text_IO, gestion_kdo, gestion_activite, gestion_igloo, gestion_locataire; --gestion_elfes
procedure Main is
   T : T_stock;
   I : T_registre_igloo;
   A : T_registre_activite := (others => (others => 8));
begin

   put("bien le bonjour ! Que voulez vous faire ?"); new_line;

     put_line("gérer réservation");
   put_line("gérer igloo");
   put_line("gérer elfes");
   put_line("gérer stock cadeaux");

   put_line("saisissez votre choix!");
   visualisation_act(A); -- good

   construction(I); -- good

   visualisation(I); -- good

   saisie_kdo(T); -- good

   affichage_kdo(T); -- good

   reappro_KDO(T); -- terminer, jsp comment faire




end Main;
