<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Iracing.aspx.cs" Inherits="JonatanShlain_Final.Proj.Software_Info.Iracing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    iRacing - SimSpeed
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-5">
        <div class="p-5" style="background-image: url('https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/266410/capsule_616x353.jpg?t=1745351096'); background-size: cover; background-repeat: no-repeat; background-position: center;">
            <h1 class="fw-bold">iRacing: The Gold Standard in Online Sim Racing</h1>
            <p style="color:darkgray">
                iRacing delivers ultra-realistic racing simulations used by professionals and hobbyists alike. With highly detailed tracks, structured multiplayer, and real-world physics, iRacing is a favorite among competitive sim racers.
            </p>
        </div>
        <br />
        <hr />

        <h2 class="text-decoration-underline">Core Features</h2>
        <ul>
            <li>Laser-scanned tracks and officially licensed cars from NASCAR, IMSA, and more.</li>
            <li>Structured online competition with a safety and skill rating system.</li>
            <li>Weekly ranked races, time trials, and endurance series.</li>
        </ul>
        <br />
        <hr />

        <div class="p-5" style="background-image: url('https://s100.iracing.com/wp-content/uploads/2023/09/build-page-23s4-features-ai.jpg'); background-size: cover; background-repeat: no-repeat; background-position: center;">
            <h2 class="text-decoration-underline text-white">Pro-Level Esports Integration</h2>
            <p style="color:mediumpurple">
                iRacing is home to global esports events like the eNASCAR Coca-Cola Series and the 24 Hours of Le Mans Virtual. Many real-world racers train and compete on iRacing during off-seasons or as part of their professional development.
            </p>
        </div>
        <br />
        <hr />

        <h2 class="text-decoration-underline">Subscription Model</h2>
        <p>
            iRacing operates on a monthly/annual subscription model. Content like additional cars and tracks is purchased separately, offering users flexibility to tailor their experience.
        </p>
        <ul>
            <li>Basic plan includes starter cars and tracks.</li>
            <li>Bulk content discounts and frequent seasonal promotions.</li>
            <li><a href="https://www.iracing.com/membership/" target="_blank">Learn more here</a>.</li>
        </ul>
        <br />
        <hr />

            <h2 class="text-decoration-underline text-white">Compatible Hardware</h2>
            <ul class="text-white">
                <li>Compatible with Logitech, Fanatec, Simucube, Simagic, and MOZA gear.</li>
                <li>Supports VR, triple monitors, and motion rigs.</li>
                <li>Optimized for Windows PCs.</li>
            </ul>
        <br />
        <hr />

        <h2 class="text-decoration-underline">Why Choose iRacing?</h2>
        <p>
            iRacing combines realism, competition, and an active global community. Whether you're a hobbyist or aspiring professional, it offers the most complete and structured sim racing platform today.
        </p>

    </div>
</asp:Content>
