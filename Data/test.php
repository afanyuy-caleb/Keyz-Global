<?php

$table_array = 
  [
    [
      'table_name' => 'ai_techs',
      'img_folder' => 'AI'
    ],
    [
      'table_name' => 'automobiles',
      'img_folder' => 'Auto'
    ],
    [
      'table_name' => 'cartoons',
      'img_folder' => 'movie-images/cartoons'
    ],
    [
      'table_name' => 'electronics',
      'img_folder' => 'elec gadgets'
    ],
    [
      'table_name' => 'fabrics',
      'img_folder' => 'Design'
    ],
    [
      'table_name' => 'fruits',
      'img_folder' => 'Fruits'
    ],
    [
      'table_name' => 'movies',
      'img_folder' => 'movie-images'
    ],
    [
      'table_name' => 'musicals',
      'img_folder' => 'Instruments'
    ],
    [
      'table_name' => 'shoes',
      'img_folder' => 'shoes'
    ],
    [
      'table_name' => 'soul',
      'img_folder' => 'Soul-lifting'
    ]
  ];
?>

<script>
  let arrayProducts = []
  var table_name, img_folder, isExist;
  var pd_table = [];
  var savedData = [];

  class Product{
    
    constructor(id, nam, pric, discoun, img){
      this.id = id;
      this.name = nam;
      this.price = pric * 100;
      this.discount = discoun * 100;
      this.image = img;
      this.img_folder = img_folder;
      this.table_name = table_name;

      addToArray(this);
    }    
  }

  function addToArray(object){
    arrayProducts.push(object)

  }

<?php
  foreach($table_array as $data){

    $table = $data['table_name'];
    $img_folder = $data['img_folder'];

    $select = "SELECT * FROM $table";
    $products = $pdconn->query($select);
    $products = $products->fetch_all(MYSQLI_ASSOC);
?>

  // send db info into the JS
  table_name = '<?=$table ?>';
  img_folder = '<?=$img_folder?>';
  
  <?php
    $id_backup = [];
    foreach($products as $prod):
      
      $img = $prod['image'];
      $len = strlen($img);
      $image = '';

      for($i = 0; $i< $len-1; $i++){
        $image = $image.$img[$i];
      }
  ?>
  
  product = new Product('<?=$prod['id']?>','<?= $prod['pd_name']?>', <?= $prod['price']?>, <?= $prod['discount']?>, '<?=$image?>');

  <?php 
    endforeach;
  ?>

  isExist = false;
  if(localStorage.tableName){
    pd_table = JSON.parse(localStorage.tableName);
    for(let i = 0; i < pd_table.length; i++){
      if(pd_table[i] === table_name){
        isExist = true;
        break;
      }    
    }
  }

  if(!isExist){
    pd_table.push(table_name)
  }
 
  localStorage.tableName = JSON.stringify(pd_table);

  if(localStorage.products){
    savedData = JSON.parse(localStorage.products);
    if(!isExist){
      savedData.push(table_name)
      arrayProducts.forEach(item =>{
        savedData.push(item);
      })
    }
  }else{
    savedData = arrayProducts;
  }

  localStorage.products = JSON.stringify(savedData);

  <?php
    }
  ?>

</script>