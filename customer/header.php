<!--start: Header -->
	<header>
		
		<!--start: Container -->
		<div class="container">
			
			<!--start: Row -->
			<div class="row">
					
				<!--start: Logo -->
				<div class="logo span3">
						
					<a class="brand" href="index.php"><img src="../img/logo4.png" alt="Logo"></a>
						
				</div>
				<!--end: Logo -->
					
				<!--start: Navigation -->
				<div class="span9">
					
					<div class="navbar navbar-inverse">
			    		<div class="navbar-inner">
			          		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			            		<span class="icon-bar"></span>
			            		<span class="icon-bar"></span>
			            		<span class="icon-bar"></span>
			          		</a>
			          		<div class="nav-collapse collapse">
			            		<ul class="nav">
			              			<li class="active"><a href="index.php">Home</a></li>
                                    <li class="dropdown">
			                			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu</a>
			                			<ul class="dropdown-menu">
			                  				<li><a href="produk.php">Menu Makanan</a></li>
											<li><a href="produk1.php">Menu Minuman</a></li>
											<li><a href="produk2.php">Menu Camilan</a></li>
			                			</ul>
			              			</li>
									<li><a href="testimoni.php">Testimonial</a></li>
									<li class="dropdown">
			                			<a href="#" class="dropdown-toggle" data-toggle="dropdown">About</a>
			                			<ul class="dropdown-menu">
											<li><a href="profil.php">About</a></li>
			                  				<li><a href="contact.php">Contact Us</a></li>
			                			</ul>
			              			</li>
                                    <li><a href="detail.php">Keranjang</a></li>
			              			<li class="dropdown">
			                			<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: orange;"><b>Hi, <?php echo $_SESSION['fullname'] ?></b></a>
			                			<ul class="dropdown-menu">
			                  				<li><a href="index1.php">Dashboard Pelanggan<b></b></a></li>
			                  				<li><a href="../logout.php">Logout</a></li>
			                			</ul>
			              			</li>
			            		</ul>
			          		</div>
			        	</div>
			      	</div>
					
				</div>	
				<!--end: Navigation -->
					
			</div>
			<!--end: Row -->
			
		</div>
		<!--end: Container-->			
			
	</header>
	<!--end: Header-->