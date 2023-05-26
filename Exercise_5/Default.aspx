<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Exercise_5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Users data</title>
</head>
<body>
    <h1>Users</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Xml runat="server" DocumentSource="~/XMLFile1.xml"
                TransformSource="~/Users.xslt" />
        </div>
    </form>
</body>
</html>
