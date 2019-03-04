function submission(){
            var first_name= document.getElementById("fname").value;
            var last_name= document.getElementById("lname").value;
            var nick_name= document.getElementById("nname").value;
            var location= document.getElementById("location").value;
            var email= document.getElementById("email").value;
            var designation = document.getElementById("designation").value;  
            var experience = document.getElementById("exp").value;
            var division = document.getElementById("division").value;
            var dob = document.getElementById("DOB").value;
            var doj = document.getElementById("DOJ").value;
            var password = document.getElementById("pwd").value;
            var dataToSend={
                "FirstName": first_name,
                "LastName": last_name,
                "Location": location,
                "Email": email,
                "Designation": designation,
                "PastExperience": experience,
                "Department" :division,
                "DateOfBirth":dob,
                "DateofJoining":doj,
                "Password":password
                }
            $.ajax({
                url: 'http://localhost:8080/Employee',
                data: dataToSend,
                type:'POST',
                dataType:'json',
                success:function(res){
                    console.log(res);
                    alert("table updated");
                }
             });
            }
          
          $(document).ready(function(){
                $.ajax({
                    type: 'GET',
                    url: 'http://localhost:8080/Employee',        
                    success: function(data) {
                        for(i=0; i<data.length;i++){
                            $('#user_table').append(
                                '<tr><td id = "'+data[i].EmployeeId+'">' + data[i].FirstName+" "+data[i].LastName +
                                '</td><td>' + data[i].Email + 
                                '</td><td>'+data[i].Status + '</td>'+
                                '</tr>'
                                );
                            }  
                        }  
                    });
                $.ajax({
                    type: 'GET',
                    url: 'http://localhost:8080/Skills',        
                    success: function(data) {
                        for(i=0; i<data.length;i++){
                            $('#user_table').append(
                                '<td>' + data[i].Name+
                                '</td><td>' + data[i].Category 
                                '</tr>'
                                );
                            }  
                        }  
                });
            });
          
          