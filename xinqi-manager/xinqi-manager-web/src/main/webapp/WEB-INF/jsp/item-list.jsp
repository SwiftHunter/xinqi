	<table id="dg" class="easyui-datagrid" title="商品一览" style="width:700px;height:auto"
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
				<th data-options="field:'listprice',width:120,align:'right',editor:{type:'numberbox',options:{precision:1}}">List Price</th>
				<th data-options="field:'unitcost',width:120,align:'right',editor:'numberbox'">Unit Cost</th>
				<th data-options="field:'attr1',width:120,editor:'text'">Attribute</th>
				<th data-options="field:'status',width:100,align:'center',editor:{type:'checkbox',options:{on:'P',off:''}}">Status</th>
			</tr>
		</thead>
	</table>