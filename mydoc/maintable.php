<!DOCTYPE html>
<html>
    <head>
        <title>Table</title>
        <style type="text/css">
            body {
                background-image:url(database.jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }
            table {
                border-collapse: collapse;
                width: 100%;
                font-family: monospace;
                font-size: 20px;
                text-align: center;
                height: 600px;
                table-layout: fixed;
            }

            td {
                padding: 10px;
                color: black;
            }

            th {
                font-family: 'Arial', sans-serif;
                padding: 10px;
            }

            thead {
                height: 80px;
                background-color: rgb(35, 138, 211);;
            }

            thead:hover {
                background-color: grey;
                color: white;
            }

            h1 {
                font-family: sans-serif;
                font-size: 30px;
                text-align: center;
                color: white;
            }

            a{
                display: block;
                color:rgb(0 ,0, 0);
                text-align: center;
                padding: 10px;
                text-decoration:none;
            }

            a:hover {
                color: white;
            }
            
            .container {
                width: 100%;
                margin: 80px auto 0;
                background: white;
                padding: 0px;
                border-radius: 9px;
                box-shadow: 0 0 10px rgba(192, 11, 11, 0.2);
                height : 800px;
            }
        </style>
    </head>
    <body>
        </div>
        <br>
        <h1>Non - Tax Revenue Database</h1>
        </div>
        <div class = "container">
        <table>
            <thead>
                <th><a href="" target="">ID</a></th>
                <th><a href="http://localhost/mydoc/scheme.php" target="_self">Scheme ID</a></th>
                <th><a href="http://localhost/mydoc/revenue.php" target="_self">Revenue ID</a></th>
                <th><a href="http://localhost/mydoc/departments.php" target="_self">Deparment ID</a></th>
                <th><a href="http://localhost/mydoc/expenditures.php" target="_self">Expenditures ID</a></th>
                <th><a href="http://localhost/mydoc/beneficiaries.php" target="_self">Benificiary ID</a></th>
                <th><a href="http://localhost/mydoc/legislations.php" target="_self">Legislations ID</a></th>
                <th><a href="http://localhost/mydoc/documents.php" target="_self">Documents ID</a></th>
                <th><a href="http://localhost/mydoc/government_employees.php" target="_self">Government Employee ID</a></th>
                <th><a href="http://localhost/mydoc/transactions.php" target="_self">Transaction ID</a></th>
            </thead>
            <?php
            $conn = mysqli_connect("localhost","root","12345678","non-tax");
            if($conn-> connect_error)
            {
                die("Connection failed: " . $conn->connect_error);
            }
            $sql = "select * from main";
            $result = $conn->query($sql);
            if($result->num_rows > 0)
            {
                while($row = $result->fetch_assoc())
                {
                    echo"<tr>
                    <td>". $row["id"] ."</td>
                    <td>". $row["s_id"] ."</td>
                    <td>". $row["revenue_id"] . "</td>
                    <td>". $row["dep_id"] ."</td>
                    <td>". $row["e_id"] ."</td>
                    <td>". $row["ben_id"] ."</td>
                    <td>". $row["l_id"] ."</td>
                    <td>". $row["d_id"] ."</td>
                    <td>". $row["gemp_id"] ."</td>
                    <td>". $row["t_id"] ."</td>
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
