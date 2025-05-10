<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
AutoEventWireup="true" CodeBehind="adminAutherManagement.aspx.cs"
Inherits="ElibraryManagementSystem.adminAutherManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="server"
>
  <div class="container" style="margin-top: 50px; margin-bottom: 50px">
    <div class="row">
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <!-- Login -->
            <div class="row">
              <div class="col">
                <center>
                  <img src="imgs\books.png" width="150px" height="150px" />
                  <br />
                  <h2>Auter details</h2>
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
              <div class="col-md-4">
                <div class="form-group">
                  <div class="input-group">
                    <asp:TextBox
                      ID="TextBox1"
                      class="form-control"
                      runat="server"
                      placeholder="Auther Id"
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
              <!-- ******************************************************* -->
              <div class="col-md-8">
                <div class="form-group">
                  <asp:TextBox
                    ID="TextBox2"
                    class="form-control"
                    runat="server"
                    placeholder="Auther Name"
                  ></asp:TextBox>
                </div>
              </div>
            </div>
            <br />
            <br />
            <!-- inputs -->
            <div class="row">
              <!-- ******************************************************* -->
              <div class="col-4">
                <div class="form-group">
                  <asp:Button
                    ID="Button2"
                    runat="server"
                    class="btn btn-dark w-100"
                    Text="Add"
                  />
                </div>
                <br />
              </div>
              <!-- ******************************************************* -->
              <div class="col-4">
                <div class="form-group">
                  <asp:Button
                    ID="Button3"
                    runat="server"
                    class="btn btn-dark w-100"
                    Text="Update"
                  />
                </div>
                <br />
              </div>
              <!-- ******************************************************* -->
              <div class="col-4">
                <div class="form-group">
                  <asp:Button
                    ID="Button4"
                    runat="server"
                    class="btn btn-dark w-100"
                    Text="Delete"
                  />
                </div>
                <br />
              </div>
              <!-- ******************************************************* -->
            </div>
          </div>
        </div>
      </div>
      <!-- ******************************************************* -->
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <!-- Login -->
            <div class="row">
              <div class="col">
                <center>
                  <h2>Auter List</h2>
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
