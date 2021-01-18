<?php  include('config.php'); ?>
<!-- Source code for handling registration and login -->
<?php  include('includes/registration_login.php'); ?>

<?php include('includes/header.php'); ?>

<title>Blog Ciencia | Regístrate </title>
</head>
<body>
<div class="container">
	<!-- Navbar -->
		<?php include( ROOT_PATH . '/includes/navbar.php'); ?>
	<!-- // Navbar -->

	<div style="width: 40%; margin: 20px auto;">
		<form method="post" action="register.php" >
			<h2>Regístrate en LifeBlog</h2>
			<?php include(ROOT_PATH . '/includes/errors.php') ?>
			<input  type="text" name="username" value="<?php echo $username; ?>"  placeholder="Nombre de usuario">
			<input type="email" name="email" value="<?php echo $email ?>" placeholder="Email">
			<input type="password" name="password_1" placeholder="Contraseña">
			<input type="password" name="password_2" placeholder="Confirmar contraseña">
			<button type="submit" class="btn" name="reg_user">Registrarse</button>
			<p>
				¿Ya eres miembro? <a href="login.php">Inicia Sesión</a>
			</p>
		</form>
	</div>
</div>
<!-- // container -->
<!-- Footer -->
	<?php include( ROOT_PATH . '/includes/footer.php'); ?>
<!-- // Footer -->