using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{   
    public string answer;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submitButton"] != null)
        {
            string Name = Request.Form["name"].ToString();
            string username = Request.Form["userName"].ToString();
            string password1 = Request.Form["password1"].ToString();
            string password2 = Request.Form["password2"].ToString();
            string phoneNumber = Request.Form["phoneNumber"].ToString();
            string email = Request.Form["email"].ToString();
            answer = "";
            answer += "name: " + Name + "<br/>";
            answer += "username: " + username + "<br/>";
            answer += "password: " + password1 + "<br/>";
            answer += "password entered again: " + password2 + "<br/>";
            answer += "phone number: " + phoneNumber + "<br/>";
            answer += "email: " + email + "<br/>";
            answer += "Dear " + Name + " we don't have a database right now so we can't sign you up.";
        } 
    }
}