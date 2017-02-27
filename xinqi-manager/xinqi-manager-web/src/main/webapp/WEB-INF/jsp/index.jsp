<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="/easyui/demo.css">
	<script type="text/javascript" src="/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="/easyui/jquery.easyui.min.js"></script>
<title>信旗酒店用品登陆界面</title>
</head>
<body class="easyui-layout">
    <div data-options="region:'west',title:'菜单',split:true" style="width:180px;">
        <ul id="menu" class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
             <li>
				<span>商品管理</span>
				<ul>
					<li data-options="attributes:{'url':'item-list'}">商品一览</li>
					<li data-options="attributes:{'url':'item-add'}">新增商品</li>
					<li data-options="attributes:{'url':'item-search'}">查询商品</li>
				</ul>
			 </li>
             <li>
                 <span>人员管理</span>
                 <ul>
                    <li data-options="attributes:{'url':'user-list'}">用户一览</li>
					<li data-options="attributes:{'url':'user-add'}">新增用户</li>
					<li data-options="attributes:{'url':'user-search'}">查询用户</li>
                 </ul>
             </li>
              <li>
                 <span>种类管理</span>
                 <ul>
                    <li data-options="attributes:{'url':'category-list'}">种类一览</li>
					<li data-options="attributes:{'url':'category-add'}">新增种类</li>
					<li data-options="attributes:{'url':'category-search'}">查询种类</li>
                 </ul>
             </li>
         </ul>
    </div>
    <div data-options="region:'center',title:''">
        <div id="tabs" class="easyui-tabs">
            <div title="首页" style="padding:20px;">
                    
            </div>
        </div>
    </div>
<script type="text/javascript">
		$(function(){
		    $('#menu').tree({
		        onClick: function(node){
		            if($('#menu').tree("isLeaf",node.target)){
		                var tabs = $("#tabs");
		                var tab = tabs.tabs("getTab",node.text);
		                if(tab){
		                    tabs.tabs("select",node.text);
		                }else{
		                    tabs.tabs('add',{
		                        title:node.text,
		                        href: node.attributes.url,
		                        closable:true,
		                        bodyCls:"content"
		                    });
		                }
		            }
		        }
		    });
		});
		$.extend($.fn.datagrid.methods, {
			editCell: function(jq,param){
				return jq.each(function(){
					var opts = $(this).datagrid('options');
					var fields = $(this).datagrid('getColumnFields',true).concat($(this).datagrid('getColumnFields'));
					for(var i=0; i<fields.length; i++){
						var col = $(this).datagrid('getColumnOption', fields[i]);
						col.editor1 = col.editor;
						if (fields[i] != param.field){
							col.editor = null;
						}
					}
					$(this).datagrid('beginEdit', param.index);
					for(var i=0; i<fields.length; i++){
						var col = $(this).datagrid('getColumnOption', fields[i]);
						col.editor = col.editor1;
					}
				});
			}
		});
		
		var editIndex = undefined;
		function endEditing(){
			if (editIndex == undefined){return true}
			if ($('#dg').datagrid('validateRow', editIndex)){
				$('#dg').datagrid('endEdit', editIndex);
				editIndex = undefined;
				return true;
			} else {
				return false;
			}
		}
		function onClickCell(index, field){
			if (endEditing()){
				$('#dg').datagrid('selectRow', index)
						.datagrid('editCell', {index:index,field:field});
				editIndex = index;
			}
		}
	</script> 
</body>  
</html>