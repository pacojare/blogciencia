<?php  include('../config.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/header.php'); ?>
	<title>Admin | Muro</title>
</head>
<body>
	<div class="header">
		<div class="logo">
			<a href="<?php echo BASE_URL .'admin/dashboard.php' ?>">
				<h1>Blog Científico - Admin</h1>
			</a>
		</div>
		<?php if (isset($_SESSION['user'])): ?>
			<div class="user-info">
				<span><?php echo $_SESSION['user']['username'] ?></span> &nbsp; &nbsp; 
				<a href="<?php echo BASE_URL . '/logout.php'; ?>" class="logout-btn">Salir</a>
			</div>
		<?php endif ?>
	</div>
	<div class="container dashboard">
		<h1>Bienvenido</h1>
		<div class="stats">
			<a href="users.php" class="first">
				<br>
				<span>Usuarios recien registrados</span>
			</a>
			<a href="posts.php">
				<br>
				<span>Artículos publicados</span>
			</a>
		</div>
		<br><br><br>
		<div class="buttons">
			<a href="users.php">Agregar usuarios</a>
			<a href="posts.php">Agregar Artículos</a>
		</div>
	</div>
</body>
</html>