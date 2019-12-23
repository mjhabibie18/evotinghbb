<?php include('Header.php');?>
<div class="row">
	<div class="container">
		<div class="card-panel">
			<h5 class="center">Daftar Kandidat</h5>
			 <div class="row">
			 	<?php echo form_open_multipart('admin/tambah_kandidat');?>
			    <div class="col s6 offset-s3">
			      <div class="row">
			        <div class="input-field col s12">
			          <i class="material-icons prefix">account_circle</i>
			          <input id="icon_prefix" type="text" class="validate" name="nim">
			          <label for="icon_prefix">NIM</label>
			        </div>
			        <div class="input-field col s12">
			          <i class="material-icons prefix">perm_identity</i>
			          <input id="icon_prefix" type="text" class="validate" name="nama">
			          <label for="icon_prefix">Nama</label>
			        </div>
			        <div class="input-field col s12">
						 <select name="jurusan" id="jurusan">
							<option value="" disabled selected>Pilih Jurusan</option>										    
							<option value="Teknik Informatika">Teknik Informatika</option>
							 <option value="Sistem Informasi">Sistem Informasi</option>
							<option value="Menejemen">Menejemen</option>
							<option value="Akuntansi">Akuntansi</option>
							<option value="Agribisnis">Agribisnis</option>
							<option value="Desain Komunikasi Visual" >Desain Komunikasi Visual</option>
						<label>Jurusan</label>
					</div>
					<div class="input-field col s12">
						 <select name="jabatan" id="jabatan">
							<option value="" disabled selected>Pilih Jabatan</option>
							<option value="Ketua">Ketua BEM</option>
							<option value="Wakil">Wakil Ketua BEM</option>
						</select>
						<label>Jabatan</label>
					</div>
					<div class="input-field col s12">
			          <input id="icon_prefix" type="number" class="validate" name="no_kandidat">
			          <label for="icon_prefix">No Kandidat</label>
			        </div>
			        <div class="col s12">
						<div class="file-field input-field" >
							<div class="btn #1a237e indigo darken-4">
								<span>File</span>
								<input type="file" name="image">
							</div>
							<div class="file-path-wrapper">
								<input class="file-path validate" type="text" name="image">
							</div>
						</div>
					</div>
					<div class="center">
						<button class="btn waves-effect waves-light #1a237e indigo darken-4" type="submit" name="action">Daftar
						</button>
					</div>	
			      </div>
			    </div>
			    <?php echo form_close();?>
  			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	  $(document).ready(function() {
    $('select').material_select();
  });
        
</script>
<?php include('Footer.php');?>