<?php include ROOT . '/views/layouts/header.php'; ?>
<script type="/template/js/jquery.js"></script>
<section>
    <div class="container">
        <div class="row">

            <div class="col-sm-4 col-sm-offset-4 padding-right">

                <?php if ($result): ?>
                    <p>Сообщение отправлено! Мы ответим Вам на указанный email.</p>
                <?php else: ?>
                    <?php if (isset($errors) && is_array($errors)): ?>
                        <ul>
                            <?php foreach ($errors as $error): ?>
                                <li> - <?php echo $error; ?></li>
                            <?php endforeach; ?>
                        </ul>
                    <?php endif; ?>

                    <div class="signup-form"><!--sign up form-->
                        <h2>Обратная связь</h2>
                        <h5>Есть вопрос? Напишите нам</h5>
                        <br/>
                        <form action="#" method="post">
                            <p>Ваша почта</p>
                            <input type="email" name="userEmail" placeholder="E-mail" value="<?php echo $userEmail; ?>"/>
                            <p>Сообщение</p>
                            <input type="text" name="userText" placeholder="Сообщение" value="<?php echo $userText; ?>"/>
                            <br/>
                            <input type="submit" name="submit" class="btn btn-default" value="Отправить" />
                        </form>
                    </div><!--/sign up form-->
                <?php endif; ?>


                <br/>
                <br/>
            </div>
        </div>
    </div>
     <h4>Google Maps</h4>
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5288.29088823541!2d135.06233579311524!3d48.4921029571301!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5efaea1305bf04a1%3A0xb61bb41308314cb4!2z0JTQsNC70YzQvdC10LLQvtGB0YLQvtGH0L3Ri9C5INCz0L7RgdGD0LTQsNGA0YHRgtCy0LXQvdC90YvQuSDRg9C90LjQstC10YDRgdC40YLQtdGCINC_0YPRgtC10Lkg0YHQvtC-0LHRidC10L3QuNGP!5e0!3m2!1sru!2sru!4v1516988609606" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
