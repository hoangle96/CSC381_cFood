<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        body {
            background: #fc4a1a; /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #f7b733, #fc4a1a); /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #f7b733, #fc4a1a); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        }
        .cover-content {
            vertical-align: middle;
            padding: 20% 0;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row cover-content">
        <div class="col">
            <div class="row">
                <img src="../Pictures/Logo/logo_white.png" class="img-fluid" alt="Responsive image">
            </div>
            <div class="row text-white">
                <h1 class="cover-heading">For all your cooking need.</h1>
            </div>
            <div class="row">
                <p class="lead">
                    <a href="#" class="btn btn-lg btn-outline-secondary">Start Browsing</a>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
