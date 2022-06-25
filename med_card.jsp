<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*, az.com.cybersolutions.medhe.bean.UtlItemBean" errorPage="" %>
	<!DOCTYPE html
		PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>M E D H E</title>

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

		<script src="./jq/JQuery.js"></script>

		<script type="text/javascript" src="./jq/loaddata1.js"></script>

		<script src="./jq/easing.js"></script>

		<script src="./jq/jquery-ui.css"></script>

		<script src="./jq/jquery-ui.js"></script>
		<script type="text/javascript" src="./jq/jquery.blockUI.js"></script>

		<script src="https://code.iconify.design/2/2.2.1/iconify.min.js"></script>
		<script language="javascript">
			/*
				function gotoPage(forwPage, title){
					window.open( "lab.jsp?lab_main_page="+forwPage+"&title="+title, "_self");
				}
			*/
		</script>

		<style>
			table {
				border-spacing: 0;
				border-radius: 10px;
				overflow-y: scroll
			}

			/* table th {
				border-radius: 10px;
			} */
			/* table td {
				border-bottom: 1px solid black;
				background-color: lightgray;
			} */

			.container {
				width: 100%;
				height: 80vh;
			}

			.wrapper {
				width: 100%;
				height: 100%;
				display: flex;
				flex-direction: row;
				justify-content: space-between;
			}

			.left {
				width: 33%;
				height: 80vh;
			}

			.leftWrapper {
				width: 100%;
				height: 80vh;
				display: flex;
				justify-content: center;
				align-items: flex-start;
				margin-top: 40px;
			}


			.center {
				width: 33%;
				height: 80vh;
				display: flex;
				justify-content: flex-start;
				align-items: center;
				margin-top: 40px;
			}

			.centerWrapper {
				width: 100%;
				height: 80vh;
				display: flex;
				flex-direction: column;
				justify-content: flex-start;
				align-items: center;
			}

			.say {
				width: 50px;
				height: 30px;
				border-radius: 5px;
				border: 1px solid #92c9e6;
				margin-right: 10px;
			}

			.dermanAdi {
				width: 255px;
				height: 30px;
				border-radius: 5px;
				border: 1px solid #92c9e6;
				margin-right: 10px;
			}

			.derman {
				width: 100%;
				display: flex;
				flex-direction: row;
				justify-content: space-between;
			}

			.addButton {
				background-color: aqua;
				border-radius: 5px;
				border: 1px solid #92c9e6;
				height: 35px;
				border: none;
				cursor: pointer;
				box-shadow: #92c9e6;
				width: 56px;
			}

			.addButton1 {
				background-color: aqua;
				border-radius: 5px;
				border: 1px solid #92c9e6;
				height: 35px;
				border: none;
				cursor: pointer;
				box-shadow: #92c9e6;
				width: 56px;
			}

			.addButton4 {
				background-color: aqua;
				border-radius: 5px;
				display: flex;
				justify-content: center;
				align-items: center;
				/* border: 1px solid #92c9e6; */
				height: 40px;
				border: none;
				cursor: pointer;
				box-shadow: #92c9e6;
			}

			.right {
				width: 33%;
				height: 80vh;
			}

			.rightWrapper {
				width: 100%;
				height: 75vh;
				display: flex;
				justify-content: center;
				align-items: flex-start;
				margin-top: 40px;
			}

			.table {
				margin: auto auto;
				display: block;
				width: 400px;
				max-height: 100%;
				border-collapse: collapse;
			}

			.table td,
			.table th {
				padding: 12px 15px;
				border: 1px solid #ddd;
				text-align: center;
				font-size: 16px;
				width: 450px;
				height: 20px;
			}

			.table tbody {
				overflow-y: scroll;
			}

			.table th {
				background-color: #92c9e6;
				color: #ffffff;
			}

			.table tbody tr:nth-child(even) {
				background-color: #d1e8f5;
			}

			.table tbody tr:hover {
				background-color: #92c9e6;
				cursor: pointer;
			}

			.input {
				width: 100px;
				height: 30px;
				border-radius: 5px;
				border: 1px solid #92c9e6;
			}

			.width {
				width: 100%;
			}

			.icons {
				font-size: 20px;
			}

			.tableBck {
				margin-top: 10px;
				width: 100%;
				min-height: 150px;
				max-height: 150px;
				box-shadow: 1px 1px 10px #92c9e6;
				border-radius: 8px;
			}

			.firstTableBack {
				width: 400px;
				height: 75vh;
				box-shadow: 1px 1px 10px #92c9e6;
				border-radius: 8px;
			}

			.thirdTableBack {
				width: 400px;
				height: 100%;
				box-shadow: 1px 1px 10px #92c9e6;
				border-radius: 8px;
			}

			.centerBotTableBack {
				width: 100%;
				height: 150px;
				box-shadow: 1px 1px 10px #92c9e6;
				border-radius: 8px;
				margin-bottom: 10px;
				margin-top: 20px;
			}

			.calendar {
				width: 100%;
				display: flex;
				flex-direction: row;
				justify-content: space-between;
				align-items: center;
			}

			.defe {
				width: 100%;
				margin-top: 5px;
				display: flex;
				flex-direction: row;
				justify-content: space-between;
				align-items: center;
			}

			.checkInput {
				width: 40%;
				display: flex;
				flex-direction: row;
				justify-content: space-between;
				align-items: center;
			}

			.input2 {
				width: 50px;
				height: 30px;
				border-radius: 5px;
				border: 1px solid #92c9e6;
			}

			.labels {
				width: 85%;
				display: flex;
				flex-direction: row;
				justify-content: space-between;
				align-items: center;
			}

			input[type="checkbox"] {
				appearance: none;
				-webkit-appearance: none;
				width: 30px;
				height: 30px;
				border: 1px solid #92c9e6;
				border-radius: 5px;
				display: flex;
				justify-content: center;
				align-items: center;
			}

			input[type="checkbox"]:after {
				font-family: "Font Awesome 5 Free";
				content: "\f00c";
				font-weight: 900;
				font-size: 25px;
				display: none;
			}

			input[type="checkbox"]:checked:after {
				display: block;
			}
		</style>
		<script language="javascript">

			$(document).ready(function () {
				$(document).ajaxStart($.blockUI).ajaxStop($.unblockUI);
				$.blockUI.defaults.css = {};

				$(".addButton").click(function () {
					addToTable();
				});

				$(document).delegate("#2icon", "click", function () {
					$(this).parent().parent().remove();
					
				});

				$(document).delegate("#1icon", "click", function () {
					$(this).parent().parent().remove();
					var fkPr = $(this).parent().parent().attr('fkpresc')
					$.post("dispatch",
					{
						cmd: "stnrDeletePrescriptionByFkPrsc",
						fkPresc: fkPr,
					}
				)});

				$(".addButton1").click(function () {
					addToTableDate()
				})
				var fkAppeal;
				var data;
				$("#tblPatList tbody tr").click(function () {
					tr = $(this);
					fkAppeal1 = tr.attr('fkappeal');
					fkAppeal = fkAppeal1;
					/* tr.css("background-color","#92c9e6") */
					/*var table = $("#tblPatList")
					var row = $("tr")
					 for(var i = 0 ; i < row.length ; i ++){
						var currentRow = table.row[i]
						currentRow.click()
					} */
					/* closest("tr").css("background-color","red").siblings("tr").css("background-color","blue") */
					
					$.post("dispatch",
							{
								cmd: "stnrGetPrscTimingsByFkAppeal",
								fkAppeal: fkAppeal,
							},function(data){

								var times = toArr(data, "resultTim");
								var detailes = toArr(data , "resultDet");
								
								console.log(times) 
								console.log(detailes)
								
								$("#tblPrscList tbody").empty()

								$("#tblPrscList tbody").append(tr);
									for(var i = 0 ; i<times.length; i++){ 
										var fkPresc = times[i][0]
										var tr = $("<tr>")
										tr.attr("fkPresc",fkPresc)
										var tdtxt = "";
										var mqdtxt = "";
										for(var d = 0 ; d<detailes.length; d++){ 
											if(times[i][0] == detailes[d][0]){ 
												
												tdtxt  = detailes[d][1]  + "</br>" + tdtxt;
												mqdtxt = detailes[d][3]  + "</br>" + mqdtxt;
												
												var tmTm = times[i][3].substring(0,2)+":"+times[i][3].substring(2,4)+":"+times[i][3].substring(4,6)
												var tmDt = times[i][2].substring(0,4) + "."+times[i][2].substring(4,6) + "."+times[i][2].substring(6,8)
												var tmCbd = times[i][4]
												var tmHibd = times[i][5]
												var tmRd = times[i][6]
												if((tmDt === '.'||tmDt === '..')&&(tmTm===':'||tmTm==='::'||tmTm==='')&&(tmCbd==='')){
													tdtime = tmHibd +" saatdan bir" + "/<br>" + tmRd + " Gün"
												}else if((tmDt === '.'||tmDt === '..')&&(tmTm===':'||tmTm==='::'||tmTm==='')&&tmHibd === ''){
													tdtime = "Gündə " + tmCbd + "dəfə" + "/<br>" + tmRd + " Gün"
												}else if(tmCbd===''&&tmHibd===''){
													tdtime = "Gün:" + tmDt + "</br>" + "Saat:"+tmTm + "</br>" + tmRd + " Gün"
												}
												else{
													tdtime = tmRd + "Gün"
												}
											}
										}  

										var td = $("<td>"); 
										$(td).css("white-space","nowrap");
										$(td).css("text-align","left")
										$(td).html(tdtxt);  
										
										var tdmqd = $("<td>"); 
										$(tdmqd).css("text-align","left")
										$(tdmqd).html(mqdtxt); 
										
										var tdtimes = $("<td>")
										$(tdtimes).html(tdtime)
										$(tdtimes).css("text-align","left")
										var deletRow = $("<td>")
										$(deletRow).html("<span class='iconify icons' id='1icon' data-icon='gg:remove-r'></span>")
										$(deletRow).css("text-align","left")
										$(tr).append(deletRow);
										$(tr).append(td); 
										$(tr).append(tdmqd); 
										$(tr).append(tdtimes);

										$("#tblPrscList tbody").append(tr);
		
								}
							}
						)
				})
				
					$("#sendBackend").click(function () {
						
						if ($("#tblConsumption tbody tr").length == 0 || $("#bottomCenter tbody tr").length == 0) {
							alert("Dəyərləri düzgün daxil edin")
						}else{
							var myData = [];

						$('#tblConsumption tbody tr').each(function () {
							var currentRow = $(this);

							var col3 = currentRow.find("td:eq(3)").html();
							var kwid = currentRow.attr('kwid');

							var obj = {};
							obj.matId = kwid;
							obj.matCount = col3;

							myData.push(obj);
						});

						

						var myData2 = [];

						$('#bottomCenter tbody tr').each(function () {

							var currentRow = $(this);
							var col2 = currentRow.find("td:eq(2)").html();
							var col3 = currentRow.find("td:eq(3)").html();
							var col4 = currentRow.find("td:eq(4)").html();
							var col5 = currentRow.find("td:eq(5)").html();

							var col2of1 = col2.substring(0, 10)
							var col2of2 = col2.substring(11, 16)

							var operationNumber;

							if (col2 === '/' && col4 === '') {
								operationNumber = 2
							} else if (col2 === '/' && col5 === '') {
								operationNumber = 1
							} else if (col4 === '' && col5 === '') {
								operationNumber = 0
							}

							var obj = {};
							obj.operType = operationNumber;
							if (col2of1 != '/') {
								col2f1=col2of1.replace((new RegExp('-','g')), '')
								obj.tmDt = col2f1;
							}else{
								obj.tmDt = '';
							}
							var col2ff2 = '';
							if(col2of2 !== ''){
								col2ff2 = col2of2.replace(':','') + '00'
							}
							obj.tmTm = col2ff2;
							obj.tmRd = col3;
							obj.tmCbd = col4;
							obj.tmHibd = col5;

							myData2.push(obj);
							
						})
						
						$.post("dispatch",
							{
								cmd: "stnrAcceptNewPrescription",
								firstTable: JSON.stringify(myData),
								seconTable: JSON.stringify(myData2),
								fkAppeal: fkAppeal,
							}
						)
						}
						
						/* $.post("dispatch",
							{
								cmd: "stnrAcceptNewPrescription",
								fkAppeal: $(this).attr("fkappeal"),
								fkMaterial:$(this).attr("")
								 userId: $("#userId").val()
								tmType:$()
							}, function (data) {
								var bag = toArr(data, "result");
								console.log(bag); 
								alert(bag[0][1]);
								if (bag[0][0] == '0') {
									$(td).parent().remove();
									$(tbody).find("tr td.lineNo").each(function (k, v) {
										$(this).text(parseInt($(this).parent().index()) + 1);
									});
								}
							}
						) */
					});

			});

			function manageRowClick(titleName, cnt) {
				var titleRow = $("#" + titleName);

				var titleInd = $(titleRow).index();

				$(titleRow).css("cursor", "pointer");
				$(titleRow).click(function () {
					if ($("#listTable tr:eq(" + (titleInd + 1) + ")").css("display") == "none") {
						var title = $(titleRow).text().trim();
						title = title.substr(1, title.length);
						$(titleRow).find("td:eq(0)").html("-" + title);
						for (var i = 0; i < cnt; i++) {
							$("#listTable tr:eq(" + (titleInd + i + 1) + ")").show();
						}
						$(titleRow).css("background", "#FFFF00");
					} else {
						var title = $(titleRow).text().trim();
						title = title.substr(1, title.length);
						$(titleRow).find("td:eq(0)").html("+" + title);
						for (var i = 0; i < cnt; i++) {
							$("#listTable tr:eq(" + (titleInd + i + 1) + ")").hide();
						}
						$(titleRow).css("background", "#B6B6B6");
					}

				});
				rowClick(titleInd);
			}

			var emptyRow = "<tr><td class='text-center'>No records available</td></tr>"

			function addToTable() {

				var derman = $("#dermanYaz").val().trim()
				var say = $("#sayYaz").val().trim();
				var kwid = $("#dermanYaz").attr('kwid');

				var found = false;
				$("#tblConsumption tbody tr").each(function (k, v) {
					if ($(this).attr("kwid") == kwid) {
						var cnt = $(this).find("td:eq(3)").text();
						cnt = parseFloat(cnt) + parseFloat(say);
						cnt = parseFloat(cnt).toFixed(2);
						$(this).find("td:eq(3)").text(cnt);
						found = true;
					}
				});

				if (found) {
					return;
				}

				/* var curRow = $("") */
				var dermanName = $('#tblConsumption tbody tr').last().find('td:eq(2)').text()
				var dermanSay = $('#tblConsumption tbody tr').last().find('td:eq(3)').val()
				if (derman != "" && say >0 ) {
					if ($("#tblConsumption tbody").children().children().length == 1) {
						$("#tblConsumption tbody").html("");
					}

					var srno = $("#tblConsumption tbody").children().length + 1;

					/* if(derman = dermanName){
						$('#tblConsumption tbody tr').last().find('td:eq(3)').add(dermanSay)
					}
					else{
					} */
					var dynamicTr = "<tr kwid='" + kwid + "'><td> <span class='iconify icons' id='2icon' data-icon='gg:remove-r'></span> " + "</td><td>" + srno + "</td><td kwid='' >" + derman + "</td><td>" + say + "</td></tr>";
					var derman1 = $("#dermanYaz").val().trim();
					var say1 = $("#sayYaz").val().trim();

					$("#tblConsumption tbody").append(dynamicTr);

				} else {
					alert("Dərman adını və sayını düzgün daxil edin , say 0 - dan böyük olmalıdır")
				}
			}

			function addToTableDate() {
				var cDate = $('#labelInput1').val()
				var dClock = $('#labelInput2').val()
				var dDay = $('#labelInput3').val()
				var times = $('#labelInput4').val()
				var hours = $('#labelInput5').val()

				if (((cDate != '' && dClock != '') || (times != '' && dDay >0) || (hours != '' && dDay >0)) && $('.centerBotTableBack tbody').children().length < 1) {
					if ($(".centerBotTableBack tbody").children().children().length == 1) {
						$(".centerBotTableBack tbody").html("");
					}
					var srNo = $('.centerBotTableBack tbody').children().length + 1;
					var dynamicTr = "<tr><td> <span class='iconify icons' id='2icon' data-icon='gg:remove-r'></span>" + "</td><td>" + srNo + "</td><td>" + cDate + "/" + dClock + "</td><td>" + dDay + "</td><td>" + times + "</td><td>" + hours + "</td></tr>"
					$(".centerBotTableBack tbody").append(dynamicTr);
				} else {
					alert('Tarixi düzgün daxil edin')
				}
			}

			$(function () {
				var check = $('#check');
				var check1 = $('#check1');
				var check2 = $('#check2');
				var input1 = $('#labelInput1');
				var input2 = $('#labelInput2');
				var input3 = $('#labelInput3');
				var input4 = $('#labelInput4');
				var input5 = $('#labelInput5');

				$('#check').click(function () {
					if ($(this).is(':checked')) {
						input1.removeAttr('disabled');
						input2.removeAttr('disabled');
						/* input3.removeAttr('disabled'); */
						check1.attr('disabled', 'disabled');
						check2.attr('disabled', 'disabled');
						/* input5.attr('disabled', 'disabled'); */
					} else {
						input1.attr('disabled', 'disabled');
						input2.attr('disabled', 'disabled');
						/* input3.attr('disabled', 'disabled'); */
						check1.removeAttr('disabled');
						check2.removeAttr('disabled');
						input1.val('')
						input2.val('')
					}
				})
				$('#check1').click(function () {
					if ($(this).is(':checked')) {
						input4.removeAttr('disabled');
						input5.attr('disabled', 'disabled');
						/* input5.removeAttr('disabled'); */
						check.attr('disabled', 'disabled');
						check2.attr('disabled', 'disabled');
					} else {
						input4.attr('disabled', 'disabled');
						/* input5.attr('disabled', 'disabled'); */
						/* input5.removeAttr('disabled'); */
						check.removeAttr('disabled');
						check2.removeAttr('disabled');
						input4.val('')
						input3.val('')
					}
				})
				$('#check2').click(function () {
					if ($(this).is(':checked')) {
						/* input1.removeAttr('disabled');
						input2.removeAttr('disabled');
						input3.removeAttr('disabled'); */
						check.attr('disabled', 'disabled');
						check1.attr('disabled', 'disabled');
						input5.removeAttr('disabled');
					} else {
						input1.attr('disabled', 'disabled');
						input2.attr('disabled', 'disabled');
						/* input3.attr('disabled', 'disabled'); */
						input5.attr('disabled', 'disabled');
						check1.removeAttr('disabled');
						check.removeAttr('disabled');
						input5.val('');
						input3.val('')
					}
				})
			})

		</script>


	</head>

	<body>

		<form name="formStnrMedCard" id="formStnrMedCard" action="dispatch" method="POST">
			<input type="hidden" id="cmd" name="cmd" value="stnrAcceptMedCard" />
			<input type="hidden" id="appealOid" name="appealOid" value="<%=request.getAttribute(" appealOid")%>" />
			<input type="hidden" id="userId" name="userId" value="<%=request.getAttribute(" userId")%>" />

			<div class="container">
				<div class="wrapper">
					<div class="left">
						<div class="leftWrapper">
							<div class="firstTableBack">
								<table class="table" id="tblPatList">
									<thead>
										<th>S.No</th>
										<th>Tarix</th>
										<th>Ad/Soyad</th>
									</thead>
									<tbody>
										<% Object bag=request.getAttribute("result"); String[][] inBag=new String[0][0];
											if (bag!=null){ inBag=(String[][])bag; } int rsz=inBag.length; for(int i=0;
											i<rsz; i++){ String operDate=inBag[i][1]; String operTime=inBag[i][2];
											operDate=operDate.substring(0,4)+"."+operDate.substring(4,6)+"."+operDate.substring(6,8);
											operTime=operTime.substring(0,2)+":"+operTime.substring(2,4)+":"+operTime.substring(4,6);
											String color="text-align:left; " ; String patName=inBag[i][3]; %>
											<tr fkAppeal=<%=inBag[i][0]%> fkFuncs=<%=inBag[i][5]%>>
													<td>
														<%=i+1%>
													</td>
													<td>
														<%=operDate%></br>
															<%=operTime%>
													</td>
													<td>
														<%=patName%>
													</td>
											</tr>
											<% } %>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="center">
						<div class="centerWrapper">
							<!-- <h1>Serfiyat/grup</h1> -->
							<div class="derman">
								<input class="dermanAdi" type="text" id="dermanYaz" is="load-data-component"
									placeholder="Dərman adı yazın" loadname="material" wrse="cmbWrse" kwid="">
								<div>
									<input id="sayYaz" class="say" type="number" placeholder="Say" min="1" />
									<input type="button" id="addEt" class="addButton" value="Əlavə et" />
								</div>
							</div>
							<div class="tableBck">
								<table class="table centerTable" id="tblConsumption"
									style="max-height: 150px; min-height: 150px; width: 100%;">
									<thead>
										<th></th>
										<th>S.No</th>
										<th>Sərfiyat</th>
										<th>Say</th>
									</thead>
									<tbody id="tbody">

									</tbody>
								</table>
							</div>

							<p>Zamanlama</p>
							<div class="calendar">
								<input type="checkbox" id="check">
								<label class="labels">
									<input disabled="true" class="input" type="date" id="labelInput1" name="datemin"
										min="2000-01-02">
									<input disabled="true" class="input" type="time" id="labelInput2" name="appt">
									<input class="input2" type="number" id="labelInput3" name="necegun"
										placeholder="neçə gün" min="1">
								</label>
							</div>
							<div class="defe">
								<div class="checkInput">
									<input id="check1" class="checkbox" type="checkbox">
									<input class="input" type="number" disabled="true" name="necegun" id="labelInput4"
										placeholder="neçə dəfə" min="1">
								</div>
								<div class="checkInput">
									<input id="check2" class="checkbox" type="checkbox">
									<input class="input" type="number" disabled="true" name="necegun" id="labelInput5"
										placeholder="neçə s. bir" min="1">
								</div>

								<input type="button" class="addButton1" id="add2" value="Add">
							</div>
							<div class="centerBotTableBack">
								<table class="table" id="bottomCenter"
									style="max-height: 150px; min-width: 150px; width: 100%;">
									<thead>
										<th></th>
										<th>S.No</th>
										<th>Tarix/Saat</th>
										<th>Neçə gün</th>
										<th>Neçə dəfə</th>
										<th>Neçə S. bir</th>
									</thead>
									<tbody>

									</tbody>
								</table>
							</div>
							<input type="button" class="addButton4 width" id="sendBackend" value="Ok">
							</input>
						</div>
					</div>
					<div class="right">
						<div class="rightWrapper">
							<div class="thirdTableBack">
								<table class="table" id ="tblPrscList">
									<thead>
										<th></th>
										<th>Sərfiyat</th>
										<th>Miqdarı</th> 
										<th>Zamanlama</th>
									</thead>
									<tbody>
										 
									</tbody>
								</table>
							</div>

						</div>
					</div>
				</div>
		</form>
	</body>

	</html>