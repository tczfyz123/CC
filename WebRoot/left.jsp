
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
    
    <title>���Ͻ�ѧϵͳ</title>
<link href="images/css1/left_css.css" rel="stylesheet" type="text/css">

  </head>
<SCRIPT language=JavaScript>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>
 <body bgcolor="16ACFF">
<table width="98%" border="0" cellpadding="0" cellspacing="0" background="images/tablemde.jpg">
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#16ACFF"></td>
  </tr>
  <tr>
    <td><TABLE width="97%" 
border=0 align=right cellPadding=0 cellSpacing=0 class=leftframetable>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(1); height=25>ϵͳ����</TD>
              </tr>
            </table>            </TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="yhzhgl.jsp" 
            target=main>����Ա�û�����</A></TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td><table class="leftframetable" cellspacing="0" cellpadding="0" width="97%" align="right" 
border="0">
      <tbody>
        <tr>
          <td height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="20"></td>
          <td height="25" class="titledaohang" style="CURSOR: hand" onClick="showsubmenu(2);"><span class="STYLE1">�������Ϲ���</span></td>
              </tr>
            </table></td>
          </tr>
        <tr>
          <td><table id="submenu2" cellspacing="0" cellpadding="0" width="100%" border="0">
              <tbody>
                <tr>
                  <td width="2%"><img src="images/closed.gif" /></td>
                  <td height="23"><a 
            href="xinwentongzhi_add.jsp" 
            target="main">�����������</a></td>
                </tr>
                <tr>
                  <td><img src="images/closed.gif" /></td>
                  <td height="23"><a 
            href="xinwentongzhi_list.jsp" 
            target="main">�������ϲ�ѯ</a></td>
                </tr>
              </tbody>
          </table></td>
        </tr>
      </tbody>
    </table></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(3); 
    height=25>�γ���Ϣ����</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu3 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="kechengxinxi_add.jsp" 
            target=main>�γ���Ϣ���</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="kechengxinxi_list.jsp" 
            target=main>�γ���Ϣ��ѯ</A> </TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
		
      </TBODY>
    </TABLE></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  
  <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(4); 
    height=25>�������ع���</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu4 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="ziliaoxiazai_add.jsp" 
            target=main>�����������</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="ziliaoxiazai_list.jsp" 
            target=main>�������ز�ѯ</A> </TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
   <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(5); 
    height=25>ѧϰ��Ƶ����</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu5 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="xuexishipin_add.jsp" 
            target=main>ѧϰ��Ƶ���</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="xuexishipin_list.jsp" 
            target=main>ѧϰ��Ƶ��ѯ</A> </TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  
   <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
   <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(6); 
    height=25>�������Ϲ���</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu6 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="mod.jsp" 
            target=main>�޸�����</A> </TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
     <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(7); 
    height=25>ע���û�����</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu7 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="yonghuzhuce_list.jsp" 
            target=main>ע���û�����</A> </TD>
                </TR>
				
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
     <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(8); 
    height=25>������</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu8 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="xuanzeti_add.jsp" target=main>�������</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="xuanzeti_list.jsp" target=main>�����ѯ</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="zidongzujuan_add.jsp" target=main>������</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="zidongzujuan_list.jsp" target=main>������</A> </TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  
  
   <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
     <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(9); 
    height=25>ϵͳ����</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu9 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
			 	 <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="liuyanban_list.jsp" 
            target=main>���Թ���</A> </TD>
                </TR>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="dx.jsp?lb=ϵͳ����" 
            target=main>ϵͳ����</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="dx.jsp?lb=ϵͳ���" 
            target=main>ϵͳ���</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="youqinglianjie_add.jsp" 
            target=main>�����������</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="youqinglianjie_list.jsp" 
            target=main>�������Ӳ�ѯ</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="databack.jsp" 
            target=main>���ݱ���</A> </TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  <tr style="display:none">
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr style="display:none">
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr style="display:none">
    <td height="8">
	
<TABLE class=leftframetable cellSpacing=1 cellPadding=1 width="97%" align=right 
border=0 >
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 height=25>ϵͳ��Ϣ</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD 
      height=105><span class="STYLE2"><IMG src="images/closed.gif">��Ȩ���У�xxxx<br>
              <IMG src="images/closed.gif">���������xxxx<br>
              <IMG src="images/closed.gif">����֧�֣�<a href="http://www.865171.cn" target="_blank">xxxx</a><br>
              <IMG src="images/closed.gif">�������ģ�<a href="http://www.865171.cn" target="_blank">xxxx</a><br>
            <IMG src="images/closed.gif">ϵͳ�汾��1.0</span></TD>
        </TR>
      </TBODY>
    </TABLE>	</td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_bottom.jpg"></td>
  </tr>
</table>
  </body>
</html>

