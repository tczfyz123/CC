
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
    
    <title>ѧϰ��Ƶ</title><script language="javascript" src="js/Calendar.js"></script>
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
	if(document.form1.bianhao.value==""){alert("��������");document.form1.bianhao.focus();return false;}if(document.form1.mingcheng.value==""){alert("����������");document.form1.mingcheng.focus();return false;}if(document.form1.wenjian.value==""){alert("�������ļ�");document.form1.wenjian.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="xuexishipin_updt_post.jsp?id=<%=id %>">
  �޸�ѧϰ��Ƶ:
  <br><br>
  <%
  String sql="select * from xuexishipin where id="+id;
  String bianhao="";String mingcheng="";String kecheng="";String zhujiangren="";String neirong="";String wenjian="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");kecheng=RS_result.getString("kecheng");zhujiangren=RS_result.getString("zhujiangren");neirong=RS_result.getString("neirong");wenjian=RS_result.getString("wenjian");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' /></td></tr><tr><td>���ƣ�</td><td><input name='mingcheng' type='text' id='mingcheng' size='50' value='<%=mingcheng%>' /></td></tr><tr><td>�γ̣�</td><td><select name='kecheng' id='kecheng'><%sql="select kechengmingcheng from kechengxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("kechengmingcheng")%>" ><%=RS_result.getString("kechengmingcheng")%></option><%}%></select></td></tr><script language="javascript">document.form1.kecheng.value='<%=kecheng%>';</script><tr><td>�����ˣ�</td><td><input name='zhujiangren' type='text' id='zhujiangren' value='<%= zhujiangren%>' /></td></tr><tr><td>���ݣ�</td><td><textarea name="neirong" style="display:none"><%=neirong%></textarea><iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=neirong&style=coolblue" frameborder="0" scrolling="no" width="600" HEIGHT="350"></iframe></td></tr><tr><td>�ļ���</td><td><input name='wenjian' type='text' id='wenjian' size='50' value='<%= wenjian%>' />&nbsp;<input type='button' value='�ϴ�' onClick="up('wenjian')"/></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


