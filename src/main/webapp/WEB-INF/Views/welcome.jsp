<%--
  Created by IntelliJ IDEA.
  User: monuk
  Date: 07-10-2023
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body{
            background: linear-gradient(rgba(0,0,0,25%),rgba(0,0,0,25%)), url('https://images.unsplash.com/photo-1620641788421-7a1c342ea42e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80') center;
            background-size: cover;
        }
        td.myflex{

            display: flex;
            justify-content: space-evenly;
        }
        td.myflex a i.red{
            color: rgba(255, 100, 100, 0.5);
        }
        td.myflex a i.red:hover{
            color: rgba(255, 100, 100, 1);
        }
        td.myflex a i.green{
            color: rgba(100, 255, 100, 0.5);
        }
        td.myflex a i.green:hover{
            color: rgba(100, 255, 100, 1);
        }

        .table-con{
            padding: 40px;
            background: rgba(255,255,255,0.05);
            backdrop-filter: blur(10px);
            border-top: 1px solid rgba(255,255,255,0.2);
            border-left: 1px solid rgba(255,255,255,0.2);
            box-shadow: 5px 5px 30px rgba(0,0,0,0.2);
            border-radius: 3px;
        }
        .mybtn{
            color: #fff;
            background: rgba(255,255,255,0.05);
            backdrop-filter: blur(10px);
            border-top: 1px solid rgba(255,255,255,0.2);
            border-left: 1px solid rgba(255,255,255,0.2);
            box-shadow: 5px 5px 30px rgba(0,0,0,0.2);
            transition: 0.3s ease;
        }
        .mybtn:hover{
            color: #fff;

            transform: translateY(-2px);
            background: rgba(255, 255, 255, 0.15);
        }
        td,th[scope="row"]{
            color: white;
        }
        .table thead th {
            border: none;
            color: white;
        }
        .table thead tr th.action{
            text-align: center;
        }
        .table tbody tr td,.table tbody tr th {
            border-top: none;
        }
        thead.myth{

            background: rgba(255,255,255,0.05);
            backdrop-filter: blur(10px);
            border-top: 1px solid rgba(255,255,255,0.2);
            border-left: 1px solid rgba(255,255,255,0.2);
            box-shadow: 5px 5px 30px rgba(0,0,0,0.2);

        }
        .table tbody tr.bbottom{
            /*box-shadow: 0px 0px 30px rgba(0,0,0,0.2);*/
            border-bottom: 1px solid rgba(255,255,255,0.08);
        }
        .table tbody tr.bbottom:last-child{
            /*box-shadow: 0px 0px 30px rgba(0,0,0,0.2);*/
            border-bottom: none;
        }
        .container h1{
            color: white;
            text-transform: uppercase;
            margin-bottom: 20px;
        }

    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <%@include file="./base.jsp"%>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center" style="color: white;">Product CRUD App</h1>
        <div class="row">
            <div class="col-md-12 p-5 table-con">
                <table class="table">
                    <thead class="myth">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Product Name</th>
                            <th scope="col">Description</th>
                            <th scope="col">Price</th>
                            <th scope="col" class="action">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${productList }" var="p">
                        <tr class="bbottom">
                            <th scope="row">PCRUDA${p.id}</th>
                            <td>${p.name}</td>
                            <td>${p.description}</td>
                            <td class="font-weight-bold">&#x20b9; ${p.price}</td>
                            <td class="myflex">
                                <a href="delete-ask/${p.id}"><i class="fa-solid fa-trash fa-xl red"></i></a>
                                <a href="update/${p.id}"><i class="fa-solid fa-pen-to-square fa-xl green" ></i></a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <a href="add-product" class="mylink" style="text-decoration: none"><button type="button" class="btn btn-lg btn-block mybtn">Add Product</button></a>
            </div>
        </div>
    </div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
