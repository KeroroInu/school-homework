using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace GuestBook
{
	/// <summary>
	/// View 的摘要说明。
	/// </summary>
	public class View : System.Web.UI.Page
	{
		int pageSize,recordCount,pageCount,currentPage;
		protected System.Web.UI.WebControls.Label lbRecordCount;
		protected System.Web.UI.WebControls.Label lbCurrentPage;
		protected System.Web.UI.WebControls.Label lbPageCount;
		protected System.Web.UI.WebControls.Repeater message;
		protected System.Web.UI.WebControls.LinkButton butPrev;
		protected System.Web.UI.WebControls.LinkButton butNext;
		protected System.Web.UI.WebControls.DropDownList dlsPageIndex;

		OleDbConnection conn;

		private void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			pageSize = 5;
			string conStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath(".") + "..\\DataBase\\data.aspx";
			conn = new OleDbConnection(conStr);
			if(!Page.IsPostBack)
			{
				currentPage = 0; // 初始化当前页为第0页
				ViewState["CurrentPage"] = 0;

				recordCount = CalculateRecord(); // 计算共有多少条记录
				ViewState["RecordCount"] = recordCount;

				pageCount = recordCount / pageSize; // 计算共有多少页
				if ( (recordCount % pageSize) > 0 )
				{
					pageCount ++;
				}
				ViewState["PageCount"] = pageCount;
				InitDls();

				BindData();
				
			}			
		}

		public int CalculateRecord()
		{
			int Count;
			string countStr = "Select count(*) as Total from GuestBook";
			conn.Open();
			OleDbCommand comm = new OleDbCommand(countStr,conn);
			OleDbDataReader dr = comm.ExecuteReader();
			if(dr.Read())
			{
				Count = int.Parse(dr["Total"].ToString());
			}
			else
			{
				Count = 0;
			}
			conn.Close();
			dr.Close();
			return Count;
		}

		public void BindData()
		{
			int startPage;
			startPage = currentPage * pageSize;
			string selectStr = "Select * from GuestBook order by id DESC";
			DataSet ds = new DataSet();
			conn.Open();
			OleDbDataAdapter da = new OleDbDataAdapter(selectStr,conn);
			int endPage = startPage + pageSize;
			da.Fill(ds,startPage,endPage,"Message");
			message.DataSource = ds;
			message.DataMember = "Message";
			message.DataBind();
			lbCurrentPage.Text = (currentPage+1).ToString();
			lbPageCount.Text = (pageCount+1).ToString();
			lbRecordCount.Text = recordCount.ToString();
			dlsPageIndex.SelectedIndex = currentPage;
			conn.Close();
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN：该调用是 ASP.NET Web 窗体设计器所必需的。
			//
			InitializeComponent();
			this.butPrev.Click += new System.EventHandler(this.butPrev_Click);
			this.butNext.Click += new System.EventHandler(this.butNext_Click);
			this.dlsPageIndex.SelectedIndexChanged += new System.EventHandler(dlsPageIndex_SelectedIndexChanged);
			base.OnInit(e);
		}
		
		/// <summary>
		/// 设计器支持所需的方法 - 不要使用代码编辑器修改
		/// 此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{    
			this.message.ItemDataBound += new System.Web.UI.WebControls.RepeaterItemEventHandler(this.message_ItemDataBound);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		
		#endregion
		private void butNext_Click(object sender, System.EventArgs e)
		{
			currentPage = (int)ViewState["CurrentPage"];
			pageCount = (int)ViewState["PageCount"];
			recordCount = (int)ViewState["RecordCount"];

			if(currentPage<pageCount)
				currentPage++;
			ViewState["CurrentPage"] = currentPage;
			BindData();
		}

		private void butPrev_Click(object sender, System.EventArgs e)
		{
			currentPage = (int)ViewState["CurrentPage"];
			pageCount = (int)ViewState["PageCount"];
			recordCount = (int)ViewState["RecordCount"];

			if(currentPage>0)
				currentPage--;
			ViewState["CurrentPage"] = currentPage;
			BindData();
		}

		public void DelOrRep_Click(object sender,CommandEventArgs e)
		{
			string commandText;
			if(e.CommandName=="Del")
			{
				if(Session["Admin"] != null)
				{
					commandText = "Delete from GuestBook where ID = " + e.CommandArgument;
					conn.Open();
					OleDbCommand comm = new OleDbCommand(commandText,conn);
					comm.ExecuteNonQuery();
					conn.Close();
					Response.Write("<script>alert(\"删除成功!\");</script>");
					Response.Redirect("view.aspx");
				}
				else
					Response.Redirect("login.aspx");
			}
			if(e.CommandName=="Rep")
				Response.Redirect("Reply.aspx?GuestID=" + e.CommandArgument);
		}

		public void InitDls()
		{
			for(int i=1;i<=(pageCount+1);i++)
			{
				dlsPageIndex.Items.Add(new ListItem("第"+i+"页",(i-1).ToString()));
			}
		}
		private void dlsPageIndex_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			//currentPage = (int)ViewState["CurrentPage"];
			pageCount = (int)ViewState["PageCount"];
			recordCount = (int)ViewState["RecordCount"];
			currentPage = int.Parse(dlsPageIndex.SelectedItem.Value);
			ViewState["CurrentPage"] = currentPage;
			BindData();
		}

		public string GetAddress(string ip)
		{
			string[] ipArray;
			long numString;
			string address;
			ipArray = ip.Split('.');
			numString = (long.Parse(ipArray[0])*256*256*256) 
				+ (int.Parse(ipArray[1])*256*256) 
				+ (int.Parse(ipArray[2])*256) 
				+ int.Parse(ipArray[3])-1;
			string conIPStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath(".") 
				+ "..\\DataBase\\ip.aspx";
			string selectStr = "Select 国家,城市 from ipadress "
				+" where ip1 <= " + numString + " and ip2 >= " + numString;
			OleDbDataReader dr;
			OleDbConnection connIP = new OleDbConnection(conIPStr);
			connIP.Open();
			OleDbCommand commIP = new OleDbCommand(selectStr,connIP);
			dr = commIP.ExecuteReader();
			if(dr.Read())
                address = dr["国家"].ToString() + dr["城市"].ToString();
			else address = "****";
			connIP.Close();
			return address;
		}

		private void message_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
		{
		
		}

		private void message_ItemDataBound(object sender, System.Web.UI.WebControls.RepeaterItemEventArgs e)
		{
			if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
			{
				if (Session["admin"] != null)
				{
					LinkButton lb = (LinkButton)(e.Item.FindControl("DelButton"));
					lb.Attributes.Add("onclick", "return confirm('您真的要删除吗？');");
				}
			} 
		}
	}
}
