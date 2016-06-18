<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgProduct.aspx.cs" Inherits="pgProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  
            <h1>Trophies, Tee-shirts, and Plaques</h1>
    
    <div class="trophy" style="height:620px; width:1200px; float:left; padding:25px; border:solid">
        <h2>Trophies</h2>
        <div class="trophy1" style="float:left; padding:20px">
        <%--Image and description for first trophy --%>
            <center><h3>Academic Trophy</h3>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Product Images/academic trophy.jpg" Height="166px" Width="144px" /><br />
                Perfect trophy for that academic <br />
                achiever. Available in Small, <br />
                Medium and Large sizes. Front label <br />
                is availabel for any 3 lines fully<br />
                customizable for your needs. Includes <br />
                40 letters of free personalization <br />
                per trophy.<br />
                <asp:TextBox ID="AcamedicPersonalization" runat="server" TextMode="MultiLine" Rows="3" Columns="26" />
                <br /><br />
            <asp:DropDownList ID="academicsize" runat="server">
                <asp:ListItem Value="nullacad">Trophy Size</asp:ListItem>
                <asp:ListItem Value="1">Small - $15.00</asp:ListItem>
                <asp:ListItem Value="2">Medium - $20.00</asp:ListItem>
                <asp:ListItem Value="3">Large - $25.00</asp:ListItem>
            </asp:DropDownList>&nbsp;
                <asp:Label ID="AcademicQtyLabel" runat="server" Text="Quantity: " CssClass="quantityLabel"/>&nbsp;
                <asp:TextBox ID="AcademicQuantity" runat="server" MaxLength="3" Text="1" Width="20" /><br /><br />
                <asp:Button ID="AcademicAddButton" runat="server" Text="Add to Cart" OnClick="AcademicAddButton_Click" />
            </center><br />
        </div>
        <%--Image and description for 2nd trophy --%>
        <div class="trophy2" style="float:left; padding:20px">
            <center><h3>Baseball Trophy</h3>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Product Images/basebtrophy.jpg" Height="166px" Width="144px"/>
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Product Images/basebtrophy2.jpg" Height="166px" Width="144px"/><br />
                ~Baseball Player~ or ~Baseball Trophy~<br />
                This trophy is available in Small, <br />
                Medium, Large sizes. Small versions <br />
                are perfect for the team awars, while <br />
                the large size is perfect for personal <br />
                awards. Includes 40 letters of free <br />
                personalization per trophy.<br />
                <asp:TextBox ID="BaseballPersonalization" runat="server" TextMode="MultiLine" Rows="3" Columns="26" /><br /><br />
            <asp:DropDownList ID="baseballsize" runat="server">
                <asp:ListItem Value="nullbase">Baseball Size</asp:ListItem>
                <asp:ListItem Value="4">Small - $15.00</asp:ListItem>
                <asp:ListItem Value="5">Medium - $20.00</asp:ListItem>
                <asp:ListItem Value="6">Large - $25.00</asp:ListItem>
            </asp:DropDownList>
                &nbsp;<asp:Label ID="BaseBallQtyLabel" runat="server" Text="Quantity: " CssClass="quantityLabel" />&nbsp;
                <asp:TextBox ID="BaseballQuantity" runat="server" Text="1" Width="20" MaxLength="3" /><br /><br />
                <asp:Button ID="BaseballAddButton" runat="server" Text="Add to Cart" OnClick="BaseballAddButton_Click" />
            </center><br />
        </div>
        <%--Image and description for 3rd trophy --%>
        <div class="trophy3" style="float:left; padding:20px">
            <center><h3>Basketball Trophy</h3>
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Product Images/basketbtrophy.jpg" Height="166px" Width="144px" /><br />
                The classic participation trophy<br />
                w/a walnut top, polished gold <br />
                finish plate, & detailed basketball <br />
                on riser. Includes 40 letters of <br />
                free personalization per trophy.<br />
                <asp:TextBox ID="BasketballPersonalization" runat="server" TextMode="MultiLine" Rows="3" Columns="26" /><br /><br />
            <asp:DropDownList ID="basketballsize" runat="server">
                <asp:ListItem Value="nullbasket">Basketball Size</asp:ListItem>
                <asp:ListItem Value="10">Small - $15.00</asp:ListItem>
                <asp:ListItem Value="11">Medium - $20.00</asp:ListItem>
                <asp:ListItem Value="12">Large - $25.00</asp:ListItem>
            </asp:DropDownList>
                 &nbsp;<asp:Label ID="BasketBallQtyLabel" runat="server" Text="Quantity: " CssClass="quantityLabel" />&nbsp;
                <asp:TextBox ID="BasketballQuantity" runat="server" Text="1" Width="20" MaxLength="3" /><br /><br />
                <asp:Button ID="BasketballAddButton" runat="server" Text="Add to Cart" OnClick="BasketballAddButton_Click" />
            </center><br />
        </div>
        <%--Image and description for 4th trophy --%>
        <div class="trophy4" style="float:left; padding:20px">
            <center><h3>Golf Trophy</h3>
            <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/Product Images/golf trophy.jpg" Height="166px" Width="144px" /><br />
                Our resin golf trophy features fine <br />
                detailing normally seen in awards <br />
                costing much more! Set upon a smooth <br />
                mahogany-finish base featuring <br />
                40 letters of free personalization <br />
                <asp:TextBox ID="GolfPersonalization" runat="server" TextMode="MultiLine" Rows="3" Columns="26" /><br /><br />
            <asp:DropDownList ID="golfsize" runat="server">
                <asp:ListItem Value="nullgolf">Golf Size</asp:ListItem>
                <asp:ListItem Value="13">Small - $15.00</asp:ListItem>
                <asp:ListItem Value="14">Medium - $20.00</asp:ListItem>
                <asp:ListItem Value="15">Large - $25.00</asp:ListItem>          
            </asp:DropDownList>
                &nbsp;<asp:Label ID="GolfQtyLabel" runat="server" Text="Quantity: " CssClass="quantityLabel" />&nbsp;
                <asp:TextBox ID="GolfQuantity" runat="server" Text="1" Width="20" MaxLength="3" /><br /><br />
                <asp:Button ID="GolfAddButton" runat="server" Text="Add to Cart" OnClick="GolfAddButton_Click" />
            </center><br />
        </div>
    </div>
   <div class="Teeshirt" style="height:600px; width:1200px; float:left; padding:25px; border:solid; margin-top:5px">
       <h2>Tee shirts</h2>
       <%--Image and description for first tee shirt --%>
       <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/Product Images/gray tee.jpg" Height="166px" Width="125px" />
       <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/Product Images/blue tee.jpg" Height="166px" Width="125px" />
       <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/Product Images/white te.jpg" Height="166px" Width="125px" />
       <asp:Image ID="Image9" runat="server" ImageUrl="~/Images/Product Images/yellow tee.jpe" Height="166px" Width="125px" />
       <asp:Image ID="Image13" runat="server" ImageUrl="~/Images/Product Images/maroon tee.jpg" Height="166px" Width="125px" />
       <asp:Image ID="Image14" runat="server" ImageUrl="~/Images/Product Images/t473kellygreen.jpg" Height="166px" Width="125px" />
       <asp:Image ID="Image15" runat="server" ImageUrl="~/Images/Product Images/red-t.jpg" Height="166px" Width="125px" />
       <asp:Image ID="Image16" runat="server" ImageUrl="~/Images/Product Images/pocket tee.jpg" Height="166px" Width="125px" />
       <asp:Image ID="Image17" runat="server" ImageUrl="~/Images/Product Images/purple.jpe" Height="166px" Width="125px" /><br />
            <h3>Hardworking, comfortable and durable. A tried and true favorite!</h3>
            Soft but strong, with a roomier fit for maximum movement. This heavy-duty <br />
            t-shirt has been getting the job done for more than 35 years.<br />
            <h3>Product Overview</h3>
            <ul>
                <li>6.1 oz. 100% pre-shrunk ringspun cotton; Heather colors are poly/cotton blend</li>
                <li>Premium soft, thick ringspun cotton</li>
                <li>Double-needle stitched for durability</li>
                <li>Tagless label for comfort</li>
            </ul>
       <asp:TextBox ID="ShirtPersonalization" runat="server" TextMode="MultiLine" Rows="3" Columns="26" /><br /><br />
       <asp:DropDownList ID="teeshirtcolor" runat="server">
           <asp:ListItem Value="nullcolor">Color</asp:ListItem>
           <asp:ListItem Value="lsgrey">Long Sleeve Gray</asp:ListItem>
           <asp:ListItem Value="blue">Short Sleve Blue</asp:ListItem>
           <asp:ListItem Value="white">Short Sleve White</asp:ListItem>
           <asp:ListItem Value="yellow">Short Sleeve Yellow</asp:ListItem>
           <asp:ListItem Value="maroon">Short Sleeve Maroon</asp:ListItem>
           <asp:ListItem Value="green">Short Sleeve Green</asp:ListItem>
           <asp:ListItem Value="red">Short Sleeve Red</asp:ListItem>
           <asp:ListItem Value="huntgreen">Short Sleeve Pocket Hunter Green</asp:ListItem>
           <asp:ListItem Value="purple">Short Sleeve Purple</asp:ListItem>
       </asp:DropDownList>
       <asp:DropDownList ID="shirtsize" runat="server">
           <asp:ListItem Value="nullmens">Mens Size</asp:ListItem>
           <asp:ListItem Value="16">Mens X-Small - $25.00</asp:ListItem>
           <asp:ListItem Value="17">Small - $25.00</asp:ListItem>
           <asp:ListItem Value="18">Medium - $25.00</asp:ListItem>
           <asp:ListItem Value="19">Large - $25.00</asp:ListItem>
           <asp:ListItem Value="20">X Large - $25.00</asp:ListItem>
           <asp:ListItem Value="21">2X Large - $28.00</asp:ListItem>
           <asp:ListItem Value="22">3X Large - $28.00</asp:ListItem>
           <asp:ListItem Value="nullwomens">Womens Size</asp:ListItem>
           <asp:ListItem Value="23">Womens X-Small - $25.00</asp:ListItem>
           <asp:ListItem Value="24">Small - $25.00</asp:ListItem>
           <asp:ListItem Value="25">Medium - $25.00</asp:ListItem>
           <asp:ListItem Value="26">Large - $25.00</asp:ListItem>
           <asp:ListItem Value="27">X Large - $25.00</asp:ListItem>
           <asp:ListItem Value="28">2X Large - $28.00</asp:ListItem>
           <asp:ListItem Value="29">3X Large - $28.00</asp:ListItem>
           <asp:ListItem Value="nullyouth">Youth Size</asp:ListItem>
           <asp:ListItem Value="30">Youth X-Small - $20.00</asp:ListItem>
           <asp:ListItem Value="31">Small - $20.00</asp:ListItem>
           <asp:ListItem Value="32">Medium - $20.00</asp:ListItem>
           <asp:ListItem Value="33">Large - $20.00</asp:ListItem>
           <asp:ListItem Value="34">X Large - $20.00</asp:ListItem>
       </asp:DropDownList>
       &nbsp;<asp:Label ID="ShirtQtyLabel" runat="server" Text="Quantity: " CssClass="quantityLabel" />&nbsp;
       <asp:TextBox ID="ShirtQuantity" runat="server" Text="1" Width="20" MaxLength="3" /><br /><br />
       <asp:Button ID="ShirtAddButton" runat="server" Text="Add to Cart" OnClick="ShirtAddButton_Click" />
    </div>
    <div class="plaques" style="height:580px; width:1200px; float:left; padding:25px; border:solid; margin-top:5px">
        <%-- Image and descriptions for first plaque --%>
        <h2>Plaques</h2>
        <div class="plaque1" style="float:left; padding:20px">
            <center><h3>Classic Plaque</h3>
            <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/Product Images/blank plaque.jpg" Height="166px" Width="144px" /><br />
                This classic plaque features a stunning <br />
                gold brass plate with a gold frame on a <br />
                walnut-tone board. 50 letters of free <br />
                personalization, additional letters are <br />
                just $0.25 ach.<br /> 
                <asp:TextBox ID="PlaquePersonalization" runat="server" TextMode="MultiLine" Rows="3" Columns="26" /><br /><br />
            <asp:DropDownList ID="plaquesize" runat="server">
                <asp:ListItem Value="nullplaque">Plaque Size</asp:ListItem>
                <asp:ListItem Value="35">7x9" Plaque - $15.00</asp:ListItem>
                <asp:ListItem Value="36">8x10" Plaque - $20.00</asp:ListItem>
                <asp:ListItem Value="37">9x12" Plaque - $25.00</asp:ListItem>
            </asp:DropDownList>
                &nbsp;<asp:Label ID="PlaqueQtyLabel" runat="server" Text="Quantity: " CssClass="quantityLabel" />&nbsp;
                <asp:TextBox ID="PlaqueQuantity" runat="server" Text="1" Width="20" MaxLength="3" /><br /><br />
                <asp:Button ID="PlaqueAddButton" runat="server" Text="Add to Cart" OnClick="PlaqueAddButton_Click" />
            </center><br />
        </div>
        <%-- Image and Description for 2nd plaque --%>
        <div class="plaque2" style="float:left; padding:20px">
            <center><h3>Teachers Golden Apple Plaque</h3>
            <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/Product Images/teacher plaque.jpg" Height="166px" Width="144px" /><br />
                This teacher's GOLDEN apple plaque of triumph <br />
                features a unique holographic emblem, & 35 letters <br />
                of free personalization ($0.10 per additional character) <br />
                to let your special message show through! Your choice of <br />
                gold, silver, or bronze. <br />
                <asp:TextBox ID="TeacherPersonalization" runat="server" TextMode="MultiLine" Rows="3" Columns="26" /><br /><br />
            <asp:DropDownList ID="teachersize" runat="server">
                <asp:ListItem Value="nullteachersize">Teacher Size</asp:ListItem>
                <asp:ListItem Value="38">Small - $15.00</asp:ListItem>
                <asp:ListItem Value="39">Medium - $20.00</asp:ListItem>
                <asp:ListItem Value="40">Large - $25.00</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:DropDownList ID="teachercolor" runat="server">
                <asp:ListItem Value="nullteachercolor">Color</asp:ListItem>
                <asp:ListItem Value="teachergold">Gold</asp:ListItem>
                <asp:ListItem Value="teachersilver">Silver</asp:ListItem>
                <asp:ListItem Value="teacherbronze">Bronze</asp:ListItem>
            </asp:DropDownList>
                &nbsp;<asp:Label ID="TeacherQtyLabel" runat="server" Text="Quantity: " CssClass="quantityLabel" />&nbsp;
                <asp:TextBox ID="TeacherQauntity" runat="server" Text="1" Width="20" MaxLength="3" /><br /><br />
                <asp:Button ID="TeacherAddButton" runat="server" Text="Add to Cart" OnClick="TeacherAddButton_Click" />
            </center><br />
        </div>
        <%-- Image and Description of 3rd Plaque --%>
        <div class="plaque3" style="float:left; padding:20px">
            <center><h3>Honoree of the Month Plaque</h3>
            <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/Product Images/of the month plaque.jpg" Height="166px" Width="144px" /><br />
                This classic "Honoree of the Month" plaque features <br />
                a walnut-tone plaque board with polished black brass plates, <br />
                or silver plates.  50 letters of free personalization on the <br />
                title plate, additional letters are just $0.25 each. <br />
                Individual plate personalization is $4.00 per plate.<br />
                <asp:TextBox ID="PlatePersonalization" runat="server" TextMode="MultiLine" Rows="3" Columns="26" /><br /><br />
            <asp:DropDownList ID="perpetualplaque" runat="server">
                <asp:ListItem Value="nullcolor">Plate Color</asp:ListItem>
                <asp:ListItem Value="41">Bronze Plate - $25.00</asp:ListItem>
                <asp:ListItem Value="42">Silver Plate - $25.00</asp:ListItem>
            </asp:DropDownList>
                &nbsp;<asp:label ID="PerpetualQtyLabel" runat="server" Text="Quantity: " CssClass="quantityLabel" />&nbsp;
                <asp:TextBox ID="PerpetualQuantity" runat="server" Text="1" Width="20" MaxLength="3" /><br /><br />
                <asp:Button ID="PerpetualAddButton" runat="server" Text="Add to Cart" OnClick="PerpetualAddButton_Click" />
            </center>
        </div>
    </div>
</asp:Content>

