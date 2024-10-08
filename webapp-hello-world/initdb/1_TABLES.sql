create table users
(
    id SERIAL PRIMARY KEY,
    first_name TEXT not null,
    last_name TEXT not null,
    isAdmin bool not null,
    quizPlayed List<int> not null,
);

create table theme
(
    id SERIAL PRIMARY KEY,
    name TEXT not null,
    description TEXT not null,
    quiz List<int> null,
);

create table quiz
(
    id SERIAL PRIMARY KEY,
    name TEXT not null,
    description TEXT not null,
    ranking List<int> null,
    question List<int> null,
);

create table question
(
    id SERIAL PRIMARY KEY,
    question TEXT not null,
    answer List<int> not null,
    choice List<int> not null,
);

create table choice
(
    id SERIAL PRIMARY KEY,
    option TEXT not null,
);

create table score
(
    id SERIAL PRIMARY KEY,
    score int not null,
    user int not null,
    quiz int not null,
    message TEXT not null,
);

