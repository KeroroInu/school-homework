using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p4
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LabelNum1.Text = LabelNum2.Text = "0";
            }
        }

        protected void getInputValue(object sender, EventArgs e)
        {
            TBResult.Text += ((Button)sender).Text;
        }

        protected void Dispose(object sender, EventArgs e)
        {
            switch (((Button)sender).Text)
            {
                case "+":
                    LabelNum1.Text = TBResult.Text;
                    LabelOperator.Text = "+";
                    TBResult.Text += LabelOperator.Text;
                    break;
                case "-":
                    LabelNum1.Text = TBResult.Text;
                    LabelOperator.Text = "-";
                    TBResult.Text += LabelOperator.Text;
                    break;
                case "*":
                    LabelNum1.Text = TBResult.Text;
                    LabelOperator.Text = "*";
                    TBResult.Text += LabelOperator.Text;
                    break;
                case "/":
                    LabelNum1.Text = TBResult.Text;
                    LabelOperator.Text = "/";
                    TBResult.Text += LabelOperator.Text;
                    break;
                case "C":
                    TBResult.Text = "";
                    LabelNum1.Text = LabelNum2.Text = "0";
                    LabelOperator.Text = "";
                    break;
                default:
                    break;
            }
        }

        protected void calculate(object sender, EventArgs e)
        {
            switch (LabelOperator.Text)
            {
                case "+":
                    LabelNum2.Text = TBResult.Text.Substring(LabelNum1.Text.Length + 1);
                    TBResult.Text += "=" + (Int32.Parse(LabelNum1.Text) + Int32.Parse(LabelNum2.Text)).ToString();
                    break;
                case "-":
                    LabelNum2.Text = TBResult.Text.Substring(LabelNum1.Text.Length + 1);
                    TBResult.Text += "=" + (Int32.Parse(LabelNum1.Text) - Int32.Parse(LabelNum2.Text)).ToString();
                    break;
                case "*":
                    LabelNum2.Text = TBResult.Text.Substring(LabelNum1.Text.Length + 1);
                    TBResult.Text += "=" + (Int32.Parse(LabelNum1.Text) * Int32.Parse(LabelNum2.Text)).ToString();
                    break;
                case "/":
                    LabelNum2.Text = TBResult.Text.Substring(LabelNum1.Text.Length + 1);
                    TBResult.Text += "=" + (double.Parse(LabelNum1.Text) / double.Parse(LabelNum2.Text)).ToString();
                    break;
                default:
                    break;
            }
        }
    }
}