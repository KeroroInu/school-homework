<% @ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">
void Page_Load(Object sender, EventArgs e) {
	SqlConnection Conn;
	//Conn=new SqlConnection("server=localhost;database=testDB2;uid=sa;pwd=sa"); 
		Conn=new SqlConnection("server=SERVER\\SQLEXPRESS;Initial Catalog=testDB1;Integrated Security=SSPI"); 
	Conn.Open();
	//Message.Text=Conn.State.ToString();
         
	
        //��ѯ����
        SqlCommand Comm=new SqlCommand("select * from info ",Conn);
        SqlDataReader dr=Comm.ExecuteReader();     
        dg.DataSource=dr;
        dg.DataBind();        
        
        //�������
         //SqlCommand Comm=new SqlCommand("insert into xs_kc(XH,KCH,CJ) values ('001106','1006',98)",Conn);
        // Comm.ExecuteNonQuery();   
        
        //ɾ������
        //SqlCommand Comm=new SqlCommand("delete from xs_kc where XH='001106'",Conn);
        //Comm.ExecuteNonQuery();   
        
        //�޸Ĳ���
        //SqlCommand Comm=new SqlCommand("update xs_kc set cj=100 where XH='001106'",Conn);
        //Comm.ExecuteNonQuery();   
        
        //�ر�����
        Conn.Close();
        Message.Text="�����ɹ���";
         
}
</script>
<asp:Label id="Message" runat="server" />
<asp:DataGrid id="dg" runat="server" />
