
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
    
    <title>�Ծ���ϸ</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>
 <%
  String id=request.getParameter("id");
  String sql="",nnn="",bianhao="",tishu="",fenzhi="";
											sql="select * from zidongzujuan where id="+id+"";
											 ResultSet RS_result=connDbBean.executeQuery(sql);
								 while(RS_result.next()){
								 nnn=RS_result.getString("timu");
								 bianhao=RS_result.getString("bianhao");
								 tishu=RS_result.getString("tishu");
								 fenzhi=RS_result.getString("fenzhi");
								 }
   %>
  <body >
  <form name="form1" id="form1" method="post" action="">
    <p>�Ծ��ţ�<%=bianhao%> ����������<%=tishu%> ÿ���ֵ��<%=fenzhi%></p>
    <table width="100%" height="103" border="1" cellpadding="1" cellspacing="0" bordercolor="#F8C878">
                          <tr>
                            <td height="33" colspan="3">ѡ����</td>
      </tr>
						  <%
											
  sql="select * from xuanzeti where id in ("+nnn+")";
  
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
  id="";
 String zhuanye="";String xueke="";String timu="";String xuanxiangA="";String xuanxiangB="";String xuanxiangC="";String xuanxiangD="";String daan="";String nanduxishu="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
zhuanye=RS_result.getString("zhuanye");xueke=RS_result.getString("xueke");timu=RS_result.getString("timu");xuanxiangA=RS_result.getString("xuanxiangA");xuanxiangB=RS_result.getString("xuanxiangB");xuanxiangC=RS_result.getString("xuanxiangC");xuanxiangD=RS_result.getString("xuanxiangD");daan=RS_result.getString("daan");nanduxishu=RS_result.getString("nanduxishu");
 addtime=RS_result.getString("addtime");
 
											%>
                          
                          <tr>
                            <td width="9%" height="33">���⣺</td>
                            <td colspan="2">��Ŀ��<%=timu%>  <input name="xztshitida<%=i%>" type="hidden" id="xztshitida<%=i%>" value="<%=daan%>"></td>
                          </tr>
                          <tr>
                            <td rowspan="2">ѡ��</td>
                            <td width="52%"><input type="radio" name="xztxxa<%=i%>" value="A">
                              ѡ��A��<%=xuanxiangA%></td>
                            <td width="39%"><input type="radio" name="xztxxa<%=i%>" value="B">
                              ѡ��B��<%=xuanxiangB%></td>
                          </tr>
                          <tr>
                            <td><input type="radio" name="xztxxa<%=i%>" value="C">
                              ѡ��C��<%=xuanxiangC%></td>
                            <td><input type="radio" name="xztxxa<%=i%>" value="D">
                              ѡ��D��<%=xuanxiangD%></td>
                          </tr>
                          <%
											  }
											  %>
    </table>
  </form>
  </body>
</html>

