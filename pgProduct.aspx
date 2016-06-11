<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgProduct.aspx.cs" Inherits="pgProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  
            <h1>Trophies, Tee-shirts, and Plaques</h1>
    
    <div class="trophy">
        <h2>Trophies</h2>
        <%--Image and description for first trophy --%>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Product Images/academic trophy.jpg" Height="166px" Width="144px" /><br />
                Perfect trophy for that academic achiever. <br />
                Available in Small, Medium and Large sizes.<br />
                Front lable is availabel for any 3 lines fully<br />
                customizable for your needs. Includes 40 letters <br />
                of free personalization per trophy.<br />
        <asp:DropDownList ID="academicsize" runat="server">
            <asp:ListItem Value="nullacad">Trophy Size</asp:ListItem>
            <asp:ListItem Value="smacad">Small - $</asp:ListItem>
            <asp:ListItem Value="medadad">Medium - $</asp:ListItem>
            <asp:ListItem Value="lgacad">Large - $</asp:ListItem>
        </asp:DropDownList><br />
        <%--Image and description for 2nd trophy --%>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Product Images/basebtrophy.jpg" Height="166px" Width="144px"/>
        <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Product Images/basebtrophy2.jpg" Height="166px" Width="144px"/><br />
                This trophy is available in Small, Medium,<br />
                Large sizes. Small versions are perfect<br />
                for the team awars, while the large size<br />
                is perfect for personal awards. Includes <br />
                40 letters of free personalization per trophy.<br />
        <asp:DropDownList ID="baseballsize" runat="server">
            <asp:ListItem Value="nullbase">Baseball Size</asp:ListItem>
            <asp:ListItem Value="smbase">Small - $</asp:ListItem>
            <asp:ListItem Value="medbase">Medium - $</asp:ListItem>
            <asp:ListItem Value="lgbase">Large - $</asp:ListItem>
        </asp:DropDownList><br />
        <%--Image and description for 3rd trophy --%>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Product Images/basketbtrophy.jpg" Height="166px" Width="144px" /><br />
                The classic participation trophy<br />
                w/a walnut top, polished gold <br />
                finish plate, & detailed basketball <br />
                on riser. Includes 40 letters of <br />
                free personalization per trophy.<br />
        <asp:DropDownList ID="basketballsize" runat="server">
            <asp:ListItem Value="nullbasket">Basketball Size</asp:ListItem>
            <asp:ListItem Value="smbasket">Small - $</asp:ListItem>
            <asp:ListItem Value="medbasket">Medium - $</asp:ListItem>
            <asp:ListItem Value="lgbasket">Large - $</asp:ListItem>
        </asp:DropDownList><br />
        <%--Image and description for 4th trophy --%>
        <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/Product Images/golf trophy.jpg" Height="166px" Width="144px" /><br />
                Our resin golf trophy features fine detailing <br />
                normally seen in awards costing much more!<br />
                Set upon a smooth mahogany-finish base featuring <br />
                40 letters of free personalization <br />
        <asp:DropDownList ID="golfsize" runat="server">
            <asp:ListItem Value="nullgolf">Golf Size</asp:ListItem>
            <asp:ListItem Value="smgolf">Small - $</asp:ListItem>
            <asp:ListItem Value="medgolf">Medium - $</asp:ListItem>
            <asp:ListItem Value="lggolf">Large - $</asp:ListItem>
        </asp:DropDownList><br />
    </div>
   <div class="Teeshirt">
       <h2>Tee shirts</h2>
       <%--Image and description for first tee shirt --%>
       <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/Product Images/gray tee.jpg" Height="166px" Width="144px" />
       <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/Product Images/blue tee.jpg" Height="166px" Width="144px" />
       <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/Product Images/white te.jpg" Height="166px" Width="144px" />
       <asp:Image ID="Image9" runat="server" ImageUrl="~/Images/Product Images/yellow tee.jpe" Height="166px" Width="144px" /><br />
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
       <asp:DropDownList ID="teeshirtcolor" runat="server">
           <asp:ListItem Value="nullcolor">Color</asp:ListItem>
           <asp:ListItem Value="grey">Gray</asp:ListItem>
           <asp:ListItem Value="white">White</asp:ListItem>
           <asp:ListItem Value="blue">Blue</asp:ListItem>
           <asp:ListItem Value="red">Red</asp:ListItem>
           <asp:ListItem Value="Yellow">Yellow</asp:ListItem>
       </asp:DropDownList>
       <asp:DropDownList ID="mensize" runat="server">
           <asp:ListItem Value="nullmens">Mens Size</asp:ListItem>
           <asp:ListItem Value="menxsmall">Mens X-Small - $</asp:ListItem>
           <asp:ListItem Value="mensm">Small - $</asp:ListItem>
           <asp:ListItem Value="menmed">Medium - $</asp:ListItem>
           <asp:ListItem Value="menlg">Large - $</asp:ListItem>
           <asp:ListItem Value="menxlg">X Large - $</asp:ListItem>
           <asp:ListItem Value="men2xlg">2X Large - $</asp:ListItem>
           <asp:ListItem Value="men3xlg">3X Large - $</asp:ListItem>
       </asp:DropDownList>
       <asp:DropDownList ID="womensize" runat="server">
           <asp:ListItem Value="nullwomens">Womens Size</asp:ListItem>
           <asp:ListItem Value="womenxsmall">Womens X-Small - $</asp:ListItem>
           <asp:ListItem Value="womensm">Small - $</asp:ListItem>
           <asp:ListItem Value="womenmed">Medium - $</asp:ListItem>
           <asp:ListItem Value="womenlg">Large - $</asp:ListItem>
           <asp:ListItem Value="womenxlg">X Large - $</asp:ListItem>
           <asp:ListItem Value="women2xlg">2X Large - $</asp:ListItem>
           <asp:ListItem Value="women3xlg">3X Large - $</asp:ListItem>
       </asp:DropDownList>
       <asp:DropDownList ID="youthsize" runat="server">
           <asp:ListItem Value="nullyouth">Youth Size</asp:ListItem>
           <asp:ListItem Value="youthxsmall">Youth X-Small - $</asp:ListItem>
           <asp:ListItem Value="youthsm">Small - $</asp:ListItem>
           <asp:ListItem Value="youthmed">Medium - $</asp:ListItem>
           <asp:ListItem Value="youthlg">Large - $</asp:ListItem>
           <asp:ListItem Value="youthxlg">X Large - $</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="plaques">
        <%-- Image and descriptions for first plaque --%>
        <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/Product Images/blank plaque.jpg" Height="166px" Width="144px" /><br />
                This classic plaque features a stunning <br />
                gold brass plate with a gold frame on a <br />
                walnut-tone board. 50 letters of free <br />
                personalization, additional letters are <br />
                just $0.25 ach.<br /> 
        <asp:DropDownList ID="plaquesize" runat="server">
            <asp:ListItem Value="nullplaque">Plaque Size</asp:ListItem>
            <asp:ListItem Value="smplaque">7x9" Plaque - $</asp:ListItem>
            <asp:ListItem Value="medplaque">8x10" Plaque - $</asp:ListItem>
            <asp:ListItem Value="lgplaque">9x12" Plaque - $</asp:ListItem>
        </asp:DropDownList><br />
        <%-- Image and Description for 2nd plaque --%>
        <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/Product Images/teacher plaque.jpg" Height="166px" Width="144px" /><br />
                This teacher's GOLDEN apple plaque of triumph <br />
                features a unique holographic emblem, & 35 letters <br />
                of free personalization ($0.10 per additional character) <br />
                to let your special message show through! Your choice of <br />
                gold, silver, or bronze. <br />
        <asp:DropDownList ID="teachersize" runat="server">
            <asp:ListItem Value="nullteachersize">Teacher Size</asp:ListItem>
            <asp:ListItem Value="teachersmall">Small - $</asp:ListItem>
            <asp:ListItem Value="teachermed">Medium - $</asp:ListItem>
            <asp:ListItem Value="teacherlarge">Large - $</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="teachercolor" runat="server">
            <asp:ListItem Value="nullteachercolor">Color</asp:ListItem>
            <asp:ListItem Value="teachergold">Gold</asp:ListItem>
            <asp:ListItem Value="teachersilver">Silver</asp:ListItem>
            <asp:ListItem Value="teacherbronze">Bronze</asp:ListItem>
        </asp:DropDownList><br />
        <%-- Image and Description of 3rd Plaque --%>
        <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/Product Images/of the month plaque.jpg" Height="166px" Width="144px" /><br />
                This classic "Honoree of the Month" plaque features <br />
                a walnut-tone plaque board with polished black brass plates, <br />
                or silver plates.  50 letters of free personalization on the <br />
                title plate, additional letters are just $0.25 each. <br />
                Individual plate personalization is $4.00 per plate.<br />
        <asp:DropDownList ID="perpetualplaque" runat="server">
            <asp:ListItem Value="nullcolor">Plate Color</asp:ListItem>
            <asp:ListItem Value="bronze">Bronze Plate - $</asp:ListItem>
            <asp:ListItem Value="silver">Silver Plate - $</asp:ListItem>
        </asp:DropDownList>
        </div>
</asp:Content>

