<?php 
session_start();
if (empty($_SESSION['username'])){
	header('location:../index.php');	
} else {
	include "../conn.php";
    }
?>
<!DOCTYPE html>
<html lang="en">
<?php include "head.php"; ?>
<body>
    
	<?php include "header.php"; ?>
	
	<!-- start: Slider -->
	<div class="slider-wrapper">

		<div id="da-slider" class="da-slider">
			<div class="da-slide">
				<h2>Bebek Srundeng</h2>
				<p>Bebek Goreng Dengan Cita Rasa gurih Dan Empuk dipadukan dengan sambal yang bikin kringetan dan nasi hangat. </p>
				<a href="produk.php" class="da-link">Lihat Produk</a>
				<div class="da-img"><img src="../img/parallax-slider/Bebek.jpg" style="border: 3px solid whitesmoke; border-radius: 10px;" alt="Bebek Srundeng" /></div>
			</div>
			<div class="da-slide">
				<h2>Ayam Geprek</h2>
				<p>Ayam Goreng Crispy Dengan Cita Rasa gurih dipadukan dengan sambal pedas nasi hangat.</p>
				<a href="produk.php" class="da-link">Lihat Produk</a>
				<div class="da-img"><img src="../img/parallax-slider/AyamGeprek.jpg" style="border: 3px solid whitesmoke; border-radius: 10px;" alt="Ayam Geprek" /></div>
			</div>
			<div class="da-slide">
			<h2>Bakmi Ambyar</h2>
				<p>Bakmi Dengan Bumbu rempah dengan cita rasa yang berbeda dari bakmi lainnya dengan tambahan topping ayam, telur, pentol dan sayur.</p>
				<a href="produk.php" class="da-link">Lihat Produk</a>
				<div class="da-img"><img src="../img/parallax-slider/Bakmi.jpg" style="border: 3px solid whitesmoke; border-radius: 10px;" alt="Bakmi Ambyar" /></div>
			</div>
			<div class="da-slide">
				<h2>Gurami Asam Manis</h2>
				<p>Gurami Goreng Crispy Dengan Bumbu rempah dan cita rasa pedas, manis, dan gurih.</p>
				<a href="produk.php" class="da-link">Lihat Produk</a>
				<div class="da-img"><img src="../img/parallax-slider/GuramiAsamManis.jpg" style="border: 3px solid whitesmoke; border-radius: 10px;" alt="Gurami Asam Manis" /></div>
			</div>
			<div class="da-slide">
				<h2>Pentol Crispy</h2>
				<p>Pentol Dengan balutan tepung dan digoreng dengan cita rasa gurih dan empuk dipadukan dengan sambal yang pedas (Isi satu porsi 12 biji, bisa request tidak pedas).</p>
				<a href="produk.php" class="da-link">Lihat Produk</a>
				<div class="da-img"><img src="../img/parallax-slider/PentolC.jpg" style="border: 3px solid whitesmoke; border-radius: 10px;" alt="Pentol Crispy" /></div>
			</div>
			<nav class="da-arrows">
				<span class="da-arrows-prev"></span>
				<span class="da-arrows-next"></span>
			</nav>
		</div>
		
	</div>
	<!-- end: Slider -->
			
	<!--start: Wrapper-->
	<div id="wrapper">
				
		<!--start: Container -->
    	<div class="container">
	
      		<!-- start: Hero Unit - Main hero unit for a primary marketing message or call to action -->
			<!--<div class="hero-unit">
        		<p>
                Warung Bebek Srundeng Merupakan warung online yang menyediakan aneka menu makanan sambelan dan bakmi yang dapat di pesan secara online dengan metode pembayaran cash on delivery.
				</p>
        		<p><a class="btn btn-success btn-large" href="profil.php">Tentang Kami &raquo;</a></p>
                                
      		</div>
            <!--<div class="title"><h3>Keranjang Anda</h3></div>
            <div class="hero-unit">
            </div> -->
			<!-- end: Hero Unit -->

      		<!-- start: Row -->
            
      		<div class="row">
	                <?php
                    $sql = mysqli_query($koneksi, "SELECT * FROM produk ORDER BY kode DESC limit 9");
                    while($data = mysqli_fetch_array($sql)){
                    ?>
        		<div class="span4">
          			<div class="icons-box">
                        <div class="title"><h3><?php echo $data['nama']; ?></h3></div>
                        <img src="../admin/<?php echo $data['gambar']; ?>" style="border: 2px solid grey; border-radius: 5px; width: 250px; height: 200px;" />
						<div><h3>Rp.<?php echo number_format($data['harga'],2,",",".");?></h3></div>
					<!--	<p>
						
						</p> -->
						<div class="clear"><a href="detailproduk.php?kd=<?php echo $data['kode'];?>" class="btn btn-lg btn-danger">Details</a> <a href="addtocart.php?kd=<?php echo $data['kode'];?>" class="btn btn-lg btn-success">Beli &raquo;</a></div>
					
                    </div>
        		</div>
                <?php   
              }
              
              
              ?>
