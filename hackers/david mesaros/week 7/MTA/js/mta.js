var lines = {
  N: ["Times Square", "34th", "28th", "23rd", "Union Square", "8th" ],
  L: ["8th", "6th", "Union Square", "3rd", "1st"],
  "6": ["Grand Central" , "33rd", "28th", "23rd", "Union Square", "Astor Place"]
};


// console.log(lines)

// console.log(lines['N'].length)
// console.log(lines[6].length)
// console.log(lines[6].join(', '))



var start_user_line = prompt("What line would you like to take (N, L or 6)?");
 console.log(user_line = lines[start_user_line])
 console.log(start_user_line)// to see the line user picked

var user_start = prompt("What is first stop");
console.log(user_start) // to see where the use wants to get on
// var first_stop =  user_line.indexOf(user_start)
// console.log(first_stop) // what index it falls at to start

   
var end_user_line = prompt("What line would you like to get off (N, L or 6)?") // declaring a var
console.log(end_user_line)
console.log(end_line = lines[end_user_line])
// console.log(end_user_line)// to see the line the user pick for end 

var user_end = prompt("what is your last stop");

console.log(user_end) // station the user wants to get off
// var last_stop =  user_line.indexOf(user_end)
// console.log(last_stop)


// below are my global variables
var exchange = "Union Square";
var user_line = lines[start_user_line] 
var end_line = lines[end_user_line]



var intersection1 = lines[start_user_line].indexOf(exchange);
var intersection2 = lines[end_user_line].indexOf(exchange);

var start_station =  lines[start_user_line].indexOf(user_start);
var end_station = lines[end_user_line].indexOf(user_end);
 


    
    if(start_user_line == end_user_line){
       if(start_station < end_station){
        var tripLists = Math.abs(start_station - end_station)
        console.log(tripLists) // this number of stops
     
        var tripstops = user_line.splice(start_station,end_station );
        console.log(tripstops.toString())// showing the stops
      } else {
        tripLists = Math.abs(end_station - start_station);
        console.log(tripLists)

        var tripstops = user_line.splice(end_station,start_station);
        console.log(tripstops)
      }
    } else{

      

          if (start_station < intersection1){
          var trip = Math.abs(start_station - intersection1)
           var stop1 =  user_line.splice(start_station,intersection1)

           console.log(stop1)
         
            } else {
           // (start_station > intersection1)  
           var trip = Math.abs(intersection1 - start_station)
           var stop1 = user_line.splice(intersection1, start_station).reverse()
           console.log(stop1)
          }
          if (end_station > intersection2){
          var trip2 = Math.abs(end_station - intersection2
            )
          var stop2 = end_line.splice(intersection2, end_station)

          

            } else {
            // (end_station < intersection2)
          var trip2 = Math.abs(intersection2 - end_station)
          var stop2 = end_line.splice(end_station, intersection2).reverse()
          console.log(stop2)

           
          }

          
        var stops = stop1 + ', Then ' + stop2
        console.log(stops)
         var total = trip + trip2
          console.log(total) 
          
    //     console.log(stops)

     };

// var lines = {
//   N: ["Times Square", "34th on N", "28th on N", "23rd on N", "Union Square", "8th on N"],
//   L: ["8th on L", "6th", "Union Square", "3rd", "1st"],
//   6: ["Grand Central", "33rd", "28th on 6", "23rd on 6", "Union Square", "Astor Place"]
// };

// // var startStop = prompt("Where are you getting on?")
// // var endStop = prompt("Where re")
// var startStop = "Times Square";
// var startLine = "N";
// var endStop = "Grand Central";
// var endLine = "6";

// var intersect = "Union Square";

// var tripSection = function(lineOnTripSection,getOn,getOff) {
//   if (getOn < getOff) {
//    return lines[lineOnTripSection].slice(getOn,(getOff+1));
//   } else {
//    return lines[lineOnTripSection].slice(getOff,(getOn+1)).reverse();
//   };
// };

// var wholeTrip = function(lines) {
//   var getOn = lines[startLine].indexOf(startStop);
//   var getOff = lines[endLine].indexOf(endStop);
//   var intersectOn = lines[startLine].indexOf(intersect);
//   var intersectOff = lines[endLine].indexOf(intersect);
//   if (startLine === endLine) {
//     return tripSection(startLine,getOn,getOff);
//   } else {
//     var firstPart = (tripSection(startLine,getOn,intersectOn).slice(0,-2)); // slice removes double union sq
//     var allStops = firstPart.concat(tripSection(endLine,intersectOff,getOff));
//     // console.log(allStops);
//     return allStops;
//   };
// };

// console.log("There are "+ (wholeTrip(lines).length - 1) +" stops after " + startStop)
// console.log("Your stops are " + wholeTrip(lines).join(", ") + ".");





















