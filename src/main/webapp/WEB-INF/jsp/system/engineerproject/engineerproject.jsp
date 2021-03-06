<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
	<link href="static/lkk/bootstrap.min.css" rel="stylesheet">
	<link href="static/lkk/fileinput.min.css" rel="stylesheet" />
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
	<link rel="stylesheet" href="static/html_UI/assets/css/jquery.gritter.css" />
	<link rel="stylesheet" href="static/ace/css/bootstrap-table.min.css">

	<%--表单--%>
	<link rel="stylesheet" href="static/css/form.css">
	<style>
    .input-group{
	    width:270px;
	 }
    .number{
	    width:70px;
	 }
    .search-label{
    	width:90px;
    	text-align: right;
	 }
	 .search-content{
	 	width: 149px;
	 }
</style>
</head>
<body class="no-skin" style="overflow: hidden;">
	
	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container" style="position:absolute;width:100%; height:100%">
		<!-- /section:basics/sidebar -->
		<div id="mapDiv" style="position:absolute;z-index:0;width:100%; height:100%">
		</div>
		<!-- /.main-content -->	
		
		<div class="heading" id="map-search-data-toorbar">
		
			<!--  缪秀诚删除
			<button id="map-search-data-toorbar-djjc" type="button" class="btn btn-sm map-search-data-type">地基监测</button>  
	        <button id="map-search-data-toorbar-gjjc" type="button" class="btn btn-sm map-search-data-type">构件监测</button> 
	        <button id="map-search-data-toorbar-wfjd" type="button" class="btn btn-sm map-search-data-type">危房鉴定</button>
	        <button id="map-search-data-toorbar-fwcz" type="button" class="btn btn-sm map-search-data-type">房屋处置</button>
	          -->
	          
	        <!-- <button id="map-search-data-toorbar-fwgk" type="button" class="btn btn-sm">信息概况</button>   -->
	        <button id="map-search-data-toorbar-sxgx" type="button" class="btn btn-sm">信息更新</button>  
	        <button id="map-search-data-toorbar-qlr" type="button" class="btn btn-sm">资料上传</button>
	        <button id="map-search-data-toorbar-zlxz" type="button" class="btn btn-sm">资料下载</button>  
	        <!-- <button id="map-search-data-toorbar-ckjdjg" type="button" class="btn btn-sm">查看鉴定结果</button>  --> 
	        <button id="map-search-data-toorbar-hdcbg" type="button" class="btn btn-sm" >导出表格</button> 
	        <button id="map-search-data-toorbar-close" type="button" class="btn btn-sm">关闭</button>   
        </div>  
		<div id="map-search-data-div" class="" style="z-index:999;position: absolute;bottom: 0px;left: 0px;right: 0px;display: none;">										
			<table id="map-search-data" style="background-color: rgba(242, 242, 242, 0.9);" class="table table-striped table-bordered table-hover no-border-top">
			</table>						
		</div>
		<!--  缪秀诚删除
		<div class="heading" id="householder-map-search-data-toorbar">  
	        <button id="" type="button" class="btn btn-sm">更新户</button>  
	        <button id="" type="button" class="btn btn-sm">删除户</button>   
	        <button id="" type="button" class="btn btn-sm">导出表格</button>  
	        <button id="householder-map-search-data-toorbar-close" type="button" class="btn btn-sm">关闭</button>   
        </div> 
		<div id="householder-map-search-data-div" class="" style="z-index:999;height:30%;margin-top:30%;display: none;">					
			<table id="householder-map-search-data" style="opacity: 0.8;filter:alpha(opacity=70);" class="table table-striped table-bordered table-hover no-border-top">						  
			</table>					
		</div>	 -->
	</div>


	
		<!-- 图例 -->	
	<div class="" id="map-legend" style="opacity: 0.9;filter:alpha(opacity=90);;position:absolute;width:120px; height:200px;z-index:900; right:0px;bottom:0px">
		<button id="map-legend-btn" type="button" style="height: 35px;width: 120px;text-align: center;" class="btn">图例</button>						
		<div id="" class="sidebar">						 				

		   <%--原拆原建--%>
		   <div class="row" style="height: 20px;width: 160px;margin-top: 25px;margin-left:6px">
			
			   <img class="col-xs-6 col-sm-3" src="static/images/levelA.png"></img>
			   <label class="col-xs-6 col-sm-6">治理中</label>
		   </div>
		   
		   <%--修缮加固--%>
		   <div class="row" style="height: 20px;width: 160px;margin-top: 25px;margin-left:6px">
			 
			   <img class="col-xs-6 col-sm-3" src="static/images/levelB.png"></img>
			   <label class="col-xs-6 col-sm-6">治理完成</label>
		   </div>

		   <%--拆除--%>
		   <div class="row" style="height: 20px;width: 160px;margin-top: 25px;margin-left:6px">
		
			   <img class="col-xs-6 col-sm-3" src="static/images/levelC.png"></img>
			   <label class="col-xs-6 col-sm-6">治理超时</label>
		   </div>

		</div><!-- .sidebar -->
	</div>
	
