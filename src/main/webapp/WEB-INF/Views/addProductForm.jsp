<%--
  Created by IntelliJ IDEA.
  User: monuk
  Date: 07-10-2023
  Time: 20:35
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
        .form-con{
            padding: 40px;
            background: rgba( 255, 255, 255, 0.10 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 2px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );

        }
        label{
            color: white;
            font-size: 1.5rem;
        }
        .my-input,.my-input:focus{
            background: rgba( 255, 255, 255, 0.10 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 2px );
            border-radius: 15px;
            padding: 10px 15px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            color: white;

        }
        .my-input::placeholder{
            color: #ece5e5;
        }
        .btn{
            padding-top: 10px;
            padding-bottom: 10px;
            border-radius: 25px;
            background-color: rgba(255, 255, 255, 0.50);
            color: black;
            cursor: pointer;
            border: 1px solid transparent;
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            transition: 0.3s ease;
        }
        .btn:hover{
            color: #fff;
            border-color: #fff;
            transform: translateY(-2px);
            background: rgba(255, 255, 255, 0.15);
        }
        .mgt{
            margin-top: 30px;
        }

    </style>
    <%@include file="./base.jsp"%>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 offset-md-3 form-con">
                <h1 style="text-align: center; color: white;">Add Product</h1>
                <form action="handle-product" method="post">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control my-input" id="name" name="name" placeholder="Product Name" required>
                    </div>

                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="text" class="form-control my-input" id="price" name="price" placeholder="Price" required>
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control my-input" id="description" name="description" rows="4" placeholder="Share standout features, benefits, and qualities" required></textarea>
                    </div>

                    <div class="form-row mgt">
                        <div class="col">
                            <a href="${pageContext.request.contextPath}/" style="text-decoration: none"><button type="button" class="btn btn-danger btn-lg btn-block">Back</button></a>
                        </div>
                        <div class="col">
                            <button type="submit" class="btn btn-success btn-lg btn-block">Add</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
