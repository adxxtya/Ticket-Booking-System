<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.tailwindcss.com"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="">
   <div class="h-screen w-full">
    <img src="./bg.jpg" class="object-cover absolute top-0 left-0 h-[100vh] w-full -z-10 brightness-[0.25]" alt="">    
    <div class="text-white w-full">
   <%@ include file="Navbar.jsp" %>
    </div>
   <div class="h-[90vh] w-full text-white flex justify-center items-center">
      <div class="container h-full flex justify-evenly items-center flex-col">
        <div class="flex flex-col justify-center items-center w-full">
          <div class="text-7xl font-bold w-[80%] text-center">Book your Travels</div>
          <div class="text-7xl font-bold w-[80%] text-center">Right Now on 
            <span class="text-red-600">Tikkit</span>.
          </div>
        </div>
        <div class="w-[40%] bg-white/80 rounded-lg">
          <div class="w-full h-[50%]">
            <div class="flex flex-col text-black p-4">
              <div class="text-red-700 font-semibold text-lg">Welcome to Tikkit.</div>
              <div class="text-3xl font-semibold">What are you looking for?</div>
            </div>
          </div>
          <div class="flex px-4 text-white mt-5 gap-3">
            <a href="/TicketSystem/train.jsp" class="bg-red-600 p-2 px-4 rounded-full cursor-pointer">Train Ticket</a>
            <a href="/TicketSystem/plane.jsp" class="bg-red-600 p-2 px-4 rounded-full cursor-pointer">Plane Ticket</a>
            <a href="/TicketSystem/ship.jsp" class="bg-red-600 p-2 px-4 rounded-full cursor-pointer">Ship Ticket</a>
          </div>
        </div>
      </div>
    </div>
    </div>
  </body>
</html>