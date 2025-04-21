var nama = "Fakhir"; // Global scope
let umur = 10;       // Block scope
const kota = "Purwokerto"; // Tidak dapat diubah

let hasil = '';

hasil += "<p>Nama : " + nama + "</p>";
hasil += "<p>Umur: " + umur + "</p>";
hasil += "<p>Kota: " + kota + "</p>";

// IF ELSE
if (umur > 18) {
    hasil += "<p>Status: Dewasa</p>";
} else {
    hasil += "<p>Status: Anak-anak</p>";
}

// FOR loop
hasil += "<h3>Perulangan For:</h3><ul>";
for (let i = 0; i < 5; i++) {
    hasil += "<li>i = " + i + "</li>";
}
hasil += "</ul>";

// WHILE loop
hasil += "<h3>Perulangan While:</h3><ul>";
let j = 0;
while (j < 5) {
    hasil += "<li>j = " + j + "</li>";
    j++;
}
hasil += "</ul>";

// Fungsi
hasil += "<h3>Fungsi:</h3><ul>";
function sapa(nama) {
    return "Halo, " + nama;
}
// Tambahkan hasil fungsi ke dalam hasil
hasil += "<li>" + sapa("Fakhir") + "</li>";
hasil += "</ul>";

// Const
hasil += "<h3>Const:</h3>"
const mahasiswa = {
    nama: "Fakhir",
    umur: 10,
    sapa: function () {
        return "Halo, saya " + this.nama;
    }
};
hasil += "<li>" + mahasiswa.sapa() + "</li>";
hasil += "</ul>";

// Tampilkan ke halaman
document.getElementById("output").innerHTML = hasil;
