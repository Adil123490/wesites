<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<link rel="stylesheet" rev="stylesheet" href="css/style.css " type="text/css" media="all" />
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<script type="text/javascript" src="../js/typem.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<script type = "text/javascript" src = "../ckeditor/ckeditor.js"></script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">

		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;" >
				<legend>����Զ��ظ�</legend>
				<div >
                    <form action="AddRule.action">
                        <div>
                            
                            <div>
                            <label>*��������
                                <s:textfield name="rulename" label="rulename" type="text"  placeholder="������"/>
                            </label>
                            </div>
                        </div>
                        
                        <div >
                            <div>
                            	<label>*�ؼ��ʣ�
                                <s:textfield name="keyword" label="keyword" placeholder="�ؼ���"/>                           
                            	</label>
                            </div>
                        	
                        </div>
                        
                        <div>              
                            <div >
                                *�ؼ������ͣ�<br/>
                                <s:radio list="#{'1':'��ȫƥ��','2':'ģ��ƥ��'}" name="keytype" value="1"/>
								<br/>
                            </div>
                        </div>
                        <div >
                            <label>*�Զ��ظ����ݣ�</label>
                            <div>
                                <s:textarea   name="replycontent" rows="10" label="replycontent" placeholder="�Զ��ظ�����"/> 
                            </div>
                        </div>
                        <div >
                    	<s:submit  value="���� " class="btn" ></s:submit>
                    	<input name="reset" type="reset" value="����"/>
                		</div>
                    </form>
                </div>
			  <br />
				</fieldset>			</TD>
			
		</TR>
		</TABLE>

</body>
</html>

