<?php

  include_once('db_ops/database-select.php');

  $userId = $feedback['id'];
  $sel_query = "SELECT * from user_trans WHERE user_id = '$userId' ORDER BY id DESC";
  $trans = $conn->query($sel_query);
  $trans = $trans->fetch_all(MYSQLI_ASSOC);

  $total_purchases = 0;

  // Extracting the table name and id of each products
  foreach($trans as $transact){
    if($transact['transId'] == 1){
      $total_purchases += getTotalPurchases($conn, json_decode($transact['transString']));
    }
  }

  // A function that returns the transaction type
  function getTrans($con, $id){
    $query = "SELECT trans_name FROM trans_type WHERE trans_type.type_id = $id";
    $result = $con->query($query);

    return $result->fetch_column();
  }

  // A function that calculates the total purchases.
  function getTotalPurchases($con, $tableString){ 
    $table = $tableString[0]->table_name;
    $id = $tableString[0]->id;
    $query = "SELECT total_purchases FROM products.$table WHERE $table.id = '$id'";
    $result = $con->query($query);

    return $result->fetch_column();
  }
?>