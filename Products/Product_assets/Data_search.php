
<!-- This page gets the info from the server and saves it to the JS -->
  
<?php

    $select = "SELECT * FROM $table";
    $products = $pdconn->query($select);
    $products = $products->fetch_all(MYSQLI_ASSOC);

    if($_POST){
        if(isset($_POST['dashboard'])){
            if($feedback['role_id'] == 1){
            header("Location: ../dashboard.php ");
            }else
            header("Location: ../client-dashboard.php");
            
        }
        if(isset($_POST['logout'])){
            session_destroy();
            header('Location: ../index.php');
            die;
        }

        //The actual data search algorithm

        if(isset($_POST['search'])){
            $string = $_POST['search'];

            $k=0;
            $result = array();
            for($i = strlen($string)-1; $i>=0; $i--){
                $array = '';
                for ($j = 0; $j <= $i; $j++){
                    $array = $array.$string[$j]; #put each element into the array
                }
        
                $result[$k] = $array; #convert the above items into a string
                $k++;
            }
    
            $len = count($result);  # count the number of elements in the array
    
            for($p = 0; $p < $len; $p++){
                
                $select  = "SELECT * from $table where pd_name like '%$result[$p]%' OR image like '%$result[$p]%'";
                $products = $pdconn->query($select);
                $products = $products->fetch_all(MYSQLI_ASSOC);
    
                if($result){
                    break;
                }          
            }           
        }
    }
    
    $pd_count = count($products);
    
    if(!$pd_count){
        $error = "Results Not Found";
    }
    $range = ceil($pd_count/20); #Number of slides i suppose

    echo '<script> let last_slide ='.$range.'</script>';

?>