<!-- 添加的模态框(房屋概况) -->
  <div class="modal fade" id="account-Manager-add-dialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:360px;margin-top:68px;margin-left:0px">
		<div class="modal-content">
			<div class="modal-header" style="text-align:center;font-size:12px">
				<button type="button" class="close" data-dismiss="modal" id="fwgk-close" aria-hidden="true">&times;</button> 
				<h5 class="modal-title" id="">信息概况</h5>
			</div>
			<div class="modal-body" style="height: 100%;margin-right:10px">
				<form class="form-horizontal" role="form" id ="form-test">
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">计划时间:</label>
						<input class="col-sm-6" style="height:26px" type="text" name = "strplancompletiontime" class="form-control" readonly="readonly"> 
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">名称:</label>
						<input class="col-sm-6" style="height:26px" name = "name" type="text" class="form-control" readonly="readonly">
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">地址:</label>
						<input class="col-sm-6" style="height:26px" type="text" name = "location" class="form-control" readonly="readonly">
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">灾害类型:</label>
						<input class="col-sm-6" style="height:26px" type="text" name = "govertype" class="form-control" readonly="readonly">
					</div>
				  
				    <div style="text-align: right;" class="form-group">
						<label class="col-sm-5">规模:</label>
						<input class="col-sm-6" style="height:26px" type="text" name = "scale" class="form-control" readonly="readonly">
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">规模等级:</label>
						<input class="col-sm-6" style="height:26px" type="text" name = "scalegrad" class="form-control" readonly="readonly">
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">稳定性:</label>
						<input class="col-sm-6" style="height:26px" type="text" name = "thisstage" class="form-control" readonly="readonly"> 
					</div>
					
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">治理进度:</label>
						<input class="col-sm-6" style="height:26px" name = "completion" type="text" class="form-control" readonly="readonly">
					</div>

				</form>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<!-- 添加的模态框(属性更新) -->
  <div class="modal fade" id="account-Manager-add-dialog-sxgx" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:360px;margin-top:68px;margin-left:0px">
		<div class="modal-content">
			<div class="modal-header" style="text-align:center;font-size:12px">
				<button type="button" class="close" data-dismiss="modal" id="sxgx-close" aria-hidden="true">&times;</button> 
				<h5 class="modal-title" id="">信息更新</h5>
			</div>
			<div class="modal-body" style="height: 100%;margin-right:10px">
				<form class="form-horizontal" role="form" id ="form-sxgx">
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">计划时间:</label>
						<input class="col-sm-6 date-picker" name="create_time" id="" type="text" data-date-format="yyyy-mm-dd" style="height:26px;" placeholder="请输入计划时间" class="form-control"/>
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">隐患点名称:</label>
						<input class="col-sm-6" style="height:26px" name = "hiddendanger_name" type="text" class="form-control" readonly="readonly">
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">名称:</label>
						<input class="col-sm-6" style="height:26px" name = "name" type="text" class="form-control" >
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">基本情况:</label>
						<input class="col-sm-6" style="height:26px" type="text" name ="basicInfo" class="form-control"  >
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">防治情况:</label>
						<input class="col-sm-6" style="height:26px" type="text" name ="governanceInfo" class="form-control" >
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">进度:</label>
						<input class="col-sm-6" style="height:26px" type="text" name ="progress" class="form-control" >
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-5">备注:</label>
						<input class="col-sm-6" style="height:26px" type="text" name = "remark" class="form-control" > 
					</div>
					<div class="modal-footer" style="text-align:center;background:white;">
 						<button type="button" class="btn btn-sm btn-info" id="eng-save-submit">保存</button>	
			        </div>
				</form>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<!-- 添加的模态框(鉴定结果) -->
  <div class="modal fade" id="account-Manager-add-dialog-result" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:360px;margin-top:68px;margin-left:0px">
		<div class="modal-content">
			<div class="modal-header" style="text-align:center;font-size:12px">
				<button type="button" class="close" data-dismiss="modal" id="ckjdjg-close" aria-hidden="true">&times;</button> 
				<h5 class="modal-title" id="">房屋鉴定结果</h5>
			</div>
			<div class="modal-body" style="height: 100%;margin-right:10px">
				<form class="form-horizontal" role="form" id ="form-test-result">
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-4">编号:</label>
						<input class="col-sm-6" style="height:26px" type="text" name = "bh" class="form-control" readonly="readonly"> 
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-4">鉴定日期:</label>
						<input class="col-sm-6" style="height:26px" name = "date" type="text" class="form-control" readonly="readonly">
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-4">鉴定机构:</label>
						<input class="col-sm-6" style="height:26px" name = "company" type="text" class="form-control" readonly="readonly">
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-4">鉴定人:</label>
						<input class="col-sm-6" style="height:26px" name = "identifier" type="text" class="form-control" readonly="readonly">
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-4">鉴定等级:</label>
						<input class="col-sm-6" style="height:26px" name = "level" type="text" class="form-control" readonly="readonly">
					</div>
				</form>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<!-- 添加的模态框(权利人) -->
