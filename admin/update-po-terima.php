<?php 
include "../conn.php";
if(isset($_POST['update'])){
				$id	     		= $_POST['id'];
				$nopo	 		= $_POST['nopo'];
				$kd_cus	 		= $_POST['kd_cus'];
				$kode	 		= $_POST['kode'];
				$tanggal 		= $_POST['tanggal'];
                $qty     		= $_POST['qty'];
                $total   		= $_POST['total'];
				$status_makanan = $_POST['status_makanan'];
				
				$update = mysqli_query($koneksi, "UPDATE po_terima SET nopo='$nopo', kd_cus='$kd_cus', kode='$kode', tanggal='$tanggal', qty='$qty', total='$total', status_makanan='$status_makanan' WHERE id='$id'") or die(mysqli_error());
				if($update){
					echo "<script>alert('Data Po Terima berhasil diupdate!'); window.location = 'po-terima.php'</script>";
				}else{
					echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Data gagal disimpan, silahkan coba lagi.</div>';
				}
			}
            ?>