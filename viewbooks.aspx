<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs"
Inherits="ElibraryManagementSystem.viewbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="server"
>
  <div class="col-sm-12">
    <center>
      <h2>Books Inventory List</h2>
    </center>
    <div class="row">
      <div class="col-sm-12 col-md-12">
        <asp:panel
          ID="Panel1"
          runat="server"
          class="alert alert-success"
          role="alert"
          Visible="False"
        >
          <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
        </asp:panel>
      </div>
    </div>
    <br />
    <div class="row">
      <div class="card">
        <div class="card-body">
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
</asp:Content>
