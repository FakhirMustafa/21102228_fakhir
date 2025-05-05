<?php
echo "Nama: " . $_POST['nama'] . "<br>";
echo "Umur: " . $_POST['umur'] . "<br>";

$umur = (int) $_POST['umur'];

if ($umur >= 18) {
    echo "Status: Dewasa";
} else {
    echo "Status: Belum Dewasa";
}
?>
