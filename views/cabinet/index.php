<?php include ROOT . '/views/layouts/header.php'; ?>

<section>
    <div class="container">
        <div class="row">

            <h4>Кабинет пользователя: <?php echo $user['name'];?>!</h4>
            <ul>
                <li><a href="/cabinet/edit">Редактировать данные</a></li>
                <?php
if ($role='admin')
    echo '<li><a href="/admin">Администрирование</a></li>';
                ?>
            </ul>
            
        </div>
    </div>
</section>
