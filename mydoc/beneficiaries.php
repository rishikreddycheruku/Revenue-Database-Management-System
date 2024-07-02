<!DOCTYPE html>
<html>
    <head>
        <title>Table</title>
        <style> 
            h1{
                font-size: 30px;
                color: #fff;
                text-transform: uppercase;
                font-weight: 300;
                text-align: center;
                margin-bottom: 15px;
            }
            table{
                width:100%;
                table-layout: fixed;
                z-index: 2;
            }
            .tbl-header{
                background-color: rgba(255,255,255,0.3);
            }
            .tbl-content{
                height:600px;
                overflow-x:auto;
                margin-top: 0px;
                border: 1px solid rgba(255,255,255,0.3);
            }
            th{
                padding: 30px 25px;
                text-align: left;
                font-weight: 500;
                font-size: 22px;
                color: #fff;
                text-transform: uppercase;
                text-align: center;
            }
            td{
                padding: 25px;
                text-align: left;
                vertical-align:middle;
                font-weight: 300;
                font-size: 22px;
                color: #fff;
                border-bottom: solid 1px rgba(255,255,255,0.1);
                text-align: center;
            }
            .a{
                width:10%;
            }
            .b{
                width:25%;
            }
            .c{
                width:15%
            }
            
            
            /* demo styles */
            
            @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
            body{
                background: -webkit-linear-gradient(left, #1b72d5, #25b7c4);
                background: linear-gradient(to right, #1b72d5, #25b7c4);
                font-family: 'Roboto', sans-serif;
            }
            section{
                margin: 50px;
            }
            
            
            
            /* for custom scrollbar for webkit browser*/
            
            ::-webkit-scrollbar {
                width: 6px;
            } 
            ::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
            } 
            ::-webkit-scrollbar-thumb {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
            }
        </style>
    </head>
    <body>
        </div>
        <br>
        <h1><b>Beneficiaries</b></h1>
        <br>
        <br>
        </div>
        <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>
                <th class = 'a' >ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th class = 'b'>EMAIL</th>
                <th>Locality</th>
                <th>Age</th>
                <th class = 'c'>Aadhar</th>
            </thead>
        </table>
        </div>
        <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
            <?php
            $conn = mysqli_connect("localhost","root","12345678","non-tax");
            if($conn-> connect_error)
            {
                die("Connection failed: " . $conn->connect_error);
            }
            $sql = "select * from beneficiaries";
            $result = $conn->query($sql);
            if($result->num_rows > 0)
            {
                while($row = $result->fetch_assoc())
                {
                    echo"<tr>
                    <td class = 'a'>". $row["ben_id"] ."</td>
                    <td>". $row["ben_fname"] . "</td>
                    <td>". $row["ben_lname"] ."</td>
                    <td class = 'b'>". $row["ben_email"] ."</td>
                    <td>". $row["locality"] ."</td>
                    <td>". $row["age"] ."</td>
                    <td class = 'c'>". $row["ben_aadhar"] ."</td>
                    </tr>";
                }
                echo "</table>";
            }
            else
            {
                echo "0 result";
            }
            $conn-> close();
            ?>
        </table>
        </div>
    </body>
</html>