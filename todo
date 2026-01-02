const express = require("express");
const bodyParser = require("body-parser");

const app = express();
const PORT = 3000;

// Middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.json());

// In-memory todo list
let todos = [];

// Home page
app.get("/", (req, res) => {
  let listItems = todos
    .map((todo, index) => `<li>${todo} <a href="/delete/${index}">❌</a></li>`)
    .join("");

  res.send(`
    <h2>To-Do List</h2>
    <form method="POST" action="/add">
      <input type="text" name="task" placeholder="Enter task" required />
      <button type="submit">Add</button>
    </form>
    <ul>${listItems}</ul>
  `);
});

// Add task
app.post("/add", (req, res) => {
  const task = req.body.task;
  if (task) {
    todos.push(task);
  }
  res.redirect("/");
});

// Delete task
app.get("/delete/:id", (req, res) => {
  const id = req.params.id;
  todos.splice(id, 1);
  res.redirect("/");
});

// Start server
app.listen(PORT, () => {
  console.log(`To-Do app running on port ${PORT}`);
});
