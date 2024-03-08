<?php

  session_start();

  if($_REQUEST){  
    include_once '../db_ops/database-select.php';

    $user_id = $feedback['id'];
    $amount = $_REQUEST['amt'];
    $pd_qty = $_REQUEST['totPdQty'];
    $cart = $_REQUEST['cart'];
    $cartString = $_REQUEST['cartString'];
    $date = $_REQUEST['date'];

    // update the total_purchases of each product that has been purchased
    foreach($cart as $cartItem){
      $id = $cartItem['id'];
      $table = $cartItem['table_name'];
      $qty = $cartItem['item_qty'];

      $update = "SELECT total_purchases from products.$table where $table.id = '$id'";
      $query = $conn->query($update);
      $result = $query->fetch_column();

      $new_purchase = $result+$qty;
      
      $update = "UPDATE products.$table SET $table.total_purchases = $new_purchase WHERE $table.id = '$id'";

      $query = $conn->query($update);
    }

    // insert the data into the user_trans table
    $insert = "INSERT INTO user_trans VALUES (null, $user_id, 1, '$date', $amount, '$cartString', $pd_qty)";

    $query = $conn->query($insert);

    if($query) echo 1;
  }
?>