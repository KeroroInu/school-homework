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
using System.IO;

namespace GuestBook
{
	/// <summary>
	/// WebForm1 ��ժҪ˵����
	/// </summary>
	public class GuestBook : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.DropDownList lstSex;
		protected System.Web.UI.WebControls.TextBox txtEmail;
		protected System.Web.UI.WebControls.TextBox txtHomePage;
		protected System.Web.UI.WebControls.TextBox txtOicq;
		protected System.Web.UI.WebControls.Button butOk;
		protected System.Web.UI.WebControls.RequiredFieldValidator validatorName;
		protected System.Web.UI.WebControls.RegularExpressionValidator validatorEmail;
		protected System.Web.UI.WebControls.RegularExpressionValidator validatorHomePage;
		protected System.Web.UI.WebControls.RequiredFieldValidator validatorContent;
		protected System.Web.UI.WebControls.TextBox txtContent;
		protected System.Web.UI.HtmlControls.HtmlSelect lstPic;
		protected System.Web.UI.WebControls.TextBox txtName;
		protected System.Web.UI.WebControls.RangeValidator validatorOicq;
		protected System.Web.UI.HtmlControls.HtmlImage face;

		private void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
			if(!Page.IsPostBack)
			{
				InitlstPic();
			}
		}

		public void InitlstPic()
		{
			string currentDir,fileName,imgDir;
			FileInfo fi;
			if(lstSex.SelectedItem.Text == "˧��")
			{
				currentDir = Server.MapPath(".") + "\\pic\\gg";
				imgDir = "pic\\gg";
			}
			else
			{
				currentDir = Server.MapPath(".") + "\\pic\\mm";
				imgDir = "pic\\mm";
			}

			DirectoryInfo dir = new DirectoryInfo(currentDir);
			foreach(FileSystemInfo fsi in dir.GetFileSystemInfos())
			{
				if(fsi is FileInfo)
				{
					fi = (FileInfo)fsi;
					fileName = fi.Name;
					if((fi.Extension == ".gif")||(fi.Extension == ".jpg"))
					lstPic.Items.Add(new ListItem(fileName,imgDir + "\\" + fileName));
				}
			}
			lstPic.SelectedIndex=0;
			face.Src = lstPic.Value;
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN���õ����� ASP.NET Web ���������������ġ�
			//
			InitializeComponent();
			base.OnInit(e);
		}

		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
		/// </summary>
		private void InitializeComponent()
		{
			this.lstSex.SelectedIndexChanged += new System.EventHandler(this.lstSex_SelectedIndexChanged);
			this.butOk.Click += new System.EventHandler(this.butOk_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void butOk_Click(object sender, System.EventArgs e)
		{
			string conStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath(".") + "..\\DataBase\\data.aspx";
			string insertStr = "Insert into GuestBook (Name,Sex,Email,HomePage,Oicq,Content,Photo,IP) Values ('"
				+ txtName.Text + "','"
				+ lstSex.SelectedItem.Text + "','"
				+ txtEmail.Text + "','"
				+ txtHomePage.Text + "','"
				+ txtOicq.Text + "','"
				+ txtContent.Text + "','"
				+ lstPic.Value + "','"
				+ Request.ServerVariables["REMOTE_HOST"] + "')";
			OleDbConnection conn = new OleDbConnection(conStr);
			conn.Open();
			OleDbCommand comm = new OleDbCommand(insertStr,conn);
			comm.ExecuteNonQuery();
			conn.Close();
			Response.Redirect("view.aspx");
		}

		private void lstSex_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			lstPic.Items.Clear();
			InitlstPic();
		}
	}
}
