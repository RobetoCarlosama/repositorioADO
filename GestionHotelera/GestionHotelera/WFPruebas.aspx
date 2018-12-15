<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFPruebas.aspx.cs" Inherits="GestionHotelera.WFPruebas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_identificacion" DataSourceID="sqldsPruebas">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id_identificacion" HeaderText="id_identificacion" InsertVisible="False" ReadOnly="True" SortExpression="id_identificacion" />
                    <asp:BoundField DataField="descripcion_identificacion" HeaderText="descripcion_identificacion" SortExpression="descripcion_identificacion" />
                    <asp:BoundField DataField="creacion_identificacion" HeaderText="creacion_identificacion" SortExpression="creacion_identificacion" />
                    <asp:BoundField DataField="actualizacion_identificacion" HeaderText="actualizacion_identificacion" SortExpression="actualizacion_identificacion" />
                    <asp:BoundField DataField="estado_identificacion" HeaderText="estado_identificacion" SortExpression="estado_identificacion" />
                </Columns>
            </asp:GridView>




            <asp:SqlDataSource ID="sqldsPruebas" runat="server" ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:gestionHoteleraConnectionString %>" 
                DeleteCommand="DELETE FROM [tbl_identificacion] WHERE [id_identificacion] = @original_id_identificacion AND (([descripcion_identificacion] = @original_descripcion_identificacion) OR ([descripcion_identificacion] IS NULL AND @original_descripcion_identificacion IS NULL)) AND (([creacion_identificacion] = @original_creacion_identificacion) OR ([creacion_identificacion] IS NULL AND @original_creacion_identificacion IS NULL)) AND (([actualizacion_identificacion] = @original_actualizacion_identificacion) OR ([actualizacion_identificacion] IS NULL AND @original_actualizacion_identificacion IS NULL)) AND (([estado_identificacion] = @original_estado_identificacion) OR ([estado_identificacion] IS NULL AND @original_estado_identificacion IS NULL))" InsertCommand="INSERT INTO [tbl_identificacion] ([descripcion_identificacion], [creacion_identificacion], [actualizacion_identificacion], [estado_identificacion]) VALUES (@descripcion_identificacion, @creacion_identificacion, @actualizacion_identificacion, @estado_identificacion)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_identificacion] WHERE ([estado_identificacion] = @estado_identificacion)" 
                UpdateCommand="UPDATE [tbl_identificacion] SET [descripcion_identificacion] = @descripcion_identificacion, [creacion_identificacion] = @creacion_identificacion, [actualizacion_identificacion] = @actualizacion_identificacion, [estado_identificacion] = @estado_identificacion WHERE [id_identificacion] = @original_id_identificacion AND (([descripcion_identificacion] = @original_descripcion_identificacion) OR ([descripcion_identificacion] IS NULL AND @original_descripcion_identificacion IS NULL)) AND (([creacion_identificacion] = @original_creacion_identificacion) OR ([creacion_identificacion] IS NULL AND @original_creacion_identificacion IS NULL)) AND (([actualizacion_identificacion] = @original_actualizacion_identificacion) OR ([actualizacion_identificacion] IS NULL AND @original_actualizacion_identificacion IS NULL)) AND (([estado_identificacion] = @original_estado_identificacion) OR ([estado_identificacion] IS NULL AND @original_estado_identificacion IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id_identificacion" Type="Int32" />
                    <asp:Parameter Name="original_descripcion_identificacion" Type="String" />
                    <asp:Parameter Name="original_creacion_identificacion" Type="DateTime" />
                    <asp:Parameter Name="original_actualizacion_identificacion" Type="DateTime" />
                    <asp:Parameter Name="original_estado_identificacion" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="descripcion_identificacion" Type="String" />
                    <asp:Parameter Name="creacion_identificacion" Type="DateTime" />
                    <asp:Parameter Name="actualizacion_identificacion" Type="DateTime" />
                    <asp:Parameter Name="estado_identificacion" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="A" Name="estado_identificacion" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripcion_identificacion" Type="String" />
                    <asp:Parameter Name="creacion_identificacion" Type="DateTime" />
                    <asp:Parameter Name="actualizacion_identificacion" Type="DateTime" />
                    <asp:Parameter Name="estado_identificacion" Type="String" />
                    <asp:Parameter Name="original_id_identificacion" Type="Int32" />
                    <asp:Parameter Name="original_descripcion_identificacion" Type="String" />
                    <asp:Parameter Name="original_creacion_identificacion" Type="DateTime" />
                    <asp:Parameter Name="original_actualizacion_identificacion" Type="DateTime" />
                    <asp:Parameter Name="original_estado_identificacion" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>




        </div>
    </form>
</body>
</html>
