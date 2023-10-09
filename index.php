<?php
require 'OsezLaTech.php';
$osezLaTech = new OsezLaTech();
$answers = $osezLaTech->getAnswers();

if($_POST) {
  $question = $_POST['question'];
  $answer = $_POST['answer'];
  $osezLaTech->postAnswers($question, $answer);
  header('Location: index.php');
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Osez La Tech - Découverte du Coding</title>
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
</head>
<body>
  <nav>
    <img src="images/social-builder.png" alt="Logo Social Builder">
    <h1>#OsezLaTech</h1>
  </nav>
  <main>
    <section>
      <?php
      if ($answers) {
        foreach ($answers as $row) {
      ?>
      <div class="tweet" data-aos="fade-up">
        <div class="tweet-header">
            <?php
            // reformat date
            $date = new DateTime($row['date']);
            $date = $date->format('d/m/Y H:i');
            ?>
            <h3>#OsezLaTech</h3>
            <p>@social_builder_ - <?= $date ?></p>
        </div>
        <div>
          <p class="question"><?= $row['question'] ?></p>
          <p><?= $row['answer'] ?></p>
        </div>
      </div>
      <?php
        }
      }
      ?>
    </section>
    <aside>
      <div class="tweet-content">
        <h2 id="question"></h2>
        <form action="form.php" method="POST">
          <input type="hidden" name="question" value="" id="questionForm">
          <textarea name="answer" id="" placeholder="Ecrire votre réponse ici"></textarea>
          <button type="submit">Je partage ma réponse !</button>
        </form>
      </div>
    </aside>
  </main>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script src="main.js"></script>
</body>
</html>
