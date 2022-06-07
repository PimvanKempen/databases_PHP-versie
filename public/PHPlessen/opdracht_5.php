<?PHP
$titel=str_replace("_"," ",substr(__FILE__,strpos(__FILE__,"opdracht"),-4));
include('opdracht_begin.php');
/****************************
TYP HIERONDER JOUW PHPCODE
****************************/

$reeks=array();
//Deze for-loop vult de array $reeks met getallen
for ($t=1;$t<=8;$t++) {
  array_push($reeks,$t);
}
print_r($reeks);
echo "<br>";
$macht3=array();
foreach ($reeks as $waarde) {
  array_push($macht3,pow($waarde,3));
}
$n = 1;
while (1000 > $macht3[$n]) {
  echo "$macht3[$n]<br>";
  $n++;
}

/****************************
EINDE VAN JOUW PHPCODE
****************************/
include('opdracht_eind.php');
?>