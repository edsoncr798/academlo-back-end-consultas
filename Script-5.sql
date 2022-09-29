CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name_user" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "role_id" uuid NOT NULL,
  "userCourse_Detail_id" uuid NOT NULL,
  "age" int
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title_course" varchar NOT NULL,
  "description" varchar NOT NULL,
  "category_id" uuid UNIQUE NOT NULL,
  "course_video_id" uuid UNIQUE NOT NULL,
  "teacher_id" uuid UNIQUE NOT NULL
);

CREATE TABLE "user_course_Details" (
  "id" uuid PRIMARY KEY,
  "level" varchar NOT NULL,
  "progress" varchar,
  "courses_id" uuid UNIQUE NOT NULL
);

CREATE TABLE "teachers" (
  "id" uuid PRIMARY KEY,
  "name_teacher" varchar NOT NULL,
  "age" int
);

CREATE TABLE "courses_videos" (
  "id" uuid PRIMARY KEY,
  "url" varchar UNIQUE NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("id") REFERENCES "courses" ("category_id");

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("id") REFERENCES "courses" ("course_video_id");

ALTER TABLE "users" ADD FOREIGN KEY ("userCourse_Detail_id") REFERENCES "user_course_Details" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id") REFERENCES "user_course_Details" ("courses_id");

ALTER TABLE "courses" ADD FOREIGN KEY ("teacher_id") REFERENCES "teachers" ("id");



-- insert de datos

insert into roles(
	id,
	name 
)values(
	'532e8b2b-a90b-4f9b-a4fc-6b1feca25d47',
	'studen'
),
(
	'a7f06960-9d4e-40fa-ba89-0fbdd4ee0caf',
	'teacher'
),
(
	'1c3bec62-aaae-41b1-bec9-08e7607ad909',
	'admin'
);

select *from roles 
update roles 
set name = 'student'
where name = 'studen'




insert into users(
	id,
	name_user,
	email,
	password,
	role_id,
	userCourse_Detail_id,
	age
) values(
	'f37e97db-db76-4ce4-923f-6523f050da3c',
	'edson',
	'edson@academlo.com',
	'edson1234',
	'532e8b2b-a90b-4f9b-a4fc-6b1feca25d47',
	'454cad94-d577-4752-ba59-9a311a706f83',
	24
),
(
	'e6c43ded-91b1-4b8f-8220-eb3eac52bfc7',
	'jhoan',
	'jhoan@academlo.com',
	'jhoan4321',
	'a7f06960-9d4e-40fa-ba89-0fbdd4ee0caf',
	'9314db83-03b4-4ab9-be81-8a3514fb302c',
	25
);


insert into courses(
	id,
	title_course,
	description,
	course_video_id,
	category_id,
	teacher_id 
) values (
	'81907ce2-0e9f-4995-89be-557ba5827093',
	'electronica',
	'teoria de diodos',
	'3eae44b5-db0f-4e46-bd12-f36cbae8eea0',
	'cd7a4578-ab71-4669-b670-81051c064e61',
	'fb07d5df-8b8c-4b60-aed5-3a9359b5b68c'
),
(
	'0cba4fb8-81fc-4e45-8d29-c642bbb2d8f2',
	'javaScritp',
	'fundamentos js',
	'92f961d2-5984-4c5e-8341-c9b711cdac88',
	'59d7787a-a2f7-45c0-b557-fcd992b954dc',
	'68e0daf9-5aaa-484d-8d8c-4161786cca52'
);

insert into courses_videos(
	id,
	url 
)values(
	'3eae44b5-db0f-4e46-bd12-f36cbae8eea0',
	'https://youtu.be/aPY3I8pG478'
),
(
	'92f961d2-5984-4c5e-8341-c9b711cdac88',
	'https://youtu.be/z95mZVUcJ-E'
);


insert into teachers(
	id,
	name_teacher,
	age 
) values(
	'fb07d5df-8b8c-4b60-aed5-3a9359b5b68c',
	'pepito',
	35
),
(
	'68e0daf9-5aaa-484d-8d8c-4161786cca52',
	'banjamin',
	30
);


insert into categories(
	id,
	name
) values (
	'cd7a4578-ab71-4669-b670-81051c064e61',
	'fisica'
),
(
	'59d7787a-a2f7-45c0-b557-fcd992b954dc',
	'Developer'
);


insert into user_course_Details(
	id,
	course_id,
	level,
	progress 
) values (
	'454cad94-d577-4752-ba59-9a311a706f83',
	'81907ce2-0e9f-4995-89be-557ba5827093',
	'intermedio',
	'25%'
),
(
	'9314db83-03b4-4ab9-be81-8a3514fb302c',
	'0cba4fb8-81fc-4e45-8d29-c642bbb2d8f2'
	'avanzado'
	'10%'
);

