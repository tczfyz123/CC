
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�γ���Ϣ</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","�ļ��ϴ�");
            pop.build();
            pop.show();
	    }
	</script>
  </head>
<script language="javascript">
function check()
{
	if(document.form1.kechengmingcheng.value==""){alert("������γ�����");document.form1.kechengmingcheng.focus();return false;}if(document.form1.xueshi.value==""){alert("������ѧʱ");document.form1.xueshi.focus();return false;}
}
function gow()
{
	document.location.href="kechengxinxi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="kechengxinxi_add_post.jsp">
  ��ӿγ���Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>�γ����ƣ�</td><td><input name='kechengmingcheng' type='text' id='kechengmingcheng' value='' size='50' />&nbsp;*</td></tr><tr><td>ѧʱ��</td><td><input name='xueshi' type='text' id='xueshi' value='' />&nbsp;*</td></tr><tr><td>ѧ�֣�</td><td><input name='xuefen' type='text' id='xuefen' value='' /></td></tr><tr><td>���ͣ�</td><td><select name='leixing' id='leixing'>
     <option value="ѡ��">ѡ��</option>
     <option value="����">����</option>
   </select></td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

