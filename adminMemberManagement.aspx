<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
AutoEventWireup="true" CodeBehind="adminMemberManagement.aspx.cs"
Inherits="ElibraryManagementSystem.adminMemberManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="server"
>
  <div class="container-fluid" style="margin-top: 50px; margin-bottom: 50px">
    <div class="row">
      <!-- Left Column -->
      <div class="col-md-5">
        <div class="card">
          <div class="card-body">
            <div class="row">
              <div class="col text-center">
                <img src="imgs/books.png" width="150px" height="150px" />
                <br />
                <h2>Member Details</h2>
              </div>
            </div>
            <hr />

            <div class="row">
              <div class="col-md-4">
                <label>Member ID</label>
                <div class="input-group">
                  <asp:TextBox
                    ID="TextBox1"
                    CssClass="form-control"
                    runat="server"
                  ></asp:TextBox>
                  <asp:Button
                    ID="Button1"
                    runat="server"
                    CssClass="btn btn-dark"
                    Text="Fetch"
                  />
                </div>
              </div>
              <div class="col-md-4">
                <label>Full Name</label>
                <asp:TextBox
                  ID="TextBox2"
                  CssClass="form-control"
                  runat="server"
                  ReadOnly="True"
                ></asp:TextBox>
              </div>
              <div class="col-md-4">
                <label>Account Status</label>
                <div class="input-group">
                  <asp:TextBox
                    ID="TextBox3"
                    CssClass="form-control"
                    runat="server"
                    ReadOnly="True"
                  ></asp:TextBox>
                  <asp:LinkButton
                    ID="LinkButton1"
                    CssClass="btn btn-success btn-sm"
                    runat="server"
                    >A</asp:LinkButton
                  >
                  <asp:LinkButton
                    ID="LinkButton2"
                    CssClass="btn btn-warning btn-sm"
                    runat="server"
                    >B</asp:LinkButton
                  >
                  <asp:LinkButton
                    ID="LinkButton3"
                    CssClass="btn btn-danger btn-sm"
                    runat="server"
                    >R</asp:LinkButton
                  >
                </div>
              </div>
            </div>

            <br />

            <div class="row">
              <div class="col-md-4">
                <label>Date of Birth</label>
                <asp:TextBox
                  ID="TextBox7"
                  CssClass="form-control"
                  runat="server"
                  TextMode="Date"
                  ReadOnly="True"
                ></asp:TextBox>
              </div>
              <div class="col-md-4">
                <label>Contact Number</label>
                <asp:TextBox
                  ID="TextBox8"
                  CssClass="form-control"
                  runat="server"
                  TextMode="Number"
                  ReadOnly="True"
                ></asp:TextBox>
              </div>
              <div class="col-md-4">
                <label>Email</label>
                <asp:TextBox
                  ID="TextBox9"
                  CssClass="form-control"
                  runat="server"
                  TextMode="Email"
                  ReadOnly="True"
                ></asp:TextBox>
              </div>
            </div>

            <br />

            <div class="row">
              <div class="col-md-4">
                <label>State</label>
                <asp:TextBox
                  ID="TextBox4"
                  CssClass="form-control"
                  runat="server"
                  ReadOnly="True"
                ></asp:TextBox>
              </div>
              <div class="col-md-4">
                <label>City</label>
                <asp:TextBox
                  ID="TextBox5"
                  CssClass="form-control"
                  runat="server"
                  ReadOnly="True"
                ></asp:TextBox>
              </div>
              <div class="col-md-4">
                <label>PIN Code</label>
                <asp:TextBox
                  ID="TextBox6"
                  CssClass="form-control"
                  runat="server"
                  TextMode="Number"
                  ReadOnly="True"
                ></asp:TextBox>
              </div>
            </div>

            <br />

            <div class="row">
              <div class="col-md-12">
                <label>Full Address</label>
                <asp:TextBox
                  ID="TextBox10"
                  CssClass="form-control"
                  runat="server"
                  TextMode="MultiLine"
                  ReadOnly="True"
                  Rows="3"
                ></asp:TextBox>
              </div>
            </div>

            <br />

            <div class="row">
              <div class="col-12 text-center">
                <asp:Button
                  ID="Button6"
                  runat="server"
                  CssClass="btn btn-dark w-50"
                  Text="Delete User Permanently"
                />
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Right Column -->
      <div class="col-md-7">
        <div class="card">
          <div class="card-body">
            <div class="row">
              <div class="col text-center">
                <h2>Members List</h2>
              </div>
            </div>
            <hr />
            <div class="row">
              <div class="col">
                <asp:GridView
                  ID="GridView1"
                  CssClass="table table-striped"
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
