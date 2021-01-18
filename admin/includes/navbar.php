<?php if(isset($_SESSION['user']['role'])){
				switch ($_SESSION['user']['role']) {
					case 'Admin': ?>
						<div class="header">
							<div class="logo">
								<a href="<?php echo BASE_URL .'admin/dashboard.php' ?>">
									<h1>Blog Científico - Admin</h1>
								</a>
							</div>
							<div class="user-info">
								<a target="_blank" href="<?php echo BASE_URL . '/index.php'; ?>" class="logout-btn">Ir a Blog</a>	&nbsp; &nbsp;				
								<span><?php echo $_SESSION['user']['username'] ?></span> &nbsp; &nbsp; <a href="<?php echo BASE_URL . '/logout.php'; ?>" class="logout-btn">Salir</a>
							</div>
						</div>
					<?php break;
					case 'Autor': ?>
						<div class="header">
							<div class="logo">
								<a href="<?php echo BASE_URL .'admin/dashboard.php' ?>">
									<h1>Blog Científico -Autor</h1>
								</a>
							</div>

							<div class="user-info">			
								<a target="_blank" href="<?php echo BASE_URL . '/index.php'; ?>" class="logout-btn">Ir a Blog</a>	&nbsp; &nbsp;				
								<span><?php echo $_SESSION['user']['username'] ?></span> &nbsp; &nbsp; <a href="<?php echo BASE_URL . '/logout.php'; ?>" class="logout-btn">Salir</a>
							</div>
						</div>
												
					<?php break;					
				}
			} ?>	