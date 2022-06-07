<?PHP
$titel=str_replace("_"," ",substr(__FILE__,strpos(__FILE__,"opdracht"),-4));
include('opdracht_begin.php');
/****************************
TYP HIERONDER JOUW PHPCODE
****************************/

$waarde=9/10;
$kwad=pow($waarde,2);
$rec=(1/$kwad);
$tussenstap=floor($rec*1000000);
$afgerond=$tussenstap/1000000;
$a=3.657564756;
$b=4.4567567;
$c=round(sqrt(pow($a,2)+pow($b,2)),3);
$modulo=fmod(8,3);

echo "Het kwadraat van $waarde is $kwad.<br>
      Het omgekeerde daarvan is (afgerond:) $afgerond<br>
      $a in het kwadraat + $b in het kwadraat = $c in het kwadraat<br>
      $modulo";

/****************************
EINDE VAN JOUW PHPCODE
****************************/
include('opdracht_eind.php');
?>