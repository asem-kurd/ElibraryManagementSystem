<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
AutoEventWireup="true" CodeBehind="adminBookIssuing.aspx.cs"
Inherits="ElibraryManagementSystem.adminBookIssuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="server"
>
  <div class="container-fluid" style="margin-top: 50px; margin-bottom: 50px">
    <div class="row">
      <div class="col-md-5">
        <div class="card">
          <div class="card-body">
            <!-- Left -->
             <!-- ******************************************************* -->
            <!-- Login -->
            <div class="row">
              <div class="col">
                <center>
                  <img src="imgs\books.png" width="150px" height="150px" />
                  <br />
                  <h2>Book Issuing</h2>
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
                <label>Member Id</label>
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox1"
                    class="form-control"
                    runat="server"
                  ></asp:TextBox>
                </div>
              </div>
              <!-- ******************************************************* -->
              <div class="col-md-6">
                <label>Book Id</label>
                <div class="form-group">
                  <div class="input-group">
                    <asp:TextBox
                      ID="TextBox2"
                      class="form-control"
                      runat="server"
                      placeholder="Auther Name"
                    ></asp:TextBox>
                    <asp:Button
                      ID="Button1"
                      runat="server"
                      class="btn btn-dark"
                      Text="Fetch"
                    />
                  </div>
                </div>
              </div>
            </div>
            <br />
            <!-- new row -->
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Member Number</label>
                  <div class="input-group">
                    <asp:TextBox
                      ID="TextBox3"
                      class="form-control"
                      runat="server"
                      ReadOnly="True"
                    ></asp:TextBox>
                  </div>
                </div>
              </div>
              <!-- ******************************************************* -->
              <div class="col-md-6">
                <label>Book Name</label>
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox4"
                    class="form-control"
                    runat="server"
                    ReadOnly="True"
                  ></asp:TextBox>
                </div>
              </div>
            </div>
            <br />
            <!-- new row -->
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Start Date</label>
                  <div class="input-group">
                    <asp:TextBox
                      ID="TextBox5"
                      class="form-control"
                      runat="server"
                      type="date"
                    ></asp:TextBox>
                  </div>
                </div>
              </div>
              <!-- ******************************************************* -->
              <div class="col-md-6">
                <label>End Date</label>
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox6"
                    class="form-control"
                    runat="server"
                    type="date"
                  ></asp:TextBox>
                </div>
              </div>
            </div>
            <br />
            <!-- inputs -->
            <div class="row">
              <!-- ******************************************************* -->
              <div class="col-6">
                <div class="form-group">
                  <asp:Button
                    ID="Button2"
                    runat="server"
                    class="btn btn-dark w-100"
                    Text="Issue"
                  />
                </div>
                <br />
              </div>
              <!-- ******************************************************* -->
              <div class="col-6">
                <div class="form-group">
                  <asp:Button
                    ID="Button3"
                    runat="server"
                    class="btn btn-dark w-100"
                    Text="Return"
                  />
                </div>
                <br />
              </div>
              <!-- ******************************************************* -->
            </div>
          </div>
        </div>
      </div>

      <!-- Right -->
      <!-- ******************************************************* -->
      <div class="col-md-7">
        <div class="card">
          <div class="card-body">
            <!-- Login -->
            <div class="row">
              <div class="col">
                <center>
                  <h2>Issued Books List</h2>
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
              <div class="col">
                <asp:GridView
                  ID="GridView1"
                  class="table"
                  runat="server"
                ></asp:GridView>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
