<?php
$nama = "Mas Fakir";
$umur = 23;

echo " Muhamad Taufiq Hidayat";
echo "</br>"; //Memberi baris baru
echo "Halo, nama saya $nama   dan saya berumur $umur   tahun.";

?>

<?php $a = 10;
$b = 5;
echo "</br>";
echo $a + $b . " Ini Penjumlahan"; // Penjumlahan 
echo "</br>";
echo $a - $b . " Ini Pengurangan"; // Pengurangan
echo "</br>";
echo $a * $b; // Perkalian
echo "</br>";
echo $a / $b; // Pembagian 
echo "</br>";
echo $a % $b;
echo "</br>"; // Modulus sisa bagi 
?>

<?php
$nilai = 80;
if ($nilai >= 75) {
    echo "Lulus";
} else {
    echo "Tidak Lulus";
}
echo "</br>";
?>


<?php
$hari = "Kamis";

switch ($hari) {
    case "Senin":
        echo "Hari ini Senin";
        break;
    case "Selasa":
        echo "Hari ini Selasa";
        break;
    default:
        echo "Hari tidak diketahui";
}
echo "</br>";
?>

<?php for ($i = 1; $i <= 5; $i++) {
    echo "Angka ke-$i <br>";
}
?>

<?php
$x = 1;
while ($x <= 5) {
    echo "Angka $x <br>";
    $x++;
}

?>

<?php
$buah = ["Apel", "Jeruk", "Mangga", "Markisa", "Salak"];
foreach ($buah as $b) {
    echo "Buah: $b <br>";
}
?>

<?php $hewan = ["Kucing", "Anjing", "Burung"];
echo $hewan[2]; // Output: Kucing ?>