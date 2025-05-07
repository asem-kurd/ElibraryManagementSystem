<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
AutoEventWireup="true" CodeBehind="userSignup.aspx.cs"
Inherits="ElibraryManagementSystem.userSignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="server"
>
  <div class="container" style="margin-top: 50px; margin-bottom: 50px">
    <div class="row">
      <div class="col-md-8 mx-auto">
        <div class="card">
          <div class="card-body">
            <!-- Login -->
            <div class="row">
              <div class="col">
                <center>
                  <h2>User Sign Up</h2>
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

            <!-- new row -->
            <div class="row">
              <div class="col-md-6">
                <label for="">Full Name</label>
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox1"
                    class="form-control"
                    runat="server"
                    placeholder="Type here..."
                  ></asp:TextBox>
                </div>
              </div>
              <!-- ******************************************************* -->
              <div class="col-md-6">
                <label for="">Date of Birth</label>
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox2"
                    class="form-control"
                    runat="server"
                    placeholder="Date of Birth"
                    TextMode="Date"
                  ></asp:TextBox>
                </div>
              </div>
            </div>
            <!-- new row -->
            <div class="row">
              <div class="col-md-6">
                <label for="">Contact Number</label>
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox3"
                    class="form-control"
                    runat="server"
                    placeholder="+(962)..."
                    TextMode="Number"
                  ></asp:TextBox>
                </div>
              </div>
              <!-- ******************************************************* -->
              <div class="col-md-6">
                <label for="">Email</label>
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox4"
                    class="form-control"
                    runat="server"
                    placeholder="Email"
                    TextMode="Email"
                  ></asp:TextBox>
                </div>
              </div>
            </div>

            <!-- new row -->
            <div class="row">
              <div class="col-md-4">
                <label for="">State</label>
                <div class="form-group">
                  <asp:DropDownList
                    ID="DropDownList1"
                    class="form-control"
                    runat="server"
                  >
                    <asp:ListItem Text="Select" Value="select" />
                    <asp:ListItem Text="Amman" Value="amman" />
                    <asp:ListItem Text="Irbid" Value="irbid" />
                    <asp:ListItem Text="Zarqa" Value="zarqa" />
                    <asp:ListItem Text="Mafraq" Value="mafraq" />
                    <asp:ListItem Text="Ajloun" Value="ajloun" />
                    <asp:ListItem Text="Jerash" Value="jerash" />
                    <asp:ListItem Text="Madaba" Value="madaba" />
                    <asp:ListItem Text="Balqa" Value="balqa" />
                    <asp:ListItem Text="Karak" Value="karak" />
                    <asp:ListItem Text="Tafilah" Value="tafilah" />
                    <asp:ListItem Text="Ma'an" Value="maan" />
                    <asp:ListItem Text="Aqaba" Value="aqaba" />
                  </asp:DropDownList>
                </div>
              </div>
              <!-- ******************************************************* -->
              <div class="col-md-4">
                <label for="">City</label>
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox6"
                    class="form-control"
                    runat="server"
                    placeholder="City"
                  ></asp:TextBox>
                </div>
              </div>
              <!-- ******************************************************* -->
              <div class="col-md-4">
                <label for="">Pin code</label>
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox7"
                    class="form-control"
                    runat="server"
                    placeholder="Pin code"
                    TextMode="Number"
                  ></asp:TextBox>
                </div>
              </div>
            </div>

            <!-- new row -->
            <div class="row">
              <div class="col">
                <label for="">Full address</label>
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox8"
                    class="form-control"
                    runat="server"
                    placeholder="Type your full address..."
                    TextMode="MultiLine"
                  ></asp:TextBox>
                </div>
              </div>
            </div>

            <br />
            <br />
            <!-- Login -->
            <div class="row">
              <div class="col">
                <center>
                  <h4>User credentials</h4>
                </center>
              </div>
            </div>

            <br />

            <!-- Divider -->
            <div class="row">
              <div class="col">
                <center>
                  <hr />
                </center>
              </div>
            </div>

            <!-- new row -->
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox9"
                    class="form-control"
                    runat="server"
                    placeholder="User Id"
                  ></asp:TextBox>
                </div>
              </div>
              <!-- ******************************************************* -->
              <div class="col-md-6">
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox10"
                    class="form-control"
                    runat="server"
                    placeholder="Password"
                    TextMode="Password"
                  ></asp:TextBox>
                </div>
              </div>
            </div>

            <!-- inputs -->
            <div class="row">
              <div class="col">
                <br />

                <br />
                <div class="form-group">
                  <asp:Button
                    ID="Button1"
                    runat="server"
                    class="btn btn-dark w-100"
                    Text="Sign Up"
                  />
                </div>
                <br />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
