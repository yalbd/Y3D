<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/login.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <label>enter username</label>
    <input id="username" name="username" type="text" placeholder="username" /><br /><br />

    <label>enter email</label>
    <input id="email" name="email" type="email" placeholder="email"/>

    <label>enter password</label>
    <input id="password" name="password" type="text" placeholder="password" minlength="8"/>
        
    <div>
        <p>forget password</p>
        <input id="forgetPassword" name="forgetPassword" type="button"/>
    </div>
</asp:Content>

