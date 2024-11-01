<?php
require_once 'models/products.php';
$product = new Product();

// Lấy 7 sản phẩm mới nhất (3 sản phẩm cho slider lớn và 4 sản phẩm cho slider nhỏ)
$latestProducts = $product->getLatestProducts(7);
?>
<!-- Main News Slider Start -->
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-7 px-0">
            <div class="owl-carousel main-carousel position-relative">
                <?php foreach ($latestProducts as $index => $item): ?>
                    <?php if ($index < 3): // Hiển thị 3 sản phẩm mới nhất trong slider lớn ?>
                        <div class="position-relative overflow-hidden" style="height: 500px;">
                            <img class="img-fluid h-100" src="img/<?php echo $item['pro_image']; ?>" style="object-fit: cover;">
                            <div class="overlay">
                                <div class="mb-2">
                                    <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                        href="category.php?type_id=<?php echo $item['type_id']; ?>">Category</a>
                                    <a class="text-white" href=""><?php echo date('M d, Y', strtotime($item['created_at'])); ?></a>
                                </div>
                                <a class="h2 m-0 text-white text-uppercase font-weight-bold" href="product_detail.php?id=<?php echo $item['id']; ?>">
                                    <?php echo $item['name']; ?>
                                </a>
                            </div>
                        </div>
                    <?php endif; ?>
                <?php endforeach; ?>
            </div>
        </div>
        <div class="col-lg-5 px-0">
            <div class="row mx-0">
                <?php foreach ($latestProducts as $index => $item): ?>
                    <?php if ($index >= 3 && $index < 7): // Hiển thị 4 sản phẩm tiếp theo trong các slider nhỏ ?>
                        <div class="col-md-6 px-0">
                            <div class="position-relative overflow-hidden" style="height: 250px;">
                                <img class="img-fluid w-100 h-100" src="img/<?php echo $item['pro_image']; ?>" style="object-fit: cover;">
                                <div class="overlay">
                                    <div class="mb-2">
                                        <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                            href="category.php?type_id=<?php echo $item['type_id']; ?>">Category</a>
                                        <a class="text-white" href=""><small><?php echo date('M d, Y', strtotime($item['created_at'])); ?></small></a>
                                    </div>
                                    <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="product_detail.php?id=<?php echo $item['id']; ?>">
                                        <?php echo $item['name']; ?>
                                    </a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>
<!-- Main News Slider End -->