<!-- 添加的模态框(666) -->
 <!--  <div class="modal fade" id="account-Manager-add-dialog-qlr" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:800px;margin-top:68px;margin-left:0px">
		<div class="modal-content">
		
		<div class="modal-header" style="text-align:center;font-size:12px">
				<button type="button" class="close" data-dismiss="modal" id="qlr-close" aria-hidden="true">&times;<tton> 
				<h5 class="modal-title" id="">上传文件</h5>
		</div>

			<div class="modal-body" style="height: 100%;margin-right:10px">
				<form class="form-horizontal" role="form" id ="form-test-qlr">
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-4">灾害点名称:</label>
						<input class="col-sm-6" style="height:26px" type="text" name = "hiddendanger_name" class="form-control" readonly="readonly"> 
					</div>
					<div style="text-align: right;" class="form-group">
						<label class="col-sm-4">阶段:</label>
						<select class="col-sm-6" style="height:26px"  size="30" class="form-control"onchange="changegoverstage()"id="goverstage">
    					<option  value="1">基本情况</option> 
						<option  value="2">防止情况</option> 
						<option  value="3">进展情况</option> 					
						<lect>
					</div>
					<div style="text-align: right;" class="form-group" id="basic" >
						<label class="col-sm-4">基本文件:</label>
						<input class="col-sm-6 file-loading" style="height:26px" id="preventSituation" name="preventSituation" size="30"  multiple="multiple" type="file" class="form-control">
					</div>
					<div style="text-align: right;" class="form-group" id="prevent">
						<label class="col-sm-4">防治文件:</label>
						<input class="col-sm-6 file-loading" style="height:26px" id="preventSituation" name="preventSituation" size="30"  multiple="multiple" type="file" class="form-control">
					</div>
					<div style="text-align: right;" class="form-group" id="progress">
						<label class="col-sm-4">进展文件:</label>
						<input class="col-sm-6 file-loading" style="height:26px" id="progressSituation" name="progressSituation" size="30"  multiple="multiple" type="file" class="form-control">
					</div>
				    
				</form>
			</div>

		</div>/.modal-content
	</div>/.modal
