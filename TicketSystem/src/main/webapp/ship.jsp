<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.tailwindcss.com"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <div class="text-white w-full">
   <%@ include file="Navbar.jsp" %>
    </div>
	<img src="./ship.jpg" class="brightness-[0.25] -z-10 absolute top-0 left-0 w-full h-full object-cover" alt="">
      <div class="h-[90vh] p-6 flex items-center justify-center">
  <div class="container max-w-screen-lg mx-auto">
    <div>
      <h2 class="font-bold text-4xl text-white">Book Ship Ticket</h2>
      <p class="font-semibold text-gray-500 mb-6 text-xl text-white">Fill this form to book tickets for your travelling.</p>

      <div class="bg-white rounded-xl shadow-lg p-4 px-4 md:p-8 mb-6">
        <div class="grid gap-4 gap-y-2 text-sm grid-cols-1 lg:grid-cols-3">
          <div class="text-gray-600">
            <p class="font-medium text-lg">Journey Details</p>
            <p>Please fill out all the fields.</p>
          </div>


          <form action="bookshipticket" method="post" class="lg:col-span-2">
            <div class="text-black grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
              <div class="md:col-span-5">
                <label for="username">Full Name</label>
                <input type="text" name="username" id="full_name" placeholder="Enter your name" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" />
              </div>

             <div class="md:col-span-5">
			    <label for="ticket_type">Journey Type</label>
			    <select name="ticket_type" id="ticket_type" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50">
			        <option value="ship" selected>Ship</option>
			    </select>
			 </div>
             

              <div class="md:col-span-2">
                <label for="starting_point">Starting Point</label>
                <input type="text" name="starting_point" id="address" placeholder="Enter your Source" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="" />
              </div>

              <div class="md:col-span-2">
                <label for="ending_point">Destination</label>
                <input type="text" name="ending_point" id="city" placeholder="Enter your Destination" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="" />
              </div>

              <div class="md:col-span-5">
                <label for="travel_date">Travel Date</label>
                <input type="date" name="travel_date" id="full_name" placeholder="Enter your name" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" />
              </div>
      
              <div class="md:col-span-5 text-right">
                <div class="inline-flex items-end">
                  <button class="bg-red-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Submit</button>
                </div>
              </div>

            </div>
          </form>

        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>