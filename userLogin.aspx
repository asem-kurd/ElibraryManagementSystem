<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
AutoEventWireup="true" CodeBehind="userLogin.aspx.cs"
Inherits="ElibraryManagementSystem.userLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="server"
>
  <!-- login form for User -->
  <div class="container-fluid" style="margin-top: 50px; margin-bottom: 50px">
    <div class="row">
      <div class="col-md-6 mx-auto">
        <div class="card">
          <div class="card-body">
            <!-- Login -->
            <div class="row">
              <div class="col">
                <center>
                  <h3>User Login</h3>
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
                    placeholder="User Id"
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
                <br />
                <div class="form-group">
                  <a href="userSignup.aspx"
                    ><input
                      id="Button2"
                      type="button"
                      class="btn btn-outline-dark w-100"
                      value="Sign Up"
                  /></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
