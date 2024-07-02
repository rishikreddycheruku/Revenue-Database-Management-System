<?php
$link = mysqli_connect("localhost", "root", "12345678", "non-tax");
if ($link === false) {
    die(mysqli_connect_error());
}


function deleteRow($link, $table, $idColumn, $id)
{
    $id = mysqli_real_escape_string($link, $id);
    $sql = "DELETE FROM $table WHERE $idColumn = '$id'";

    if (mysqli_query($link, $sql)) {
        echo "Record deleted successfully from $table \n <br>";
    } else {
        echo "Error deleting record from $table: " . mysqli_error($link);
    }
}

if (isset($_POST["submit"])) {
    //
    $serial_no = $_POST["serial_no"];
    if (!empty($serial_no)) {
        deleteRow($link, "main", "id", $serial_no);
    }

    // Delete from scheme table
    $s_id_delete = isset($_POST["s_id"]) ? $_POST["s_id"] : '';
    if (!empty($s_id_delete)) {
        deleteRow($link, "scheme", "s_id", $s_id_delete);
    }

    // Delete from revenue table
    $revenue_id_delete = isset($_POST["revenue_id"]) ? $_POST["revenue_id"] : '';
    if (!empty($revenue_id_delete)) {
        deleteRow($link, "revenue", "revenue_id", $revenue_id_delete);
    }

    // Delete from departments table
    $dep_id_delete = isset($_POST["dep_id"]) ? $_POST["dep_id"] : '';
    if (!empty($dep_id_delete)) {
        deleteRow($link, "departments", "dep_id", $dep_id_delete);
    }

    // Delete from expenditures table
    $e_id_delete = isset($_POST["e_id"]) ? $_POST["e_id"] : '';
    if (!empty($e_id_delete)) {
        deleteRow($link, "expenditures", "e_id", $e_id_delete);
    }

    // Delete from beneficiaries table
    $ben_id_delete = isset($_POST["ben_id"]) ? $_POST["ben_id"] : '';
    if (!empty($ben_id_delete)) {
        deleteRow($link, "beneficiaries", "ben_id", $ben_id_delete);
    }

    // Delete from legislations table
    $l_id_delete = isset($_POST["l_id"]) ? $_POST["l_id"] : '';
    if (!empty($l_id_delete)) {
        deleteRow($link, "legislations", "l_id", $l_id_delete);
    }

    // Delete from documents table
    $d_id_delete = isset($_POST["d_id"]) ? $_POST["d_id"] : '';
    if (!empty($d_id_delete)) {
        deleteRow($link, "documents", "d_id", $d_id_delete);
    }

    // Delete from government_employees table
    $gemp_id_delete = isset($_POST["gemp_id"]) ? $_POST["gemp_id"] : '';
    if (!empty($gemp_id_delete)) {
        deleteRow($link, "government_employees", "gemp_id", $gemp_id_delete);
    }

    // Delete from transactions table
    $t_id_delete = isset($_POST["t_id"]) ? $_POST["t_id"] : '';
    if (!empty($t_id_delete)) {
        deleteRow($link, "transactions", "t_id", $t_id_delete);
    }
}

mysqli_close($link);
?>
