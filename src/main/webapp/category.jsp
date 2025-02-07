<%--
  Created by IntelliJ IDEA.
  User: qtuan
  Date: 07/02/2025
  Time: 9:23 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
<h1>Welcome to the Home Page</h1>
<p><a href="{{ url('/about') }}">About Us</a></p>

<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <form>
                <div class="mb-3">
                    <label for="category" class="form-label">Select Category</label>
                    <select id="category" class="form-select">
                        <option value="">Select a category</option>
                        <optgroup label="Category 1"> Tên category (Vòng lặp)
                            <option value="1.1">SubCategory 1.1</option> Các subcategory của category cha (Vòng lawjp)
                            <option value="1.2">SubCategory 1.2</option>
                        </optgroup>
                        <optgroup label="Category 2">
                            <option value="2.1">SubCategory 2.1</option>
                            <option value="2.2">SubCategory 2.2</option>
                        </optgroup>
                    </select>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
</body>

</html>
