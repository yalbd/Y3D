<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/register.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        function onSubmit() {
            var blnIsValid = true;
            document.getElementById('errorMessage1').style.display = "none";
            document.getElementById('errorMessage2').style.display = "none";
            document.getElementById('errorMessage3').style.display = "none";
            document.getElementById('errorMessage4').style.display = "none";
            document.getElementById('errorMessage5').style.display = "none";
            var password1 = document.getElementById('p1');
            var password2 = document.getElementById('p2');
            var error1 = document.getElementById('errorMessage1');
            if (password1.value != password2.value ) {
                error1.textContent = "the passwords does not match\n";
                document.getElementById('errorMessage1').style.display = "block";
                blnIsValid = false;
            }
            var error2 = document.getElementById('errorMessage2');
            if (password1.value == "" || password2.value == "") {
                error2.textContent = "password required";
                document.getElementById('errorMessage4').style.display = "block";
                blnIsValid = false;
            }
            var username = document.getElementById('username');
            var error3 = document.getElementById('errorMessage3');
            if (username.value == null || username.value == "") {
                error3.textContent = "username required";
                document.getElementById('errorMessage2').style.display = "block";
                blnIsValid = false;
            }
            var error4 = document.getElementById('errorMessage4');
            var email = document.getElementById("email");
            if (email.value == "") {
                error4.textContent = "email required";
                document.getElementById('errorMessage4').style.display = "block";
                blnIsValid = false;
            }
            var error5 = document.getElementById('errorMessage5');
            var phoneNumber = document.getElementById('phoneNumber');
            if (phoneNumber.value == "") {
                error5.textContent += "phone number required";
                document.getElementById('errorMessage5').style.display = "block";
                blnIsValid = false;
            }
            return blnIsValid;
        }
        function onblur() {

        }
    </script>
    <label for="name" >please enter your name</label>
    <input type="text" name="name"/><br /><br />
            
    <label for="name">please enter your username</label>
    <input type="text" name="userName" id="username"/><br /><br />
            
    <label for="password">please enter your password</label>
    <input type="password" maxlength="12" minlength="8" name="password1" id="p1"/><br /><br />
            
    <label for="password">please enter your password again</label>
    <input type="password" maxlength="12" minlength="8" name="password2" id="p2"/><br /><br />
            
    <label for="phone" maxlength="10">please enter your phone number</label>
    <input type="tel" id="phoneNumber" placeholder="XXX-XXX-XXXX" pattern="05[0-9]{1}-[0-9]{3}-[0-9]{4}" name="phoneNumber"/><br /><br />
            
            
    <label for="email">please enter your email:</label>
    <input type="email" name="email" id="email"/><br /><br />
            
    <input type="reset" value="Reset" name="resetButton" id="reset" OnClientClick="javascript:answer=""/><br />
            
    <button  id="submitButton" name="submitButton" onclick="return onSubmit()">Submit</button>
         
    <div id="loginBox">
        <a href="login.aspx" id="login">login</a>
    </div>

    <p id="errorMessage1"></p>
    <p id="errorMessage2"></p>
    <p id="errorMessage3"></p>
    <p id="errorMessage4"></p>
    <p id="errorMessage5"></p>
    <p name="answer" id="answer"><%=answer %></p>
    
    
</asp:Content>

