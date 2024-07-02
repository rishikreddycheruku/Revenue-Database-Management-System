<?php
if (isset($_POST["submit"])) {
    $serial_no = $_POST["serial_no"];

    $s_id = $_POST["s_id"];
    $s_name = $_POST["s_name"];
    $description = $_POST["description"];
    $outcome_expected = $_POST["outcome_expected"];
    $outcome_derived = $_POST["outcome_derived"];
    
    $revenue_id = $_POST["revenue_id"];
    $revenue_name = $_POST["revenue_name"];
    $revenue_collected = $_POST["revenue_collected"];
    
    $dep_id = $_POST["dep_id"];
    $dep_name = $_POST["dep_name"];
    $d_description = $_POST["d_description"];
    $amount_collected = $_POST["amount_collected"];
    
    $e_id = $_POST["e_id"];
    $e_type = $_POST["e_type"];
    $e_amount = $_POST["e_amount"];
    
    $ben_id = $_POST["ben_id"];
    $ben_fname = $_POST["ben_fname"];
    $ben_lname = $_POST["ben_lname"];
    $ben_email = $_POST["ben_email"];
    $locality = $_POST["locality"];
    $age = $_POST["age"];
    $ben_aadhar = $_POST["ben_aadhar"];
    
    $l_id = $_POST["l_id"];
    $l_title = $_POST["l_title"];
    $l_sec = $_POST["l_sec"];
    
    $d_id = $_POST["d_id"];
    $d_type = $_POST["d_type"];
    
    $gemp_id = $_POST["gemp_id"];
    $gemp_fname = $_POST["gemp_fname"];
    $gemp_lname = $_POST["gemp_lname"];
    $emp_email = $_POST["emp_email"];
    $gemp_salary = $_POST["gemp_salary"];

    $t_id = $_POST["t_id"];
    $t_amount = $_POST["t_amount"];

    if (!empty($serial_no) && !empty($s_id) && !empty($s_name) && !empty($description) && !empty($outcome_expected) && !empty($outcome_derived) && 
    !empty($revenue_id) && !empty($revenue_name) && !empty($revenue_collected) &&
    !empty($dep_id) && !empty($dep_name) && !empty($d_description) && !empty($amount_collected) &&
    !empty($e_id) && !empty($e_type) && !empty($e_amount) &&
    !empty($ben_id) && !empty($ben_fname) && !empty($ben_lname) && !empty($ben_email) && !empty($locality) && !empty($age) && !empty($ben_aadhar) &&
    !empty($l_id) && !empty($l_title) && !empty($l_sec) &&
    !empty($d_id) && !empty($d_type) &&
    !empty($gemp_id) && !empty($gemp_fname) && !empty($gemp_lname) && !empty($emp_email) && !empty($gemp_salary) &&
    !empty($t_id) && !empty($t_amount)) {

        $link = mysqli_connect("localhost", "root", "12345678", "non-tax");
        if ($link === false) {
            die(mysqli_connect_error());
        }

        $sql_scheme = "INSERT INTO scheme VALUES ('$s_id', '$s_name', '$description', '$outcome_expected', '$outcome_derived')";
        $sql_revenue = "INSERT INTO revenue VALUES ('$revenue_id', '$revenue_name', '$revenue_collected')";
        $sql_dep = "INSERT INTO departments VALUES ('$dep_id', '$dep_name', '$d_description', '$amount_collected')";
        $sql_e = "INSERT INTO expenditures VALUES ('$e_id', '$e_type', '$e_amount')";
        $sql_ben = "INSERT INTO beneficiaries VALUES ('$ben_id', '$ben_fname', '$ben_lname', '$ben_email', '$locality', '$age', '$ben_aadhar')";
        $sql_l = "INSERT INTO legislations VALUES ('$l_id', '$l_title', '$l_sec')";
        $sql_d = "INSERT INTO documents VALUES ('$d_id', '$d_type')";
        $sql_gemp = "INSERT INTO government_employees VALUES ('$gemp_id', '$gemp_fname', '$gemp_lname', '$emp_email', '$gemp_salary')";
        $sql_t = "INSERT INTO transactions VALUES ('$t_id', '$t_amount')";

        $queries = [
            $sql_scheme, $sql_revenue, $sql_dep, $sql_e, $sql_ben, $sql_l, $sql_d, $sql_gemp, $sql_t
        ];

        $success = true;

        foreach ($queries as $query) {
            if (!mysqli_query($link, $query)) {
                echo "Error: " . mysqli_error($link);
                $success = false;
                break;
            }
        }

        if ($success) {
            echo "Records inserted successfully into all tables 1";

            $sql_main = "INSERT INTO main VALUES ('$serial_no', '$s_id', '$revenue_id', '$dep_id', '$e_id', '$ben_id', '$l_id', '$d_id', '$gemp_id', '$t_id')";

            if (mysqli_query($link, $sql_main)) {
                echo "Records inserted successfully into all tables 2";
            } else {
                echo "Error inserting records into tables 2: " . mysqli_error($link);
            }
        }

        mysqli_close($link);
    } else {
        echo "Please provide all information";
    }
}
?>