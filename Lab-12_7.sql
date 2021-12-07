CREATE TABLE "users" (
  "user_id" SERIAL PRIMARY KEY,
  "user_email" VARCHAR(50) NOT NULL,
  "username" VARCHAR(50) NOT NULL,
  "user_password" VARCHAR(500) NOT NULL,
  "user_firstname" VARCHAR(50) NOT NULL,
  "user_lastname" VARCHAR(50) NOT NULL
);

CREATE TABLE "ingredient" (
  "ingredient_id" SERIAL PRIMARY KEY,
  "list_of" VARCHAR(1500)
);

CREATE TABLE "posts" (
  "post_id" SERIAL PRIMARY KEY,
  "author_id" INT NOT NULL,
  "post_content" VARCHAR(1000),
  "post_pic_URL" VARCHAR(5000),
  "list_of_ingredients" NOT,
  "time_of_post" timestamp,
  "assign_to_group" BOOLEAN DEFAULT false,
  "private_post" BOOLEAN DEFAULT false
);

CREATE TABLE "groups_occasions" (
  "occasions_id" SERIAL PRIMARY KEY,
  "post_id" INT NOT NULL
);

CREATE TABLE "grecery_list" (
  "list_id" SERIAL PRIMARY KEY,
  "list_of_ingredients" NOT
);

ALTER TABLE "posts" ADD FOREIGN KEY ("author_id") REFERENCES "users" ("user_id");

ALTER TABLE "posts" ADD FOREIGN KEY ("list_of_ingredients") REFERENCES "ingredient" ("list_of");

ALTER TABLE "groups_occasions" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("post_id");

ALTER TABLE "grecery_list" ADD FOREIGN KEY ("list_of_ingredients") REFERENCES "ingredient" ("list_of");
