<?php session_start();
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
} ?>
<h2>Selamat datang,
    <?php echo $_SESSION['username']; ?>
    <a href="form.php">
        <button>Pergi ke Form</button>
    </a>
</h2> <a href="logout.php">Logout</a>