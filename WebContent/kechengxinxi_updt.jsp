
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
    
    <title>�γ���Ϣ</title><script language="javascript" src="js/Calendar.js"></script>
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
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.kechengmingcheng.value==""){alert("������γ�����");document.form1.kechengmingcheng.focus();return false;}if(document.form1.xueshi.value==""){alert("������ѧʱ");document.form1.xueshi.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="kechengxinxi_updt_post.jsp?id=<%=id %>">
  �޸Ŀγ���Ϣ:
  <br><br>
  <%
  String sql="select * from kechengxinxi where id="+id;
  String kechengmingcheng="";String xueshi="";String xuefen="";String leixing="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  kechengmingcheng=RS_result.getString("kechengmingcheng");xueshi=RS_result.getString("xueshi");xuefen=RS_result.getString("xuefen");leixing=RS_result.getString("leixing");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>�γ����ƣ�</td><td><input name='kechengmingcheng' type='text' id='kechengmingcheng' size='50' value='<%=kechengmingcheng%>' /></td></tr><tr><td>ѧʱ��</td><td><input name='xueshi' type='text' id='xueshi' value='<%= xueshi%>' /></td></tr><tr><td>ѧ�֣�</td><td><input name='xuefen' type='text' id='xuefen' value='<%= xuefen%>' /></td></tr><tr><td>���ͣ�</td><td><select name='leixing' id='leixing'>
       <option value="ѡ��">ѡ��</option>
       <option value="����">����</option>
     </select></td></tr><script language="javascript">document.form1.leixing.value='<%=leixing%>';</script><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'><%=beizhu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


