<?php if (isset($_SESSION['user']['username'])) { ?>
	<div class="logged_in_info">
		<span>Bienvenido  <b><?php echo $_SESSION['user']['username'] ?></b></span>
		|
		<span><a href="logout.php">Salir</a></span>
	</div>
<?php }else{ ?>
	<div class="logged_in_info">
		<span><a href="login.php">Ingresar</a></span>
	</div>
<?php } ?>