<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="SearchEmployees.SearchPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" 
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>
    <div class="col-xs-8" col-xs-offset-2">
        <form id="form1" runat="server" class="form-horizontal">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3>My Search Form</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label for="inputFirstName" class="control-label col-xs-2">
                            Firstname
                        </label>
                        <div class="col-xs-10">
                            <input type="text" runat="server" class="form-control" 
                                id="inputFirstName" placeholder="Firstname" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputLastName" class="control-label col-xs-2">
                            Lastname
                        </label>
                        <div class="col-xs-10">
                            <input type="text" runat="server" class="form-control" 
                                id="inputLastName" placeholder="Lastname" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputGender" class="control-label col-xs-2">
                            Gender
                        </label>
                        <div class="col-xs-10">
                            <input type="text" runat="server" class="form-control" 
                                id="inputGender" placeholder="Gender" />
                        </div>
                    </div>
                
                    <div class="form-group">
                        <div class="col-xs-10 col-xs-offset-2">
                            <asp:Button ID="btnSearch" runat="server" Text="Search"
                                CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                    </div>
                </div>
            </div>
        </div>

        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3>Search Result</h3>
            </div>
            <div class="panel-body">
                <div class="col-xs-10">
                    <asp:GridView CssClass="table table-bordered"
                        ID="gvSearchResult" runat="server">
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
