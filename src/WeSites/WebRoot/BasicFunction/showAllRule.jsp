<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "����";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "����";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "����";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "����";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>


<script src="../layer/layer/layer.js"></script>
<script type="text/javascript">
    
        function validate()
        {
            var page = document.getElementsByName("page")[0].value;
                
            if(page > <s:property value="#session.pageBean.totalPage"/>)
            {
                alert("�������ҳ���������ҳ����ҳ�潫��ת����ҳ��");
                
                window.document.location.href = "AutoReply.action";
                
                return false;
            }
            
            return true;
        }
    
    </script>

</head>

<body>
<div align = "left "><a class="btn btn-success" href = "AutoReply.jsp">���</a></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align = "center">
  <tr>
    <td>
   		<fieldset style="height:100%;"align = "center">
		<legend>�ؼ��ʻظ�</legend>
    <table  style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
    	
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20"><span class="newfont07"></span></td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table class="table table-condensed table-bordered table-hover tab">

                  <tr bgcolor="#EEEEEE">
				         <td height="22" align="center" >������</td>
						<td height="22" align="center" >�ؼ���</td>
						<td height="22" align="center" >ƥ������</td>
						<td height="22" align="center" >ʱ��</td>
						<td height="22" align="center" >����</td>
                  </tr>

				  <s:iterator value="#session.pageBean.list" id="autoreply">
				  <tr  bgcolor="#FFFFFF">
					<td height="22" align="center" ><s:property value="#autoreply.rulename"/></td>
					<td height="22" align="center" ><s:property value="#autoreply.keyword"/></td>
					<td height="22" align="center" ><s:property value="#autoreply.keytype"/></td>
					<td height="22" align="center" ><s:property value="#autoreply.createtime"/></td>
					<td height="22" align="center" ><a href="DeleteRule.action?ruleid=<s:property value="#autoreply.ruleid"/>">ɾ��</a></td>
				  </tr>
				  </s:iterator>

            </table>
            <div id="page" class="tr">
                    <center>
    
        				<font size="5">��<font color="red">${sessionScope.pageBean.getTotalPage()}</font>ҳ </font>&nbsp;&nbsp;
        				<font size="5">��<font color="red">${sessionScope.pageBean.getAllRow()}</font>����¼</font><br/><br/>
        				<br/><font size="5">��<font color="red">${sessionScope.pageBean.getCurrentPage()}</font>ҳ</font><br/><br/>
       					<s:if test="#session.pageBean.currentPage == 1">
            				��ҳ&nbsp;&nbsp;&nbsp;��һҳ
        				</s:if>
        
        				<s:else>
            				<a href="AutoReply.action">��ҳ</a>
            				&nbsp;&nbsp;&nbsp;
            				<a href="AutoReply.action?page=<s:property value="#session.pageBean.currentPage - 1"/>">��һҳ</a>
        				</s:else>
        
        				<s:if test="#session.pageBean.currentPage != #session.pageBean.totalPage">
            				<a href="AutoReply.action?page=<s:property value="#session.pageBean.currentPage + 1"/>">��һҳ</a>
            				&nbsp;&nbsp;&nbsp;
            				<a href="AutoReply.action?page=<s:property value="#session.pageBean.totalPage"/>">βҳ</a>
        				</s:if>
        
        				<s:else>
            				��һҳ&nbsp;&nbsp;&nbsp;βҳ
        				</s:else>
    
    				</center><br/>
    
    				
                    
             </div>
             
            
            </td>
        </tr>
      </table>
          </td>
        </tr>
</table>
</fieldset>
</td>
</tr>
</table>
</body>
</html>

