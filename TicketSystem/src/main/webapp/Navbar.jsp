<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <div class="sticky top-0 z-[9999999] flex justify-center h-[10vh] hover:bg-white transition-all duration-500">
      <div class="h-full w-[95%] flex justify-between hover:text-black items-center relative">
        <div class="text-4xl hover:text-red-600 font-extrabold cursor-pointer">Tikkit</div>
        <div
          class=""
        >
          <ul class="hidden md:flex space-x-16">
            <li class="border-expand text-md font-semibold cursor-pointer hover:text-red-800">
              <a href="/TicketSystem/index.jsp">Home</a>
            </li>
            <li class="border-expand text-md font-semibold cursor-pointer hover:text-red-800">
              <a href="/TicketSystem/train.jsp">Book Train</a>
            </li>
            <li class="border-expand text-md font-semibold cursor-pointer hover:text-red-800">
              <a href="/TicketSystem/plane.jsp">Book Plane</a>
            </li>
            <li class="border-expand text-md font-semibold cursor-pointer hover:text-red-800">
              <a href="/TicketSystem/ship.jsp">Book Ship</a>
            </li>
          </ul>
        </div>
        <div
          class="flex gap-8">
          <div class="flex gap-2 p-3 rounded-lg bg-red-600 items-center cursor-pointer">
            Get Started
        </div>
      </div>
    </div>
      </div>
</body>
</html>
