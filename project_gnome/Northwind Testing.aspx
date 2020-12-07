<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/project_gnome.Master" CodeBehind="Northwind Testing.aspx.vb" Inherits="project_gnome.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="float-content">
        
    <!--a. Select EmployeeID, Title, FirstName, LastName, and Region from the Employees table.-->
    <asp:GridView runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="EmployeeID">
        <Columns>
            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [EmployeeID], [Title], [FirstName], [LastName], [Region] FROM [Employees]"></asp:SqlDataSource>


    <!--b. Select RegionID and RegionDescription from the Region table.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="RegionID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="RegionID" HeaderText="RegionID" ReadOnly="True" SortExpression="RegionID" />
            <asp:BoundField DataField="RegionDescription" HeaderText="RegionDescription" SortExpression="RegionDescription" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [RegionID], [RegionDescription] FROM [Region]"></asp:SqlDataSource>

    <!--c. Select CompanyName, Fax, Phone and HomePage from the Suppliers table.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="HomePage" HeaderText="HomePage" SortExpression="HomePage" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [CompanyName], [Fax], [Phone], [HomePage] FROM [Suppliers]"></asp:SqlDataSource>

    <!--d. Select CategoryName and Description from the Categories table sorted by CategoryName.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [CategoryName], [Description] FROM [Categories] ORDER BY [CategoryName]"></asp:SqlDataSource>

    <!--e. Select ContactName, CompanyName, ContactTitle, and Phone from the Customers table sorted by Phone.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
        <Columns>
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [ContactName], [CompanyName], [ContactTitle], [Phone] FROM [Customers] ORDER BY [Phone]"></asp:SqlDataSource>

    <!--f. Select CompanyName, Fax, Phone, HomePage and Country from the Suppliers table sorted by Country in descending order and then by CompanyName in ascending order.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6">
        <Columns>
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="HomePage" HeaderText="HomePage" SortExpression="HomePage" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [CompanyName], [Fax], [Phone], [HomePage], [Country] FROM [Suppliers] ORDER BY [Country] DESC, [CompanyName]"></asp:SqlDataSource>

    <!--g. Create a list of employees showing title, first name, and last name. Sort by Title in ascending order and then by LastName in descending order.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Title], [FirstName], [LastName] FROM [Employees] ORDER BY [Title], [LastName] DESC"></asp:SqlDataSource>

    <!--h. Show all the company names and contact names of Northwind's customers in Buenos Aires.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8">
        <Columns>
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [CompanyName], [ContactName], [City] FROM [Customers] WHERE ([City] LIKE 'Buenos Aires')">
    </asp:SqlDataSource>

    <!--i. Show the product name, unit price and quantity per unit of all products that are out of stock.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource9">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit" />
            <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [ProductName], [UnitPrice], [QuantityPerUnit], [UnitsInStock] FROM [Products] WHERE ([UnitsInStock] = 0)">
    </asp:SqlDataSource>

    <!--j. Show the first name, last name, and country of all employees not in the United States.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource10">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [FirstName], [LastName], [Country] FROM [Employees] WHERE ([Country] NOT LIKE 'USA')">
    </asp:SqlDataSource>
    
    <!--k. Show the first and last names and birth date of all employees born in the 1950s.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource11">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [FirstName], [LastName], [BirthDate] FROM [Employees] WHERE BirthDate BETWEEN '1950' AND '1959'"></asp:SqlDataSource>

    <!--l. Show the company name, contact title, city and country of all customers in Mexico or in any city in Spain except Madrid.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource12">
        <Columns>
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [CompanyName], [ContactTitle], [City], [Country] FROM [Customers]  WHERE Country = 'Mexico' OR Country = 'Spain' AND City &lt;&gt;  'Madrid' "></asp:SqlDataSource>
    <br />

    <!--m. Show the first and last names and birth month (as a string) for each employee born in the current month.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource13">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="Column1" HeaderText="Column1" ReadOnly="True" SortExpression="Column1" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT FirstName, Lastname, DATENAME (month, Birthdate) FROM Employees WHERE DATENAME (month, BirthDate) = DATENAME(month, GETDATE())"></asp:SqlDataSource>

    <!--n. Show the contact name and phone numbers for all employees, customers, and suppliers.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource14">
        <Columns>
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" ReadOnly="True" SortExpression="CompanyName" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" ReadOnly="True" SortExpression="Phone" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT CompanyName, Phone FROM Customers UNION SELECT CompanyName, Phone FROM Shippers UNION SELECT FirstName, HomePhone FROM Employees"></asp:SqlDataSource>

    <!--o. Show the total quantity of products (from the Order_Details table) that have been ordered.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource15">
        <Columns>
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" ReadOnly="True" SortExpression="Quantity" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT SUM (Quantity) AS Quantity FROM &quot;Order Details&quot;"></asp:SqlDataSource>

    <!--p. Show the total number of orders by Customer since December 31, 1996.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource16">
        <Columns>
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT CustomerID, OrderDate FROM Orders WHERE OrderDate &gt;='December 31, 1996'"></asp:SqlDataSource>

    <!--q. Show a list of order numbers with dates and the names of the customers who placed them.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource17">
        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT Orders.OrderID, Orders.OrderDate, Customers.ContactName FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID"></asp:SqlDataSource>

    <!--q. Show a list of order numbers with dates and the names of the customers who placed them.-->
    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource18">
        <Columns>
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT Shippers.CompanyName, Orders.OrderID, Customers.ContactName FROM Shippers INNER JOIN Orders ON Shippers.ShipperID = Orders.ShipVia INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID"></asp:SqlDataSource>
</div>

</asp:Content>
