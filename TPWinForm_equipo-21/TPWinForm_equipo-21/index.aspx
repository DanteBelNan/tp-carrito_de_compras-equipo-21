﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TPWinForm_equipo_21.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<style>
        .card:hover{
                box-shadow : -1px 9px 40px -12px #808080;
        }
    </style>



<table class="table table-bordered">
    <thead>
        <tr>
            <th class="d-none">Id</th>
            <th>Codigo</th>
            <th>Nombre</th>
            <th>Descripción</th>
            <th>Marca</th>
            <th>Categoría</th>
            <th>Precio</th>
            <th>Ver Más</th>
            <th>Carrito</th>
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="repeaterArticulos" runat="server">
            <ItemTemplate>
                <tr>
                    <td class="d-none" name="id"<%# Eval("id") %></td>
                    <td><%# Eval("codigo") %></td>
                    <td><%# Eval("nombre") %></td>
                    <td><%# Eval("descripcion") %></td>
                    <td><%# Eval("marca") %></td>
                    <td><%# Eval("categoria") %></td>
                    <td><%# Eval("precio") %></td>
                    <td><a href="DetalleArticulo.aspx?id=<%# Eval("id") %>">Ver Detalle</a></td>
                    <td> <asp:Button ID="btnCarrito" runat="server" Text="🛒" OnClick="btnCarrito_Click" CommandArgument='<%#Eval("id") %>' CommandName="idArticulo"/><td />
                  </td> 
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

<div class="row row-cols-1 row-cols-md-3 g-4">
        <asp:Repeater ID="repeater2" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <asp:Image ID="imgArticulo" runat="server" ImageUrl='<%# Eval("Imagen.imagenUrl") %>'/>
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("nombre") %></h5>
                            <p class="card-text"><%# Eval("descripcion") %></p>
                            <p class="card-text">Categoria:<%# Eval("categoria") %></p>
                            <p class="card-text">Marca: <%# Eval("marca") %></p>
                            <p class="card-text">Precio: <%# Eval("precio") %></p>
                            <asp:Button ID="btnCarrito" runat="server" Text="🛒" OnClick="btnCarrito_Click" CommandArgument='<%#Eval("id") %>' CommandName="idArticulo"/><td />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
    </asp:Repeater>
</div>

<script type="text/javascript">
    $('.card').hover(
        function () {
            $(this).animate({
                marginTop: "-=1%",
                marginBottom : "+=1%"
            },200)
        },
        function () {
            $(this).animate({
                marginTop: "+=1%",
                marginBottom : "-=1%"
            })
        }
    )
</script>    


</asp:Content>
