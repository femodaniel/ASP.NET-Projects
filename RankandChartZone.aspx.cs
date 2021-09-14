using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    public string a1;
    public double a2;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            GetchartData();
            GetchartType();

        }







    }
    private void GetchartType()

    {

        //Populate Dropdown with Chart Type

        foreach (int chartType in Enum.GetValues(typeof(SeriesChartType)))
        {
            ListItem li = new ListItem(Enum.GetName(typeof(SeriesChartType), chartType)); chartType.ToString();
            DropDownList1.Items.Add(li);

        }




    }


    private void GetchartData()


    {

        string connStri = ConfigurationManager.ConnectionStrings["ConnStrSql"].ConnectionString;
        SqlConnection SQLCONNECTION1i = new SqlConnection(connStri);
        SqlCommand CMD1i = new SqlCommand();
        SqlDataReader sqlreaderi;

        CMD1i.CommandText = string.Format("SELECT TOP 5 * FROM SELECTZONE ORDER BY CARDED_COUNT DESC");
        Series series = Chart1.Series["Series1"];
        Series series2 = Chart2.Series["Series2"];
        Series series3 = Chart3.Series["Series3"];

        SQLCONNECTION1i.Open();
        CMD1i.Connection = SQLCONNECTION1i;
        sqlreaderi = CMD1i.ExecuteReader();

        while (sqlreaderi.Read())
        {

            series.Points.AddXY(sqlreaderi["ZONE"].ToString(), sqlreaderi["CARDED_COUNT"].ToString());
            series2.Points.AddXY(sqlreaderi["ZONE"].ToString(), sqlreaderi["CARDABLE_COUNT"].ToString());
            series3.Points.AddXY(sqlreaderi["ZONE"].ToString(), sqlreaderi["UNCARDED_COUNT"].ToString());


        }




    }





    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        //Enables the Charts to change as a Chart type is selected

        GetchartData();
        Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList1.SelectedValue);
        Chart2.Series["Series2"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList1.SelectedValue);
        Chart3.Series["Series3"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList1.SelectedValue);




    }
}