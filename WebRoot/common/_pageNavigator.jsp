<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="c_pate" style="margin-top: 5px;">
	<s:if test="articleResult.totalCount > 0">
		<table width="100%" class="pageDown" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="right">
                 	总共 <s:property value="articleResult.totalCount"/> 条记录，当前第 <s:property value="articleResult.pageNo"/> 页，
                 	共 <s:property value="articleResult.totalPageCount"/> 页 
                 	<s:if test="articleResult.pageNo > 1">
                 	    &nbsp;&nbsp;<a href="javascript:doGoPage(<s:property value='articleResult.pageNo-1'/>)">上一页</a>
              	    </s:if>
              	    <s:if test="articleResult.pageNo < articleResult.totalPageCount">
                        &nbsp;&nbsp;<a href="javascript:doGoPage(<s:property value='articleResult.pageNo+1'/>)">下一页</a>
                    </s:if>        
					到&nbsp;<input id="pageNo" name="pageNo" type="text" style="width: 30px;" onkeypress="if(event.keyCode == 13){doGoPage(this.value);}" min="1"
					max="3" value="<s:property value='articleResult.pageNo'/>" /> &nbsp;&nbsp;
				</td>
			</tr>
		</table>
	</s:if><s:else>暂无数据！</s:else>	
</div>
<script type="text/javascript">
	//翻页
	function doGoPage(pageNo){
		window.location.href = "${pageContext.request.contextPath }/web/web_more.action?pageNo=" + pageNo;
	}
</script>