</div> -->
<div class="modal fade" id="account-Manager-add-dialog-qlr" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:600px;height:500px;margin-top:68px;margin-left:0px">
		<div class="modal-content">
			<div class="modal-header" style="text-align:center;font-size:12px">
				<button type="button" class="close" data-dismiss="modal" id="qlr-close" aria-hidden="true">&times;</button> 
				<h5 class="modal-title" id="">上传文件</h5>
			</div>
			<div class="modal-body" style="width:100%;height:450px;">
				<iframe name="fileConframe"  style="width:100%;height:100%;"class="Conframe" id="fileConframe" frameborder=0 src="<%=basePath%>UpLoadFile">
				 </iframe>
			</div>

		</div>
	</div>
</div>
<!-- //8888888888888888888888 -->
<div class="modal fade" id="account-Manager-add-dialog-zlxz" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width:1000px;height:600px;margin-top:68px;margin-left:0px">
		<div class="modal-content">
			<div class="modal-header" style="text-align:center;font-size:12px">
				<button type="button" class="close" data-dismiss="modal" id="zlxz-close" aria-hidden="true">&times;</button> 
				<h5 class="modal-title" id="">下载文件</h5>
			</div>
			<div class="modal-body" style="width:100%;height:450px;">
				<iframe name="treeConframe"  style="width:100%;height:100%;"class="Conframe" id="treeConframe" frameborder=0 src="<%=basePath%>TreeNode">
				 </iframe>
			</div>
		</div>
	</div>
