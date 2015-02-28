# Postgres Angular Rails Stack DBC Stack Overflow

## Features
#### questions/index
* Display all questions on questions/index
* Create a new question on questions/index
#### questions/:id
* Display all answers for a question on questions/:id
* Create a new answer to a question on questions/:id
* Edit a question on questions/:id
* Edit an answer on questions/:id
* Delete a question
* Delete an answer
* Upvote and downvote questions on questions/:id
#### users
* login form
* signup form
* display user's questions on users/:id/questions
* display user's answers on users/:id/answers
#### /
* displays friends' most recent questions if logged in w/ friends who have questions
* displays most recent questions

#### General
* Use live editor for creating and editing questions and answers.
* Style.
* Compatibility (IE8+, FF, Safari, Chrome)
* Categories or tags
#### NICE TO HAVE
* password encryption
* universal search bar that searches user's names, question title + content, and answer title + content

## Models:
Question:
  - (str) title
  - (txt) content
  - (int) vote_count
  - has_many :answers
  - has_many :category_questions
  - has_many :categories, through: :category_questions
  - belongs_to :user

Answer:
  - (str) title
  - (txt) content
  - (int) vote_count
  - belongs_to :user
  - belongs_to :question

User:
  - (str) email
  - (str) name
  - (str) pw
  - (int) par_score = 100 # logarthmic downwards
  - has_many :questions
  - has_many :answers

Category:
  - (str) title
  - has_many :category_questions
  - has_many :questions, through: :category_questions

Category_Questions:
  - (int) question_id
  - (int) category_id


