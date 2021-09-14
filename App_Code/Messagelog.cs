using System;
using System.IO;


/// <summary>
/// Summary description for Messagelog
/// </summary>
public class Messagelog
{

    //Log error messages
    public  void WriteErrorLog(Exception ex)
    {
        StreamWriter sw = null;

        try
        {

            string datelog = DateTime.Now.ToString("yyyy-MM-dd");
            sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory + "\\LogFile\\LogFile_" + datelog + ".txt", true);
            sw.WriteLine(DateTime.Now.ToString() + ": " + ex.Source.ToString().Trim() + "; " + ex.Message.ToString().Trim());
            sw.Flush();
            sw.Close();
        }
        catch
        {

        }

    }

    //Log custom messages
    public void WriteCustomLog(string Message, string Message1, string Message2)
    {
        StreamWriter sw = null;

        try
        {
            string datelog = DateTime.Now.ToString("yyyy-MM-dd");
            sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory + "\\LogFile\\LogFile_" + datelog + ".txt", true);
            sw.WriteLine(DateTime.Now.ToString() + ": " + Message +"||"+ Message1 +"||"+ Message2);
            sw.Flush();
            sw.Close();
        }
        catch
        {


        }

    }
}