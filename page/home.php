<body bgcolor="Pink">
<h1><p align="center">
<font color="maroon">
   	Selamat Datang di Sistem <br>
	Penentuan Penerima Beasiswa di Universitas Darussalam <br>
</h1> 
</b>
</p>
</font>
<div class="col-md-8">
	    <div class="panel panel-info">
	        <div class="panel-heading"><h3 class="text-center">BEASISWA YANG TERSEDIA</h3></div>
	        <div class="panel-body">
	            <table class="table table-condensed">
	                <thead>
	                    <tr>
	                        <th>No</th>
	                        <th>Nama</th>
	                        <th></th>
	                    </tr>
	                </thead>
	                <tbody>
	                    <?php $no = 1; ?>
	                    <?php if ($query = $connection->query("SELECT * FROM beasiswa")): ?>
	                        <?php while($row = $query->fetch_assoc()): ?>
	                        <tr>
	                            <td><?=$no++?></td>
	                            <td><?=$row['nama']?></td>
	                            <td>
	                                <div class="btn-group">
	                                    <a href="?page=beasiswa&action=update&key=<?=$row['kd_beasiswa']?>" ></a>
	                                    <a href="?page=beasiswa&action=delete&key=<?=$row['kd_beasiswa']?>" ></a>
	                                </div>
	                            </td>
	                        </tr>
	                        <?php endwhile ?>
	                    <?php endif ?>
	                </tbody>
	            </table>
	        </div>
	    </div>
	</div>