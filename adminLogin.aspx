<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs"
Inherits="ElibraryManagementSystem.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="server"
>
  <div class="container" style="margin-top: 50px; margin-bottom: 50px">
    <div class="row">
      <div class="col-md-6 mx-auto">
        <div class="card">
          <div class="card-body">
            <!-- Login -->
            <div class="row">
              <div class="col">
                <center>
                  <h3>Admin Login</h3>
                </center>
              </div>
            </div>
            <!-- Divider -->
            <div class="row">
              <div class="col">
                <center>
                  <hr />
                </center>
              </div>
            </div>
            <!-- inputs -->
            <div class="row">
              <div class="col">
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox1"
                    class="form-control"
                    runat="server"
                    placeholder="Admin Id"
                  ></asp:TextBox>
                </div>
                <br />
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox2"
                    class="form-control"
                    runat="server"
                    placeholder="Password"
                  ></asp:TextBox>
                </div>
                <br />
                <div class="form-group">
                  <asp:Button
                    ID="Button1"
                    runat="server"
                    class="btn btn-dark w-100"
                    Text="Login"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
