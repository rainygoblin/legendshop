<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ include file="/WEB-INF/pages/common/back-common.jsp"%>
<%@ include file="/WEB-INF/pages/common/taglib.jsp"%>
<html>
    <head>
        <title>创建标签</title>
         <script type='text/javascript' src="<ls:templateResource item='/common/js/jquery.js'/>"></script>
         <script type='text/javascript' src="<ls:templateResource item='/common/js/jquery.validate.js'/>" /></script>
        <link rel="stylesheet" type="text/css" media="screen" href="<ls:templateResource item='/common/default/css/indexJpgForm.css'/>" />
        <style type="text/css" media="all">
          @import url(<ls:templateResource item='/common/default/css/screen.css'/>);
        </style>
        <script language="javascript">
		    $.validator.setDefaults({
		    });

    $(document).ready(function() {
    jQuery("#form1").validate({
            rules: {
            name: {
                required: true
            },
            sortId: "required"，
            newsCategoryId: "required"
            
        },
        messages: {
            name: {
                required: "请输入名称"
            },
            sortId: {
                required: "请选择商品分类"
            },
            newsCategoryId:{
            	required: "请选择商品分类"
            }
        }
    });
 
      $("#col1 tr").each(function(i){
      if(i>0){
         if(i%2 == 0){
             $(this).addClass('even');
         }else{    
              $(this).addClass('odd'); 
         }   
    }
     });   
         $("#col1 th").addClass('sortable'); 
});
</script>
</head>
    <body>
        <form action="<ls:url address='/admin/tag/save'/>" method="post" id="form1">
            <input id="tagId" name="tagId" value="${tag.tagId}" type="hidden">
   <table class="${tableclass}" style="width: 100%">
    <thead>
    	<tr><td>
    			<a href="<ls:url address='/admin/index'/>" target="_parent">首页</a> &raquo; 商城管理  &raquo; 
				<a href="<ls:url address='/admin/tag/query'/>">标签管理</a>
    	</td></tr>
    </thead>
    </table>
            <div align="center">
            <table border="0" align="center" class="${tableclass}" id="col1">
                <thead>
                    <tr class="sortable">
                        <th colspan="2">
                            <div align="center">
                                创建标签
                            </div>
                        </th>
                    </tr>
                </thead>
     			     <tr>
        <td>
          <div align="center">名称 <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="name" id="name" value="${tag.name}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">商品分类<font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="sortId" id="sortId" value="${tag.sortId}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">新闻栏目<font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="newsCategoryId" id="newsCategoryId" value="${tag.newsCategoryId}" /></p>
        </td>
      </tr>
      <tr>
                    <td colspan="2">
                        <div align="center">
                            <input type="submit" value="提交" />
                            <input type="reset" value="重置" />
                            <input type="button" value="返回"
                                onclick="window.location='<ls:url address="/admin/tag/query"/>'" />
                        </div>
                    </td>
                </tr>
            </table>
           </div>
        </form>
    </body>
</html>


