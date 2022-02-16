<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Home</h2>
    <h3>there is one of my models and you can click on gallery to see more models</h3>
    <div class="sketchfab-embed-wrapper"> 
        <iframe title="Dagger1" frameborder="0" mozallowfullscreen="true" webkitallowfullscreen="true" allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking execution-while-out-of-viewport execution-while-not-rendered web-share src="https://sketchfab.com/models/5b22e204d0f5474d90f6c5232ee51d57/embed" width="500", height="500"> </iframe>
    </div>
</asp:Content>

