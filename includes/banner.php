<?php if (isset($_SESSION['user']['username'])) { ?>
	<div class="logged_in_info">
		<span>Bienvenido  <?php echo $_SESSION['user']['username'] ?></span>
		|
		<span><a href="logout.php">Salir</a></span>
	</div>
<?php }else{ ?>
	<div class="banner">
		<div class="welcome_msg">
			<h1>Inspiración de hoy</h1>
			<p> 
			    Un día tu vida<br> 
			    Se va a cerrar ante tus ojos. <br> 
			    Asegurate de que pase. <br>
				<span>~ Gerard Way</span>
			</p>
			<a href="register.php" class="btn">Unete!</a>
		</div>

		<div class="login_div">
			<form action="<?php echo BASE_URL . 'index.php'; ?>" method="post" >
				<h2>Iniciar Sesión</h2>
				<div style="width: 60%; margin: 0px auto;">
					<?php include(ROOT_PATH . '/includes/errors.php') ?>
				</div>
				<input type="text" name="username" value="<?php echo $username; ?>" placeholder="Nombre Usuario">
				<input type="password" name="password"  placeholder="Contraseña"> 
				<button class="btn" type="submit" name="login_btn">Iniciar Sesión</button>
			</form>
		</div>
	</div>
<?php } ?>