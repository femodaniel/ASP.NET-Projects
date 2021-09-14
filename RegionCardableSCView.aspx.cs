using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;




public partial class Default2 : System.Web.UI.Page
{
    public string a1;
    public string a2;
    public string a3;
    public string a4;
    public double a5;





    protected void Page_Load(object sender, EventArgs e)
    {
       //string connStrOracle = ConfigurationManager.ConnectionStrings["ConnStrOracle"].ConnectionString;
        //string connStrSql = ConfigurationManager.ConnectionStrings["ConnStrSql"].ConnectionString;

        //if (!Page.IsPostBack)
        //{

        //    //Fetch offline transactions

        //    SqlConnection SQLCONNECTION1i = new SqlConnection(connStrSql);
        //    SqlCommand CMD1i = new SqlCommand();
        //    SqlDataReader sqlreaderi;



        //    CMD1i.CommandText = string.Format("Select [REGION] FROM BRANCH_TABLE");

        //    SQLCONNECTION1i.Open();
        //    CMD1i.Connection = SQLCONNECTION1i;
        //    sqlreaderi = CMD1i.ExecuteReader();
        //    //  set dataGridView1.DataSource= sqlreaderi;

        //    if (sqlreaderi.HasRows)
        //    {

        //        while (sqlreaderi.Read())
        //        {
        //            GridView item1 = new GridView();
        //            item1.Columns[0].HeaderText = "REGION";
        //            item1.Columns[1].HeaderText ="BRANCH SOL"                                          
        //            item1.CreateCells(GridView);
        //            item1.Cells[0].Value = "Delete";
        //            item1.Cells[1].Value = "Update";
        //            item1.Cells[2].Value = Convert.ToInt16(sqlreaderi.GetValue(sqlreaderi.GetOrdinal("RecordID"))).ToString();
        //            item1.Cells[3].Value = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("ProductCode")).ToString();
        //            item1.Cells[4].Value = Convert.ToDateTime(sqlreaderi.GetValue(sqlreaderi.GetOrdinal("TransDate")));
        //            item1.Cells[5].Value = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("MobilePhone")).ToString();
        //            item1.Cells[6].Value = (sqlreaderi.GetValue(sqlreaderi.GetOrdinal("CardSerial")).ToString());
        //            item1.Cells[7].Value = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("SmartCard")).ToString();
        //            item1.Cells[8].Value = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("TransDescription")).ToString();
        //            item1.Cells[9].Value = Convert.ToDecimal(sqlreaderi.GetValue(sqlreaderi.GetOrdinal("Amount")));
        //            item1.Cells[10].Value = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("ReportStatus")).ToString();
        //            item1.Cells[11].Value = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("ReceiptNo")).ToString();
        //            dataGridView1.Rows.Add(item1);
        //            item1.Columns.Add(0).;
        //        }

        //        dataGridView1.Refresh();
        //    }
        //    else
        //    {
        //        SQLCONNECTION1i.Close();
        //        linkLabel1.Visible = false;
        //        MessageBox.Show("There are no offline Transactions to Push", "Multichoice Offline Transactions");

        //    }


        //}



    }











    
}