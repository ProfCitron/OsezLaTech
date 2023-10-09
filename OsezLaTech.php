<?php

class OsezLaTech {

  public function __construct()
  {
    try {

      $database = new PDO(
        "mysql:host=localhost;dbname=osez-la-tech;charset=utf8",
        "root",
        "root",
        [
          PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
          PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]
      );

      return $database;

    } catch (Exception $e) {

      die('Erreur : ' . $e->getMessage());

    }

  }

  public function getAnswers() {

      $database = $this->__construct();

      $query = $database->prepare('SELECT * FROM conference ORDER BY date DESC');
      $query->execute();
      $answers = $query->fetchAll();

      return $answers;

  }

  public function postAnswers($question, $answer) {

      $database = $this->__construct();

      $query = $database->prepare('INSERT INTO conference (question, answer, date) VALUES (:question, :answer, NOW())');
      $query->execute([
        'question' => htmlspecialchars($question),
        'answer' => htmlspecialchars($answer)
      ]);
  }

}
