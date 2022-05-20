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
    if (isset($_POST["station"]) and isset($_POST["dn"])) {
        $st = $_POST["station"];
        $dn = $_POST["dn"];
    } else {
        $st = "";
        $dn = "";
    }
    $c = mysql_connect("localhost", "root", "");
    $db = mysql_select_db("BD2021");
    $req = "SELECT Nom FROM station WHERE IdStation = $st";
    $res = mysql_query($req);
    $e = mysql_fetch_array($res);
    echo ("Station : $e[0]");
    ?>
    <table>
        <tr>
            <th>Saison</th>
            <th>Annee</th>
            <th>Meusure enregister</th>
        </tr>
        <?php
        $req2 = "SELECT Saison , Annee , $dn FROM meusure WHERE IdStation = $st";
        $res2 = mysql_query($req2);
        while ($e = mysql_fetch_array($res2)) {
        ?>
            <tr>
                <td><?php echo ($e[0]); ?></td>
                <td><?php echo ($e[1]); ?></td>
                <td><?php echo ($e[2]); ?></td>
            </tr>

        <?php
        }
        ?>
    </table>
</body>

</html>