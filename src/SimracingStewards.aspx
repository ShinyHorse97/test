<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SimracingStewards.aspx.cs" Inherits="JonatanShlain_Final.Proj.SimracingStewards" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Simracing Stewards - simracing incident quiz
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" text-center mt-0">
        <%=msg %>
        <div>score : <%=score %></div>
        <h1>Incident number : <%=questionNumber+1 %></h1>
        <br />
        <hr />
        <div>
            <iframe width="800" height="400" src="<%=currentQuestion.theQuestion%>"
                title="Incident video player" frameborder="0"
                volume="50" class="embed-responsive-item"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </div>
        <div class="mt-0 mb-5">
            <div>
                <input type="radio" value="0" name="userResult" /><%=currentQuestion.answer[0] %>
            </div>
            <div>
                <input type="radio" value="1" name="userResult" /><%=currentQuestion.answer[1] %>
            </div>
            <div>
                <input type="radio" value="2" name="userResult" /><%=currentQuestion.answer[2] %>
            </div>
            <button class="btn-outline-primary mt-5" type="submit">Guess</button>
        </div>
    </div>

</asp:Content>
