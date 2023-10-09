// List of question about what you love in web development
let questions = [
  "Comment imaginez-vous le métier de développeur web ?",
  "Au quotidien, quels objets utilisez-vous qui sont liés au web ?",
  "Que pensez-vous du développement de l'intelligence artificielle durant la dernière année ?",
];

// Select one random question
let randomQuestion = questions[Math.floor(Math.random() * questions.length)];
document.getElementById("question").innerText = randomQuestion;
document.getElementById("questionForm").value = randomQuestion;

// AOS INIT
AOS.init();
