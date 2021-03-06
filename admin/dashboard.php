<?php  include('../config.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/header.php'); ?>
	<title>Admin | Muro</title>
</head>
<body>	
	<?php if(isset($_SESSION['user']['role'])){
				switch ($_SESSION['user']['role']) {
					case 'Admin': ?>
						<div class="header">
							<div class="logo">
								<a href="<?php echo BASE_URL .'admin/dashboard.php' ?>">
									<h1>Blog Científico - Admin</h1>
								</a>
							</div>
							<?php if (isset($_SESSION['user'])): ?>
								<div class="user-info">
									<a target="_blank" href="<?php echo BASE_URL . '/index.php'; ?>" class="logout-btn">Ir a Blog</a>	&nbsp; &nbsp;				
									<span><?php echo $_SESSION['user']['username'] ?></span> &nbsp; &nbsp; 
									<a href="<?php echo BASE_URL . '/logout.php'; ?>" class="logout-btn">Salir</a>
								</div>
							<?php endif ?>
						</div>
						<div class="container dashboard">
							<h1>Bienvenido</h1>
							<div class="stats">
								<a href="users.php" class="first">
									<span>Usuarios</span>
								</a>	
								<a href="posts.php">
									<span>Publicaciones</span>
								</a>
								<a href="topics.php">
									<span>Etiquetas</span>
								</a>
					<?php break;
					case 'Autor': ?>
						<div class="header">
							<div class="logo">
								<a href="<?php echo BASE_URL .'admin/dashboard.php' ?>">
									<h1>Blog Científico - Autor</h1>
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
								<a href="posts.php">
									<span>Publicaciones</span>
								</a>
								<a href="topics.php">
									<span>Etiquetas</span>
								</a>
							</div>
							<br><br><br>		
						</div>						
					<?php break;					
				}
			} ?>	
</body>
</html>