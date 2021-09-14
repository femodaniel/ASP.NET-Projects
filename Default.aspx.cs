using System;
using System.Collections.Generic;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.ApplicationServices;







public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
     







    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string usn;
        string pwd;
        string err_msg;
          
     // Pass Login details to authentication service;                  
     usn = TextBox1.Text;
     pwd = TextBox2.Text;



        Messagelog msg = new Messagelog();

        //Call the Auth Service
        WebReference.AuthenticationService uad = new WebReference.AuthenticationService();

        WebReference.UserAdDetails uad1 = uad.GetUserAdFullDetails (LoginName: usn, Password: pwd, AppID: "TestID", AppKey: "087f7101089b76ce079e3725276d91d1a30872ba");


        try
        {
            if (uad1.Response == "00")
            {
                string sn = uad1.Department;
                string sn1 = uad1.Groups;
                string sn2 = uad1.ManagerDepartment;
                msg.WriteCustomLog(sn, sn1, sn2);//log the task status    

                Response.Redirect("dashboard2.aspx");





            }
            else
            {


                // FormsAuthentication.SetAuthcookie(txtUserName.text, false);
                //Response.Redirect("default.aspx");


                //javascript for message response         
                err_msg = "Invalid username or password";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + err_msg + "');", true);
                msg.WriteCustomLog(err_msg, uad1.Response, uad1.ResponseMessage);//log the task status   


            }
        }
        catch (Exception ex)
        {
            msg.WriteErrorLog(ex);
        }
      


      
        


    }

    
   
}