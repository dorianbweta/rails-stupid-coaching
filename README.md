# README

* Objective

  Implement a simple Rails application with 2 pages:

  - First page is a form with an input, where a user can type a question to ask the Coach
  - After submitting the form, the user is redirected to another page where she/he will see her/his question and the coach answer.

  Here's the coach (poor) logic:

  - If the message is blank, the coach will answer I can't hear you!
  - If the message is I am going to work, the coach will answer Great!
  - If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
  - Otherwise the coach will answer I don't care, get dressed and go to work!
