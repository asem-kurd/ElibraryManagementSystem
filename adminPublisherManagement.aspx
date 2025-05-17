<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
AutoEventWireup="true" CodeBehind="adminPublisherManagement.aspx.cs"
Inherits="ElibraryManagementSystem.adminPublisherManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    $(document).ready(function () {
      $(".table")
        .prepend($("<thead></thead>").append($(this).find("tr:first")))
        .dataTable();
    });
  </script>
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
                  <h2>PuPublisher details</h2>
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
                      placeholder="Publiser Id"
                    ></asp:TextBox>
                    <asp:Button
                      ID="Button1"
                      runat="server"
                      class="btn btn-dark"
                      Text="Fetch"
                      OnClick="Button1_Click"
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
                    placeholder="Publiser Name"
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
                    OnClick="Button2_Click"
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
                    OnClick="Button3_Click"
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
                    OnClick="Button4_Click"
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
                  <h2>Publisher Listh</h2>
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
              <asp:SqlDataSource
                ID="SqlDataSource1"
                runat="server"
                ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>"
                SelectCommand="SELECT * FROM [publisher_master_tbl]"
              ></asp:SqlDataSource>
              <div class="col">
                <asp:GridView
                  ID="GridView1"
                  class="table"
                  runat="server"
                  AutoGenerateColumns="False"
                  DataKeyNames="publisher_id"
                  DataSourceID="SqlDataSource1"
                >
                  <Columns>
                    <asp:BoundField
                      DataField="publisher_id"
                      HeaderText="publisher_id"
                      ReadOnly="True"
                      SortExpression="publisher_id"
                    />
                    <asp:BoundField
                      DataField="publisher_name"
                      HeaderText="publisher_name"
                      SortExpression="publisher_name"
                    />
                  </Columns>
                </asp:GridView>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
