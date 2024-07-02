<?php
$link = mysqli_connect("localhost", "root", "12345678", "non-tax");
if ($link === false) {
    die(mysqli_connect_error());
}

function updateTable($link, $table, $idColumn, $id, $data)
{
    $updateValues = '';

    foreach ($data as $column => $value) {
        if (!empty($value)) {
            $sanitizedValue = mysqli_real_escape_string($link, htmlspecialchars($value));
            $updateValues .= "$column = '$sanitizedValue',";
        }
    }

    if (!empty($updateValues)) {
        $updateValues = rtrim($updateValues, ',');

        $sql = "UPDATE $table SET $updateValues WHERE $idColumn = '$id'";

        if (mysqli_query($link, $sql)) {
            echo "Records updated successfully in $table \n <br>";
        } else {
            echo "Error updating records in $table: " . mysqli_error($link);
        }
    } else {
        echo "No values provided for update in $table \n <br>";
    }
}

if (isset($_POST["submit"])) {
    // Update scheme table
    $s_id = isset($_POST["s_id"]) ? $_POST["s_id"] : '';
    $s_name = isset($_POST["s_name"]) ? $_POST["s_name"] : '';
    $description = isset($_POST["description"]) ? $_POST["description"] : '';
    $outcome_expected = isset($_POST["outcome_expected"]) ? $_POST["outcome_expected"] : '';
    $outcome_derived = isset($_POST["outcome_derived"]) ? $_POST["outcome_derived"] : '';

    if (!empty($s_id)) {
        $data = array(
            "s_name" => $s_name,
            "description" => $description,
            "outcome_expected" => $outcome_expected,
            "outcome_derived" => $outcome_derived
        );

        updateTable($link, "scheme", "s_id", $s_id, $data);
    }

    // Update revenue table
    $revenue_id = isset($_POST["revenue_id"]) ? $_POST["revenue_id"] : '';
    $revenue_name = isset($_POST["revenue_name"]) ? $_POST["revenue_name"] : '';
    $revenue_collected = isset($_POST["revenue_collected"]) ? $_POST["revenue_collected"] : '';

    if (!empty($revenue_id)) {
        $data = array(
            "revenue_name" => $revenue_name,
            "revenue_collected" => $revenue_collected
        );

        updateTable($link, "revenue", "revenue_id", $revenue_id, $data);
    }

    // Update departments table
    $dep_id = isset($_POST["dep_id"]) ? $_POST["dep_id"] : '';
    $dep_name = isset($_POST["dep_name"]) ? $_POST["dep_name"] : '';
    $d_description = isset($_POST["d_description"]) ? $_POST["d_description"] : '';
    $amount_collected = isset($_POST["amount_collected"]) ? $_POST["amount_collected"] : '';

    if (!empty($dep_id)) {
        $data = array(
            "dep_name" => $dep_name,
            "d_description" => $d_description,
            "amount_collected" => $amount_collected
        );

        updateTable($link, "departments", "dep_id", $dep_id, $data);
    }

    // Update expenditures table
    $e_id = isset($_POST["e_id"]) ? $_POST["e_id"] : '';
    $e_type = isset($_POST["e_type"]) ? $_POST["e_type"] : '';
    $e_amount = isset($_POST["e_amount"]) ? $_POST["e_amount"] : '';

    if (!empty($e_id)) {
        $data = array(
            "e_type" => $e_type,
            "e_amount" => $e_amount
        );

        updateTable($link, "expenditures", "e_id", $e_id, $data);
    }

    // Update beneficiaries table
    $ben_id = isset($_POST["ben_id"]) ? $_POST["ben_id"] : '';
    $ben_fname = isset($_POST["ben_fname"]) ? $_POST["ben_fname"] : '';
    $ben_lname = isset($_POST["ben_lname"]) ? $_POST["ben_lname"] : '';
    $ben_email = isset($_POST["ben_email"]) ? $_POST["ben_email"] : '';
    $locality = isset($_POST["locality"]) ? $_POST["locality"] : '';
    $age = isset($_POST["age"]) ? $_POST["age"] : '';
    $ben_aadhar = isset($_POST["ben_aadhar"]) ? $_POST["ben_aadhar"] : '';

    if (!empty($ben_id)) {
        $data = array(
            "ben_fname" => $ben_fname,
            "ben_lname" => $ben_lname,
            "ben_email" => $ben_email,
            "locality" => $locality,
            "age" => $age,
            "ben_aadhar" => $ben_aadhar
        );

        updateTable($link, "beneficiaries", "ben_id", $ben_id, $data);
    }

    // Update legislations table
    $l_id = isset($_POST["l_id"]) ? $_POST["l_id"] : '';
    $l_title = isset($_POST["l_title"]) ? $_POST["l_title"] : '';
    $l_sec = isset($_POST["l_sec"]) ? $_POST["l_sec"] : '';

    if (!empty($l_id)) {
        $data = array(
            "l_title" => $l_title,
            "l_sec" => $l_sec
        );

        updateTable($link, "legislations", "l_id", $l_id, $data);
    }

    // Update documents table
    $d_id = isset($_POST["d_id"]) ? $_POST["d_id"] : '';
    $d_type = isset($_POST["d_type"]) ? $_POST["d_type"] : '';

    if (!empty($d_id)) {
        $data = array(
            "d_type" => $d_type
        );

        updateTable($link, "documents", "d_id", $d_id, $data);
    }

    // Update government_employees table
    $gemp_id = isset($_POST["gemp_id"]) ? $_POST["gemp_id"] : '';
    $gemp_fname = isset($_POST["gemp_fname"]) ? $_POST["gemp_fname"] : '';
    $gemp_lname = isset($_POST["gemp_lname"]) ? $_POST["gemp_lname"] : '';
    $emp_email = isset($_POST["emp_email"]) ? $_POST["emp_email"] : '';
    $gemp_salary = isset($_POST["gemp_salary"]) ? $_POST["gemp_salary"] : '';

    if (!empty($gemp_id)) {
        $data = array(
            "gemp_fname" => $gemp_fname,
            "gemp_lname" => $gemp_lname,
            "emp_email" => $emp_email,
            "gemp_salary" => $gemp_salary
        );

        updateTable($link, "government_employees", "gemp_id", $gemp_id, $data);
    }

    // Update transactions table
    $t_id = isset($_POST["t_id"]) ? $_POST["t_id"] : '';
    $t_amount = isset($_POST["t_amount"]) ? $_POST["t_amount"] : '';

    if (!empty($t_id)) {
        $data = array(
            "t_amount" => $t_amount
        );

        updateTable($link, "transactions", "t_id", $t_id, $data);
    }

}

mysqli_close($link);
?>
