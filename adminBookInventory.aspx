<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
AutoEventWireup="true" CodeBehind="adminBookInventory.aspx.cs"
Inherits="ElibraryManagementSystem.adminBookInventory" %>
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
                <h2>Book Details</h2>
              </div>
            </div>
            <hr />
            <div class="row">
              <div class="col-md-12">
                <asp:FileUpload
                  ID="FileUpload1"
                  class="form-control"
                  runat="server"
                />
              </div>
            </div>
            <br />
            <div class="row">
              <div class="col-md-3">
                <label>Book ID</label>
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
              <div class="col-md-9">
                <label>Book Name</label>
                <asp:TextBox
                  ID="TextBox2"
                  CssClass="form-control"
                  runat="server"
                ></asp:TextBox>
              </div>
            </div>

            <br />

            <div class="row">
              <div class="col-md-4">
                <label>Language</label>
                <asp:DropDownList
                  ID="DropDownList1"
                  class="form-control"
                  runat="server"
                >
                  <asp:ListItem Text="English" Value="English" />
                  <asp:ListItem Text="Arabic" Value="Arabic" />
                  <asp:ListItem Text="French" Value="French" />
                  <asp:ListItem Text="Spanish" Value="Spanish" />
                </asp:DropDownList>
                <br />
                <label>Publisher Name</label>
                <asp:DropDownList
                  ID="DropDownList2"
                  class="form-control"
                  runat="server"
                >
                  <asp:ListItem Text="English" Value="English" />
                  <asp:ListItem Text="Arabic" Value="Arabic" />
                  <asp:ListItem Text="French" Value="French" />
                  <asp:ListItem Text="Spanish" Value="Spanish" />
                </asp:DropDownList>
              </div>
              <div class="col-md-4">
                <label>Auther Name</label>
                <asp:DropDownList
                  ID="DropDownList3"
                  class="form-control"
                  runat="server"
                >
                  <asp:ListItem Text="English" Value="English" />
                  <asp:ListItem Text="Arabic" Value="Arabic" />
                  <asp:ListItem Text="French" Value="French" />
                  <asp:ListItem Text="Spanish" Value="Spanish" />
                </asp:DropDownList>
                <br />
                <label>Publish Date</label>
                <asp:TextBox
                  ID="TextBox3"
                  class="form-control"
                  runat="server"
                  TextMode="Date"
                ></asp:TextBox>
              </div>
              <div class="col-md-4">
                <label>Genre</label>
                <asp:ListBox
                  ID="ListBox1"
                  class="form-control"
                  runat="server"
                  SelectionMode="Multiple"
                  Rows="5"
                >
                  <asp:ListItem Text="English" Value="English" />
                  <asp:ListItem Text="Arabic" Value="Arabic" />
                  <asp:ListItem Text="French" Value="French" />
                  <asp:ListItem Text="Spanish" Value="Spanish" />
                </asp:ListBox>
              </div>
            </div>

            <br />

            <div class="row">
              <div class="col-md-4">
                <label>Edition</label>
                <asp:TextBox
                  ID="TextBox4"
                  CssClass="form-control"
                  runat="server"
                ></asp:TextBox>
              </div>
              <div class="col-md-4">
                <label>Book Cost</label>
                <asp:TextBox
                  ID="TextBox5"
                  CssClass="form-control"
                  runat="server"
                  TextMode="Number"
                ></asp:TextBox>
              </div>
              <div class="col-md-4">
                <label>Pages</label>
                <asp:TextBox
                  ID="TextBox6"
                  CssClass="form-control"
                  runat="server"
                  TextMode="Number"
                ></asp:TextBox>
              </div>
            </div>

            <br />

            <div class="row">
              <div class="col-md-4">
                <label>Actual stock</label>
                <asp:TextBox
                  ID="TextBox7"
                  CssClass="form-control"
                  runat="server"
                  TextMode="Number"
                ></asp:TextBox>
              </div>
              <div class="col-md-4">
                <label>Current stock</label>
                <asp:TextBox
                  ID="TextBox8"
                  CssClass="form-control"
                  runat="server"
                  TextMode="Number"
                  ReadOnly="True"
                ></asp:TextBox>
              </div>
              <div class="col-md-4">
                <label>Issued Books</label>
                <asp:TextBox
                  ID="TextBox9"
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
                <label>Book Description</label>
                <asp:TextBox
                  ID="TextBox10"
                  CssClass="form-control"
                  runat="server"
                  TextMode="MultiLine"
                  Rows="3"
                ></asp:TextBox>
              </div>
            </div>

            <br />
            <!-- sdadas  -->
            <div class="row">
              <div class="col-4">
                <asp:Button
                  ID="Button6"
                  runat="server"
                  CssClass="btn btn-dark w-100"
                  Text="Add"
                />
              </div>
              <div class="col-4">
                <asp:Button
                  ID="Button2"
                  runat="server"
                  CssClass="btn btn-dark w-100"
                  Text="Update"
                />
              </div>
              <div class="col-4">
                <asp:Button
                  ID="Button3"
                  runat="server"
                  CssClass="btn btn-dark w-100"
                  Text="Delete"
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
                <h2>Book Inventory List</h2>
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