</div>
  
 
 <!-- 添加的模态框(照片展示) -->
  <div class="modal fade" id="account-Manager-add-dialog-photo"  aria-hidden="true" >
	<div class="modal-dialog" style="margin-right:4px;">
		<div class="modal-content">
		<div class="modal-header" style="text-align:center;font-size:12px">
				<button type="button" class="close" data-dismiss="modal" id="photo-close" aria-hidden="true">&times;</button> 
				<h5 class="modal-title" id="">照片预览</h5>
			</div>
			<div >
				<img id="viewer" src="" alt="" style="width:590px;margin-top:4px;margin-left:4px;height:608px">
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
	<!-- 房屋检测    （缪秀诚的测试）
			<div class="container" id="house-fwjc" style="width:400px;margin-top:10px;margin-bottom:10px;margin-left:20px;overflow-y:scroll;height:300px;display:none">
				<div class="row">
					<div class="col-xs-12">
						PAGE CONTENT BEGINS
						<form class="form-horizontal" role="form" id="house-info-form">
							#section:elements.form
							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="form-field-1">房屋编号</label>

								<div class="col-xs-8">
									<label class="form-control-static" id="house-info-no">0</label>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right">经纬度</label>

								<div class="col-xs-8">
									<label class="form-control-static" id="house-info-lat-lon"></label>
									<input type="hidden" name="x" id="house-info-lon"/>
									<input type="hidden" name="y" id="house-info-lat"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right field-required" for="house-info-build-year">建筑年代</label>

								<div class="col-xs-8">
									<select class="form-control" id="house-info-build-year" name="jznd">
										
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-type">住房类别</label>

								<div class="col-xs-8">
									<select class="form-control" id="house-info-type" name="zflb">
										
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right field-required" for="house-info-floor-num">层数</label>
								<div class="col-xs-8">
									<input type="number" id="house-info-floor-num" placeholder="请输入层数" class="col-xs-10 form-control" name="cs"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right field-required" for="form-field-1-1">间数</label>
								<div class="col-xs-8">
									<input type="number" id="house-info-rooms-num" placeholder="请输入间数" class="col-xs-10 form-control" name="js"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right field-required" for="house-info-and-area">占地面积(㎡)</label>
								<div class="col-xs-8">
									<input type="number" id="house-info-land-area" placeholder="请输入占地面积" class="col-xs-10 form-control" name="zdmj"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right field-required" for="house-info-build-area">建筑面积(㎡)</label>
								<div class="col-xs-8">
									<input type="number" id="house-info-build-area" placeholder="请输入建筑面积" class="col-xs-10 form-control" name="jzmj"/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-use-situation">住房使用情况</label>

								<div class="col-xs-8">
									<select class="form-control" id="house-info-use-situation" name="zfsyqk">
										<option value=""></option>
										
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-land-nature">土地性质</label>
								<div class="col-xs-8">
									<select class="form-control" id="house-info-land-nature" name="tdxz">
										<option value=""></option>
										
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right">乡镇街道</label>
								<div class="col-xs-8">
									<label class="form-control-static" id="house-info-street"></label>
									<input type="hidden" id="house-info-street-name" name="xzjd"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-village">所属村</label>
								<div class="col-xs-8">
									<label class="form-control-static" id="house-info-village"></label>
									<input type="hidden" id="house-info-village-name" name="ssc"/>
									<input type="hidden" id="house-info-village-id" name="villageId"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-houseNo">门牌号</label>

								<div class="col-xs-8">
									<input type="number" id="house-info-houseNo" placeholder="" class="col-xs-10 form-control" name="mph" />
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-structure-type">结构类型</label>

								<div class="col-xs-8">
									<select class="form-control" id="house-info-structure-type" name="jglx">
										<option value=""></option>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-danger-level">危险性等级</label>

								<div class="col-xs-8">
									<label class="form-control-static" id="house-info-village">待定</label>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="form-field-1-1">房产证</label>

								<div class="col-xs-8">
									<input type="text" id="house-info-certificates-no" placeholder="请输入房产证号" class="form-control col-xs-10" name="fcz"/>
									
								</div>
							</div>
							<div class="validate-tips">
								<label class="validate-tips-label"></lebel>
							</div>
							<div class="clearfix form-actions">
								<div class="col-md-12" style="display: flex;justify-content: space-around;">
									<button class="btn btn-info save-house-btn" type="submit">
										<i class="ace-icon fa fa-check bigger-110"></i>
										确定
									</button>
									<button class="btn" type="reset">
										<i class="ace-icon fa fa-undo bigger-110"></i>
										重置
									</button>
									<button class="btn close-panel-btn" type="reset">
										<i class="ace-icon fa fa-times"></i>
										取消
									</button>
								</div>
							</div>								
						</form>
					</div>
				</div>
			</div> 
		-->
	
	<!-- 查询工具栏 -->
	<div id="search-form-group" class="row" style="position:absolute;height:70px;z-index:999;left:0px;right:0px;top:0px;display: block;">					
		<form id="search-form-group-condition" class="form-inline search-form" role="form">
			<div class="well" style="margin-top: -10px;">
		 	   <div style="padding-right: 20px;" class="input-group">
		 	   	   <label class="search-label">名称:</label>
		 	  	   <input type="text" style="height: 25px;" class="search-content" name="name">
		 	   </div>
		 	  <!--  <div style="padding-right: 20px;" class="input-group">
		 	   	   <label class="search-label">所属村:</label>
		 	  	   <input type="text" style="height: 25px;" class="search-content" name="ssc">
		 	   </div>	 -->	 	   		 	   
		    
			    
		 	   <div style="padding-right: 20px;margin-top: 5px;margin-left:-26px" class="input-group">
			 	   <button id="search-form-group-search-btn" type="button" class="btn btn-sm btn-success form-group">
						<span class="ace-icon fa fa-search icon-on-right bigger-100"></span>
						搜索
				   </button>	 
			   </div>
			   	<div style="padding-right: 20px;display: none;" class="input-group" >
		 	   		<label class="search-label"></label>
		 	  	   <input type="text" style="height: 25px;" class="search-content" name="zt" value="2">
		 	   </div>
	 	  </div> 																		
		</form>	 
	</div>
	

	
	<%--添加房屋的面板--%>
	<div class="widget-box widget-color-pink" id="house-info-panel" style="position:absolute;width:400px; height:100%;z-index:999; right:-400px;top:0px;display:none;">
		<div class="widget-header widget-header-small">
			<h6 class="widget-title">
				添加房屋
			</h6>

			<div class="widget-toolbar">

				<a href="javascript:void(0)" class="panel-close-icon">
					<i class="ace-icon fa fa-times"></i>
				</a>
			</div>
		</div>

		<div class="widget-body" style="height:100%;">
			<style>
				#house-info-panel .form-group{
					margin-bottom: 8px;
				}
			</style>
			<div class="widget-main container" style="width:400px;overflow-y:scroll;height:100%;">
				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<form class="form-horizontal" role="form" id="house-info-form">
							<!-- #section:elements.form -->
							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="form-field-1">房屋编号</label>

								<div class="col-xs-8">
									<label class="form-control-static" id="house-info-no">0</label>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right">经纬度</label>

								<div class="col-xs-8">
									<label class="form-control-static" id="house-info-lat-lon"></label>
									<input type="hidden" name="x" id="house-info-lon"/>
									<input type="hidden" name="y" id="house-info-lat"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right field-required" for="house-info-build-year">建筑年代</label>

								<div class="col-xs-8">
									<select class="form-control" id="house-info-build-year" name="jznd">
										
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-type">住房类别</label>

								<div class="col-xs-8">
									<select class="form-control" id="house-info-type" name="zflb">
										
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right field-required" for="house-info-floor-num">层数</label>
								<div class="col-xs-8">
									<input type="number" id="house-info-floor-num" placeholder="请输入层数" class="col-xs-10 form-control" name="cs"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right field-required" for="form-field-1-1">间数</label>
								<div class="col-xs-8">
									<input type="number" id="house-info-rooms-num" placeholder="请输入间数" class="col-xs-10 form-control" name="js"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right field-required" for="house-info-and-area">占地面积(㎡)</label>
								<div class="col-xs-8">
									<input type="number" id="house-info-land-area" placeholder="请输入占地面积" class="col-xs-10 form-control" name="zdmj"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right field-required" for="house-info-build-area">建筑面积(㎡)</label>
								<div class="col-xs-8">
									<input type="number" id="house-info-build-area" placeholder="请输入建筑面积" class="col-xs-10 form-control" name="jzmj"/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-use-situation">住房使用情况</label>

								<div class="col-xs-8">
									<select class="form-control" id="house-info-use-situation" name="zfsyqk">
										<option value=""></option>
										
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-land-nature">土地性质</label>
								<div class="col-xs-8">
									<select class="form-control" id="house-info-land-nature" name="tdxz">
										<option value=""></option>
										
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right">乡镇街道</label>
								<div class="col-xs-8">
									<label class="form-control-static" id="house-info-street"></label>
									<input type="hidden" id="house-info-street-name" name="xzjd"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-village">所属村</label>
								<div class="col-xs-8">
									<label class="form-control-static" id="house-info-village"></label>
									<input type="hidden" id="house-info-village-name" name="ssc"/>
									<input type="hidden" id="house-info-village-id" name="villageId"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-houseNo">门牌号</label>

								<div class="col-xs-8">
									<input type="number" id="house-info-houseNo" placeholder="" class="col-xs-10 form-control" name="mph" />
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-structure-type">结构类型</label>

								<div class="col-xs-8">
									<select class="form-control" id="house-info-structure-type" name="jglx">
										<option value=""></option>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="house-info-danger-level">危险性等级</label>

								<div class="col-xs-8">
									<label class="form-control-static" id="house-info-village">待定</label>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label no-padding-right" for="form-field-1-1">房产证</label>

								<div class="col-xs-8">
									<input type="text" id="house-info-certificates-no" placeholder="请输入房产证号" class="form-control col-xs-10" name="fcz"/>
									
								</div>
							</div>
							<div class="validate-tips">
								<label class="validate-tips-label"></lebel>
							</div>
							<div class="clearfix form-actions">
								<div class="col-md-12" style="display: flex;justify-content: space-around;">
									<button class="btn btn-info save-house-btn" type="submit">
										<i class="ace-icon fa fa-check bigger-110"></i>
										确定
									</button>
									<button class="btn" type="reset">
										<i class="ace-icon fa fa-undo bigger-110"></i>
										重置
									</button>
									<button class="btn close-panel-btn" type="reset">
										<i class="ace-icon fa fa-times"></i>
										取消
									</button>
								</div>
							</div>								
						</form>
					</div>
				</div>
			</div>
		
		
		</div>
	</div>


 </div>
	 
	<!-- basic scripts -->
	<!-- 页面底部js¨ -->
	<%@ include file="../index/foot.jsp"%>
	
	 <script type="text/javascript" src="static/ace/js/jquery.js"></script>
	
	
	
	<!-- 删除时确认窗口 -->
	 <!-- <script src="static/ace/js/jquery.form.min.js"></script> -->
	<script src="static/ace/js/bootbox.js"></script>
	
	<script src="static/ace/js/bootstrap.js"></script>
	
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>

	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<!--工具栏-->
	
	<script src="static/ace/js/ace/elements.scroller.js"></script>
	<script src="static/ace/js/ace/ace.widget-box.js"></script>
	<script src="static/ace/js/ace/ace.sidebar.js"></script>
	<script src="static/ace/js/ace/elements.aside.js"></script>
	<script src="static/ace/js/ace/ace.sidebar-scroll-1.js"></script>
	<script src="static/ace/js/ace/ace.submenu-hover.js"></script>
	<script src="static/ace/js/ace/elements.wizard.js"></script>
	<script src="static/ace/js/ace/elements.typeahead.js"></script>
	<script src="static/ace/js/ace/elements.wysiwyg.js"></script>

	<!-- 弹出提示消息 -->
	<script src="static/html_UI/assets/js/jquery.gritter.js"></script>
	<!-- jquery验证 -->
	<script src="static/ace/js/jquery.validate.js"></script>
	<!-- 表格 -->	
	<script src="static/ace/js/dataTables/bootstrap-table.js"></script>
	<script src="static/ace/js/dataTables/bootstrap-table-zh-CN.js"></script>
	<!--提示框-->
	<!-- 天地图API -->
	<script src=" http://api.tianditu.com/api?v=4.0" type="text/javascript"></script>
	<script src="static/js/common/commonUtils.js" type="text/javascript"></script>

	<%--js文件--%>
    <script src="static/js/engineerproject/map.js" type="text/javascript"></script>
	<script src="static/js/engineerproject/conditionSearch.js" type="text/javascript"></script>
	
	<!-- <script src="static/lkk/jquery-2.1.1.min.js"></script> 
	<script src="static/lkk/fileinput.min.js"></script>
	<script src="static/lkk/bootstrap.min.js"></script> 
	<script src="static/lkk/zh.js"></script> -->
	</body>

 	<script type="text/javascript">
		$(top.hangge());
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
			
			//下拉框
			if(!ace.vars['touch']) {
				$('.chosen-select').chosen({allow_single_deselect:true}); 
				$(window)
				.off('resize.chosen')
				.on('resize.chosen', function() {
					$('.chosen-select').each(function() {
						 var $this = $(this);
						 $this.next().css({'width': $this.parent().width()});
					});
				}).trigger('resize.chosen');
				$(document).on('settings.ace.chosen', function(e, event_name, event_val) {
					if(event_name != 'sidebar_collapsed') return;
					$('.chosen-select').each(function() {
						 var $this = $(this);
						 $this.next().css({'width': $this.parent().width()});
					});
				});
				$('#chosen-multiple-style .btn').on('click', function(e){
					var target = $(this).find('input[type=radio]');
					var which = parseInt(target.val());
					if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
					 else $('#form-field-select-4').removeClass('tag-input-style');
				});
			}

			
			//复选框全选控制
			var active_class = 'active';
			$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
				var th_checked = this.checked;//checkbox inside "TH" table header
				$(this).closest('table').find('tbody > tr').each(function(){
					var row = this;
					if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
					else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
				});
			});
		});
		
		//导出excel
