<!-- This page gets the info from the server and saves it to the JS -->
<script>
  // send db info into the JS
  let arrayProducts = [];
  var table_name = '<?=$table ?>';
  var img_folder = '<?=$img_folder?>';
  
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
  let image, index = 0;

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

</script>
  