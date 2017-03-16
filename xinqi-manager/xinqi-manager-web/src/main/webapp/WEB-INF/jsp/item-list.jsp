<table id="dg" class="easyui-datagrid" title="item-list" style="width:700px;height:auto"
		data-options="
			iconCls: 'icon-edit',
			singleSelect: true,
			url: '/item/list',
			method:'get',
			onClickCell: onClickCell
		">
	<thead>
		<tr>
			<th data-options="field:'id',width:100">Item ID</th>
			<th data-options="field:'itemName',width:100,editor:'text'">Item Name</th>
			<th data-options="field:'itemPrice',width:120,align:'right',editor:{type:'numberbox',options:{precision:2}}">Item Price</th>
			<th data-options="field:'salePrice',width:100,align:'center',editor:{type:'numberbox',options:{precision:2}}">Sale Price</th>
			<th data-options="field:'itemSize',width:120,align:'right',editor:'text'">Item Size</th>
			<th data-options="field:'itemProducer',width:120,editor:'text'">Item Producer</th>
			<th data-options="field:'createTime',width:120,editor:'datebox'">Create Time</th>
			<th data-options="field:'deletedflag',width:100,align:'center',editor:{type:'checkbox',options:{on:'P',off:''}}">deleted flag</th>
			<th data-options="field:'categoryId',width:100,align:'center',editor:{type:'checkbox',options:{on:'P',off:''}}">category Id</th>
		</tr>
	</thead>
</table>