<%-- 		function toExcel(){
			window.location.href='<%=basePath%>history/excel';
		} --%>
	</script>
<!-- 	<script type="text/javascript">
$('#prevent').hide();
$('#progress').hide();
</script> -->
<!-- <script> 
function changegoverstage(){
	var goverstage=$("#goverstage").val();
	if(goverstage==1){
	$('#prevent').hide();
	$('#progress').hide();
	$('#basic').show();
	}
	if(goverstage==2){
		$('#progress').hide();
		$('#basic').hide();
		$('#prevent').show();
		}
	if(goverstage==3){
		$('#prevent').hide();
		$('#basic').hide();
		$('#progress').show();
		}
	console.log(goverstage);

}
$(document).on('ready',function() { 
	var geotype=$("#geotype").val();
	var id=$("#id").val();
	var url=encodeURI("id="+id+"&geotype="+geotype);
	//console.log( 'UpLoadFile/upload'+goverstage+'?'+url+"&goverstage="+goverstage);
		$("#basicSituation").fileinput({
			language : 'zh',  
			uploadUrl : 'UpLoadFile/upload1?'+url+"&goverstage="+1,  
			showCaption : true,//是否显示标题  
			browseClass : "btn btn-primary", //按钮样式 
			maxFileCount : 1, //表示允许同时上传的最大文件个数  
			enctype : 'multipart/form-data',  
			previewFileIcon : "<i class='glyphicon glyphicon-king'></i>",  
			msgFilesTooMany : "选择上传的文件数量({n}) 超过允许的最大数值{m}！",  
			allowedFileExtensions : [ ]  
			}).on("fileuploaded", function(e, data) {
		       alert("件上传成功");
		       reloadtree();
		       
		});  

   }); 
