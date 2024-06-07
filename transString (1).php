<?php
    include_once 'db_ops/database-connect.php';

    if($_REQUEST['id']){
        $id = $_REQUEST['id'];

        $select = "SELECT transString FROM user_trans WHERE id = $id";

        $query = $conn->query($select);
        $result = $query->fetch_assoc();

        if($result){
            echo $result['transString'];
        }
    }
?>