<?php require('header.php'); ?>

			<ul class="breadcrumb" style="margin-top:1px;">
				<li>
					<i class="icon-home"></i>
					<a href="index.php">VIT SHUTTLE CAB</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Viewing Schedule</a></li>
			</ul>
			
						<table class="table table-striped table-bordered" style="width:90%; margin:auto;">
						<h2 style="text-indent:20px;">Allmart to SJT  </h2>
						  <thead>
							  <tr>
								  <th>Driver Name</th>
								         <td>   GURU RATAN                </td>
										   <td>      SAHIL CHOPRA             </td>
										     <td>      RAHUL RAJ             </td>
											   <td>        AMAN SAI           </td>  
											   <td>        RAMIT GUPTA           </td>
										 
								  <th>Cab Number</th>
								            <td>           113        </td>
										   <td>               675    </td>
										     <td>              355     </td>
											   <td>               234    </td>  
											   <td>                  5225 </td>
								  <th>From</th>
								   <td>          SJT         </td>
										   <td>          ALLMART         </td>
										     <td>  HOSTEL                 </td>
											   <td>  HOSTEL                 </td>  
											   <td>             SJT      </td>
								  <th>Destination</th>
								   <td>             ALLMART      </td>
										   <td>           HOSTEL        </td>
										     <td>     SJT              </td>
											   <td>   ALLMART                </td>  
											   <td>        HOSTEL           </td>
								  <th>Departure</th>
								   <td>         2015-10-06 15:50:53          </td>
										   <td>     2015-10-06 15:50:53              </td>
										     <td>   2015-10-06 15:50:53                </td>
											   <td>  2015-10-06 15:50:53                 </td>  
											   <td>   2015-10-06 15:50:53                </td>
								  <th>Expected Arrival</th>
								   <td>             2015-10-06 15:50:53      </td>
										   <td>    2015-10-06 15:50:53               </td>
										     <td>   2015-10-06 15:50:53                </td>
											   <td>    2015-10-06 15:50:53               </td>  
											   <td>    2015-10-06 15:50:53               </td>
								  <th>Next stop</th>
								   <td>              library     </td>
										   <td>      enjo             </td>
										     <td>    library               </td>
											   <td> enjo                  </td>  
											   <td>  subway                 </td>
								  <th>Status</th>
								   <td>     reached              </td>
										   <td>    travel               </td>
										     <td>    reached               </td>
											   <td>   travel                </td>  
											   <td>      reached             </td>
							  </tr>
						  </thead>   
						  <tbody>
<?php
include ('db/dbcon.php');
$result= mysqli_query($con,"select * from schedule
LEFT JOIN cab ON schedule.cabid = cab.cabid
LEFT JOIN driver ON schedule.driverid = driver.driverid
 where destination_location='SJT' ORDER BY schedule.scheduleid DESC ") or die (mysql_error());
while ($row= mysqli_fetch_array ($result) ){
$id=$row['scheduleid'];
$busid=$row['cabid'];
$driverid=$row['driverid'];



?>
							<tr>
								<td><?php echo $row['firstname']." ".$row['lastname']; ?></td>
								<td><span class="label label-success"><?php echo $row['cab_number']; ?></span></td>
								<td><?php echo $row['from_location']; ?></td>
								<td><?php echo $row['destination_location']; ?></td>
								<td><span class="label label-info"><?php echo date("M d, Y H:i:s",strtotime($row['departure_time'])); ?></span></td>
								<td><span class="label label-success"><?php echo ($row['arrival_time'] == "0000-00-00 00:00:00") ? "Travel" : date("M d, Y H:i:s",strtotime($row['arrival_time'])); ?></span></td>
								<td><span class="label label-success"><?php echo $row['terminal_location']; ?></span></td>
								<?php
									if ($row['status_operation'] == 'On Travel') {
										echo "<td><span class='label label-info'>".$row['status_operation']."</span></td>";
									} elseif ($row['status_operation'] == 'Cancelled') {
										echo "<td><span class='label label-warning'>".$row['status_operation']."</span></td>";
									} else {
										echo "<td><span class='label label-success'>".$row['status_operation']."</span></td>";
									}
								?>
							</tr>
<?php } ?>					  
						  </tbody> 
					  </table> 
					  
<br />
<br />
<br />

						<table class="table table-striped table-bordered" style="width:90%; margin:auto;">
						<h2 style="text-indent:20px;">Hostel to allmart </h2>
						  <thead>
							  <tr>
								  <th>Driver Name</th>
								  <th>Cab Number</th>
								  <th>From</th>
								  <th>Destination</th>
								  <th>Departure</th>
								  <th>Expected Arrival</th>
								  <th>Next stop</th>
								  <th>Status</th> 
							  </tr>
						  </thead>   
						  <tbody>
<?php
include ('db/dbcon.php');
$result= mysql_query("select * from schedule
LEFT JOIN cab ON schedule.cabid = cab.cabid
LEFT JOIN driver ON schedule.driverid = driver.driverid
 where destination_location='SJT' ORDER BY schedule.scheduleid DESC ") or die (mysql_error());
while ($row= mysql_fetch_array ($result) ){
$id=$row['scheduleid'];
$busid=$row['cabid'];
$driverid=$row['driverid'];
?>
							<tr>
								<td><?php echo $row['firstname']." ".$row['lastname']; ?></td>
								<td><span class="label label-success"><?php echo $row['cab_number']; ?></span></td>
								<td><?php echo $row['from_location']; ?></td>
								<td><?php echo $row['destination_location']; ?></td>
								<td><span class="label label-info"><?php echo date("M d, Y H:i:s",strtotime($row['departure_time'])); ?></span></td>
								<td><span class="label label-success"><?php echo ($row['arrival_time'] == "0000-00-00 00:00:00") ? "Travel" : date("M d, Y H:i:s",strtotime($row['arrival_time'])); ?></span></td>
								<td><span class="label label-success"><?php echo $row['terminal_location']; ?></span></td>
								<?php
									if ($row['status_operation'] == 'On Travel') {
										echo "<td><span class='label label-info'>".$row['status_operation']."</span></td>";
									} elseif ($row['status_operation'] == 'Cancelled') {
										echo "<td><span class='label label-warning'>".$row['status_operation']."</span></td>";
									} else {
										echo "<td><span class='label label-success'>".$row['status_operation']."</span></td>";
									}
								?>
							</tr>
<?php } ?>					  
						  </tbody> 
					  </table> 
					  
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

<?php require('footer.php'); ?>