$(document).on('ready',function() { 
	var geotype=$("#geotype").val();
	var id=$("#id").val();
	var url=encodeURI("id="+id+"&geotype="+geotype);
	//console.log( 'UpLoadFile/upload'+goverstage+'?'+url+"&goverstage="+goverstage);
		$("#preventSituation").fileinput({
			language : 'zh',  
			uploadUrl : 'UpLoadFile/upload2?'+url+"&goverstage="+2,  
			showCaption : true,//是否显示标题  
			browseClass : "btn btn-primary", //按钮样式 
			maxFileCount : 1, //表示允许同时上传的最大文件个数  
			enctype : 'multipart/form-data',  
			previewFileIcon : "<i class='glyphicon glyphicon-king'></i>",  
			msgFilesTooMany : "选择上传的文件数量({n}) 超过允许的最大数值{m}！",  
			allowedFileExtensions : [ ]  
			}).on("fileuploaded", function(e, data) {
		       alert("件上传成功");
		       reloadtree();
		       
		});  

   }); 
$(document).on('ready',function() { 
	var geotype=$("#geotype").val();
	var id=$("#id").val();
	var url=encodeURI("id="+id+"&geotype="+geotype);
	//console.log( 'UpLoadFile/upload'+goverstage+'?'+url+"&goverstage="+goverstage);
		$("#progressSituation").fileinput({
			language : 'zh',  
			uploadUrl : 'UpLoadFile/upload3?'+url+"&goverstage="+3,  
			showCaption : true,//是否显示标题  
			browseClass : "btn btn-primary", //按钮样式 
			maxFileCount : 1, //表示允许同时上传的最大文件个数  
			enctype : 'multipart/form-data',  
			previewFileIcon : "<i class='glyphicon glyphicon-king'></i>",  
			msgFilesTooMany : "选择上传的文件数量({n}) 超过允许的最大数值{m}！",  
			allowedFileExtensions : [ ]  
			}).on("fileuploaded", function(e, data) {
		       alert("件上传成功");
		       reloadtree();
		       
		});  

   });
</script>  -->
</html>
