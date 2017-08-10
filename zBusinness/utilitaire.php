<?php   

include "persistance.php";

    
class utilitaire{
   //public  $instance;


    public  function getAttributes($pkService){
        $instance=persistance::getInstance('root','','cicm');
        $champ = array ("*");
        $table = "services" ;
        $clausesChambres = array("services.code_service='$pkService'");
        $queryChambres = $instance->selectBD($table,$champ,$clausesChambres);
        $resultSetChambres=$instance->pdo->query($queryChambres);
        $resultSetChambres->setFetchMode(PDO::FETCH_OBJ);
        $objStr="";
        if($p=$resultSetChambres->fetch()){
            $objStr=$p->nom_service."#@#".
                    $p->prix_unitaire."#@#".
                    $p->categorie."#@#".
                    $p->statut."#@#".
                    $p->photos."#@#".
                    $p->standing."#@#".
                    $p->quantite_stock."#@#".
                    $p->desription."#@#".
                    $p->beneficiaire."#@#".
                    $p->date_attribution_service."#@#".
                    $p->date_liberation_service."#@#".
                    $p->deliver_service_agent;
        }
       return $objStr;
    }


    public function getAllPropertiesOfReservation(){
        $instance=persistance::getInstance('root','','cicm');
        $champ = array ("bgcolor","cni_personne","date_attribution_service","date_liberation_service");
        $table = "calendrier" ;
        $queryChambres = $instance->selectBD($table,$champ,null);
        $resultSetChambres=$instance->pdo->query($queryChambres);
        $resultSetChambres->setFetchMode(PDO::FETCH_OBJ);
        $objsTab=[];

        while($p=$resultSetChambres->fetch()){
            $objStr=array(
                'bgcolor'=>$p->bgcolor,
                'cni_personne'=>$p->cni_personne,
                'date_attribution_service'=>$p->date_attribution_service,
                'date_liberation_service'=>$p->date_liberation_service
            );
           array_push($objsTab,$objStr);

        }
        //print_r (json_encode($objsTab));
        $data=json_encode($objsTab);
        $fp = fopen("../data.json","w+"); 
        fputs($fp, $data); 
        fclose($fp);
    }



  
}





?>