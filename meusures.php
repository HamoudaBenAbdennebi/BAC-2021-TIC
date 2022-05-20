<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    if (isset($_POST["station"]) and isset($_POST["saison"]) and isset($_POST["annee"]) and isset($_POST["temp"]) and isset($_POST["P"])) {
        $st = $_POST["station"];
        $sa = $_POST["saison"];
        $an = $_POST["annee"];
        $tmp = $_POST["temp"];
        $p = $_POST["P"];
    } else {
        $st = "";
        $sa = "";
        $an = "";
        $tmp = "";
        $p = "";
    }
    $c = mysql_connect("localhost", "root", "");
    $db = mYsql_select_db("BD2021");
    $req = "SELECT * FROM `meusure` WHERE IdStation = $st and Annee= $an and Saison = '$sa'";
    $res = mysql_query($req);
    if (mysql_num_rows($res) > 0)
        echo ("Meusures deja enregister");
    else {
        $req2 = "INSERT INTO meusure (IdStation, Annee, Saison, Temperature, Pluie) VALUES ('$st', '$an', '$sa', '$tmp', '$p');";
        $res2 = mysql_query($req2);
        echo ("Ajout avec success");
    }

    ?>
</body>

</html>