<!---->
      		</div>
			<!-- end: Row -->
      		
		<!--	<hr>
		
			<!-- start Clients List -->	
		<!--	<div class="clients-carousel">
		
				<ul class="slides clients">
					<li><img src="img/logos/1.png" alt=""/></li>
					<li><img src="img/logos/2.png" alt=""/></li>	
					<li><img src="img/logos/3.png" alt=""/></li>
					<li><img src="img/logos/4.png" alt=""/></li>
					<li><img src="img/logos/5.png" alt=""/></li>
					<li><img src="img/logos/6.png" alt=""/></li>
					<li><img src="img/logos/7.png" alt=""/></li>
					<li><img src="img/logos/8.png" alt=""/></li>
					<li><img src="img/logos/9.png" alt=""/></li>
					<li><img src="img/logos/10.png" alt=""/></li>		
				</ul>
		
			</div>
			<!-- end Clients List -->
		
			<hr>
			
			<!-- start: Row -->
			<div class="row">
				
				<!-- start: Icon Boxes -->
				<div class="icons-box-vert-container">

					<!-- start: Icon Box Start -->
					<div class="span6">
						<div class="icons-box-vert">
							<i class="ico-ok ico-color circle-color big"></i>
							<div class="icons-box-vert-info">
								<h3>Pengiriman Cepat</h3>
								<p>Warung Bebek Srundeng siap mengirim pesanan anda secara gratis dengan min pemesanan 3 bungkus.</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!-- end: Icon Box-->

					<!-- start: Icon Box Start -->
					<div class="span6">
						<div class="icons-box-vert">
							<i class="ico-cup  ico-white circle-color-full big-color"></i>
							<div class="icons-box-vert-info">
								<h3>Rasa Juara</h3>
								<p>Warung Bebek Srundeng memiliki cita rasa yang berbeda dari warung lainnya, di proses higienis dan dari bahan berkualitas.</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!-- end: Icon Box -->

				</div>
				<!-- end: Icon Boxes -->
				<div class="clear"></div>
			</div>
			<!-- end: Row -->
			
			<hr>
			
		</div>
		<!--end: Container-->
	
	</div>
	<!-- end: Wrapper  -->			

    <!-- start: Footer Menu -->
	<div id="footer-menu" class="hidden-tablet hidden-phone">

		<!-- start: Container -->
		<div class="container">
			
			<!-- start: Row -->
			<div class="row">

				<!-- start: Footer Menu Logo -->
				<div class="span2">
					<div id="footer-menu-logo">
						<a href="#"><img src="../img/logo4.png" alt="logo" /></a>
					</div>
				</div>
				<!-- end: Footer Menu Logo -->

				<!-- start: Footer Menu Links-->
				<div class="span9">
					
					<div id="footer-menu-links">

						<ul id="footer-nav">

							<li><a href="#">Free Delivery Min 3 Pemesanan</a></li>

							<li><a href="#">Cash On Delivery (COD)</a></li>

							<li><a href="#">Pelayanan Cepat</a></li>

						</ul>

					</div>
					
				</div>
				<!-- end: Footer Menu Links-->

				<!-- start: Footer Menu Back To Top -->
				<div class="span1">
						
					<div id="footer-menu-back-to-top">
						<a href="#"></a>
					</div>
				
				</div>
				<!-- end: Footer Menu Back To Top -->
			
			</div>
			<!-- end: Row -->
			
		</div>
		<!-- end: Container  -->	

	</div>	
	<!-- end: Footer Menu -->
<?php include "footer.php"; ?>
<!-- start: Java Script -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery-1.8.2.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/flexslider.js"></script>
<script src="../js/carousel.js"></script>
<script src="../js/jquery.cslider.js"></script>
<script src="../js/slider.js"></script>
<script defer="defer" src="../js/custom.js"></script>
<!-- end: Java Script -->

</body>
</html>