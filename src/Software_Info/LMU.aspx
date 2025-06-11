<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LMU.aspx.cs" Inherits="JonatanShlain_Final.Proj.Software_Info.LMU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Le Mans Ultimate - SimSpeed
</asp:Content>
<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center" style="background-image: url('https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/2399420/ss_03e04dd62003a4ae5cec49ecf9e45875370e7be3.1920x1080.jpg?t=1749552077'); background-size: cover; background-repeat: no-repeat; background-position: center;">
        <h1 class="pt-5">Le Mans Ultimate</h1>
        <p class="pb-4">Developed by Studio 397 and published by Motorsport Games, Le Mans Ultimate is the official racing simulator of the FIA World Endurance Championship, offering an immersive experience of endurance racing and the 24 Hours of Le Mans.</p>
    </div>

    <div class="px-4 py-2">

        <h2 class="pt-4">About the Game</h2>
        <br />
        <ul>
            <li><strong>Developer:</strong> Studio 397 – creators of rFactor 2, known for advanced physics and simulation tech.</li>
            <li><strong>Release Year:</strong> 2024 (Early Access phase).</li>
            <li><strong>Official License:</strong> Features all official teams, cars, and circuits from the 2023 FIA WEC season, including the iconic 24 Hours of Le Mans.</li>
        </ul>

        <hr class="my-4" />

        <h2 class="pt-4">Key Features</h2>
        <br />
        <ul>
            <li><strong>Dynamic Weather and Day/Night Cycle:</strong> Real-time transitions bring Le Mans to life over full 24-hour races.</li>
            <li><strong>Multiclass Racing:</strong> Race across Hypercar, LMP2, and GTE categories simultaneously.</li>
            <li><strong>Realistic Physics:</strong> Powered by rFactor 2’s engine with tire model updates and advanced vehicle dynamics.</li>
            <li><strong>Driver Swaps:</strong> Planned for multiplayer endurance events, emulating real team racing.</li>
        </ul>

        <hr class="my-4" />

        <h2 class="pt-4">Target Audience</h2>
        <br />
        <div class="p-3" style="background-image: url('https://i0.wp.com/boxthislap.org/app/uploads/2023/11/le-mans-ultimate-oreca.webp?fit=1280%2C720&ssl=1'); background-size: cover,50%; background-position: center; background-repeat: no-repeat;">
            <p>
                Le Mans Ultimate is built for sim racers who value endurance racing, technical driving, and realism. It targets those passionate about the World Endurance Championship and long-format races with strategic depth.
            </p>
        </div>

        <hr class="my-4" />

        <h2 class="pt-4">Community and Future</h2>
        <br />
        <p>
            With Early Access actively evolving, the developers are incorporating community feedback and expanding the feature set. Le Mans Ultimate is also shaping up to support competitive leagues and endurance eSports formats.
        </p>
        <p>
            As the official WEC sim, it fills a unique niche for fans of long-distance racing, and it’s expected to grow alongside real-world series developments.
        </p>
        <br />
    </div>
</asp:Content>

