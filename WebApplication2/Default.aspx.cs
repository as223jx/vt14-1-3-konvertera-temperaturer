using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Skicka_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int start = int.Parse(Start.Text);
                int end = int.Parse(Slut.Text);
                int step = int.Parse(Steg.Text);

                for (var i = start; i <= end; i = i + step)
                {
                    TableRow row = new TableRow();
                    TableCell leftCell = new TableCell();
                    TableCell rightCell = new TableCell();

                    if (CtoF.Checked)
                    {
                        leftCell.Text = String.Format("{0} °C", i);
                        rightCell.Text = String.Format("{0} °F",TemperatureConverter.CelsiusToFahrenheit(i));
                    }

                    else if (FtoC.Checked)
                    {
                        leftCell.Text = String.Format("{0} °F", i);
                        rightCell.Text = String.Format("{0} °C", TemperatureConverter.FahrenheitToCelsius(i));
                    }

                    else
                    {
                        throw new ArgumentOutOfRangeException("FEL!");
                    }

                    row.Cells.Add(leftCell);
                    row.Cells.Add(rightCell);
                    Table.Rows.Add(row);
                }

                Table.Visible = true;
            }
        }
    }
}