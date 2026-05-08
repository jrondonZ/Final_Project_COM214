TODO APPLICATION - COM214 FINAL PROJECT

TEAM MEMBERS:
Josiah Z. Rondon
Tanner Goodwin
Rebecca Manna
A basic and interactive TODO application built with Ruby on Rails. Users can create accounts, manage personal ToDo items, and organize them by Categories. Each ToDo item belongs to a single Category, and each Category can have many ToDo items.

Agile/Scrum(Josiah)
Tasks divided by Objects & Depedency
Challenges
We followed an Agile approach with daily standups. Initial setup and model creation was done collaboratively. Then, we split into:

Josiah : User authentication & authorization
Rebecca : Categories CRUD & views
Person C: ToDos CRUD & views
We resolved merge conflicts through pull requests and code reviews.

Ruby version: 3.4.9
Rails version:
Frontend: Bootstrap 5.x, Font Awesome
Additional Gems:
SETUP & INSTALLATION INSTRUCTIONS:

CLONE THE REPOSITORY:

git clone [https://github.com/jrondonZ/Final_Project_COM214.git]
cd [Final_Project_COM214]
INSTALL DEPENDENCIES: bundle install
rails db: create
rails db:migrate
rails server

HOW TO RUN & TEST:
To check if database was created or migrated run these commands:
- dir db/create
- dir db/migrate

RUN THE APPLICATION:
rails server
http://127.0.0.1:3000

Start the server: rails server


Current discrepancies: 
  
"ActionView::Template::Error (undefined method &#39;each&#39; for nil)
Caused by: NoMethodError (undefined method &#39;each&#39; for nil)

Information for: ActionView::Template::Error (undefined method &#39;each&#39; for nil):
    1: &lt;% @todo.each do |todo| %&gt;
    2:   &lt;div class=&quot;todo-item&quot;&gt;
    3:     &lt;h3&gt;&lt;%= todo.title %&gt;&lt;/h3&gt;
    4:     &lt;p&gt;&lt;%= todo.description %&gt;&lt;/p&gt;
    5:     &lt;p&gt;Status: &lt;%= todo.completed ? &quot;Completed&quot; : &quot;Pending&quot; %&gt;&lt;/p&gt;
  
app/views/todos/index.html.erb:2

Information for cause: NoMethodError (undefined method &#39;each&#39; for nil):
  
app/views/todos/index.html.erb:2"
