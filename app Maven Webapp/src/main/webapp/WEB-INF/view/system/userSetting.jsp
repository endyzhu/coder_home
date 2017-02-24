<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div class="modal fade" tabindex="-1" role="dialog" id="user-setting-modal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">设置</h4>
      </div>
      <div class="modal-body">
        <form action="resetPasswd" id="resetPasswd" method="POST">
		  <div class="form-group">
		    <label for="exampleInputEmail1">原密码</label>
		    <input type="password" class="form-control" id="old-passwd">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">新密码</label>
		    <input type="password" class="form-control" id="new-passwd">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">确认新密码</label>
		    <input type="password" class="form-control" id="confirm-passwd">
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" id="setting-shutdown">关闭</button>
        <button type="button" class="btn btn-primary" id="resetPasswd-btn">保存</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script>
$(function(){
	$("#user-setting").click(function(){
		$("#old-passwd").val('');
		$("#new-passwd").val('');
		$("#confirm-passwd").val('');
		$('#user-setting-modal').modal('show');
	});
	$("#setting-shutdown").click(function(){
		$("#old-passwd").val('');
		$("#new-passwd").val('');
		$("#confirm-passwd").val('');
		$('#user-setting-modal').modal('hide');
	});
	$("#resetPasswd-btn").click(function(){
		resetPasswd();
	});
});
function resetPasswd(){
	if(checkPasswd()){
		$.ajax({
			type : "POST",
			dataType : "json",
			async: true,
			data : {
				"oldPasswd"	: $("#old-passwd").val(),
				"newPasswd" : $("#new-passwd").val(),
				"confirmPasswd" : $("#confirm-passwd").val()
			},
			url : 'manager/resetPasswd',
			success : function(data) {
				var msg = data.msg;
				if(msg == 'success') {
					$("#old-passwd").val('');
					$("#new-passwd").val('');
					$("#confirm-passwd").val('');
					$('#user-setting-modal').modal('hide');
					alert('修改密码成功！');
				}else if (msg == 'wrong') {
					alert('原密码错误！请重新输入');
				}else {
					alert('修改密码失败！');
				}

			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
			},
			complete : function(XMLHttpRequest, textStatus) {
			}
		});
	}
}
function checkPasswd(){
	var oldPasswd = $("#old-passwd").val();
	var newPasswd = $("#new-passwd").val();
	var confirmPasswd = $("#confirm-passwd").val();
	if(oldPasswd == '' || newPasswd == '' || confirmPasswd == ''){
		alert('请输入完整！');
		return false;
	}
	if(newPasswd != confirmPasswd){
		alert('两次输入密码不一致！');
		return false;
	}
	return true;
}
</script>
