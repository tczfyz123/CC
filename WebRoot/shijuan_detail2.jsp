 <%
	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")  //�ж��û��Ƿ��Ѿ���½�����û�У��������½�����������ʾ��ǰ�û���Ϣ
	{
			out.print("<script>alert('�Բ���,�����ȵ�½!');window.history.go(-1);</script>");
	}
	 %>
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>���Ͻ�ѧϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE1 {
	color: #185838;
	font-weight: bold;
}
.STYLE2 {
	color: #FFFF00;
	font-weight: bold;
}
.STYLE3 {color: #6D2E18}
.STYLE4 {color: #6D2E18; font-weight: bold; }


-->
</style></head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">


<table width="1003" height="1100" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
<%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="1003" height="694" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top"><%@ include file="qtleft.jsp"%></td>
            <td valign="top"><table id="__01" width="757" height="694" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td valign="top"><table id="__01" width="757" height="219" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="757" height="37" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="22%" align="center" valign="bottom"><span class="STYLE1">���߲���</span></td>
                        <td width="78%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="757" height="636" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="14" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="714" height="174" valign="top"><p align="center">
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
</p>
                          <form name="form1" id="form1" method="post" action="jiaojuan.jsp?tishu=<%=tishu%>&fenzhi=<%=fenzhi%>&bianhao=<%=bianhao%>">
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
                                <td colspan="2">��Ŀ��<%=timu%>
                                    <input name="xztshitida<%=i%>" type="hidden" id="xztshitida<%=i%>" value="<%=daan%>"></td>
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
                            <p>
                              <input type="submit" name="Submit5" value="����">
                            </p>
                          </form>
                          <p align="center">&nbsp;</p>
<P align=center>&nbsp;</P>
                          </td>
                        <td width="29" background="qtimages/1_02_02_02_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_02_03.gif" width="757" height="8" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="1003" height="116" background="qtimages/1_03.gif"><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
</body>
</html>