﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function check(obj)
        {
            if (obj.value.trim() != "") {
                document.getElementById("btnSendTweet").disabled = false;
            }
            else {
                document.getElementById("btnSendTweet").disabled = true;
            }
        }
    </script>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="height:500px;background-color:aqua;width:1200px;">
            <!-- Profile container -->
            <div style="background-color:red;height:500px;width:25%;float:left;margin-right:4px;">
                <!-- New tweet container -->
                <div style="height:250px;">
                    <asp:TextBox ID="txtTweet" runat="server" TextMode="MultiLine" Placeholder="New tweet" Rows="10" Columns="36" style="margin:10px 10px 5px 12px;resize:none;"
                        oninput="return check(this);"/>
                    <asp:Button ID="btnSendTweet" runat="server" Text="Send tweet" Enabled="False" OnClick="btnSendTweet_Click" style="float:right;margin-right:13px;"/>
                </div>
                <!-- Profile container -->
                <div>
                    <!-- Profile image -->
                    <div style="display:inline-block;margin-left:12px;">
                        <asp:Image ID="imgProfilePicture" runat="server" src="" />
                    </div>
                    <!-- Name -->
                    <div style="display:inline-block;position:relative;bottom:20px;left:10px;height:70px;">
                        <asp:Label ID="lblUserName" runat="server" Font-Bold="true" Font-Size="Larger" style="color:white;"/>
                        <br />
                        <asp:Label ID="lblScreenName" runat="server" style="color:white;" />
                    </div>
                    <!-- Tweets, followers, following -->
                    <div style="margin-left:12px;">
                        <asp:Label ID="lblTweets" runat="server" style="color:white;" />
                        <br />
                        <asp:Label ID="lblFollowing" runat="server" style="color:white;" />
                        <br />
                        <asp:Label ID="lblFollowers" runat="server" style="color:white;" />
                    </div>
                </div>
            </div>
            <!-- Timeline container -->
            <div id="divTimeline" runat="server" style="background-color:green;height:500px;width:37%;float:left;">
                
            </div>
            <!-- Notifications container -->
            <div style="background-color:blue;height:500px;width:37%;display:inline-block;">

            </div>
        </div>
    </form>
</body>
</html>