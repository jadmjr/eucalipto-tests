create table tb_movie(
  id int AUTO_INCREMENT, 
  count int, 
  image varchar(255), 
  score float, 
  title varchar(255), 
  primary key (id)
);
create table tb_score (
  value float , 
  movie_id int not null, 
  user_id int not null, 
  primary key (movie_id, user_id)
);
create table tb_user (
  id int AUTO_INCREMENT, 
  username varchar(255), 
  password varchar(255), 
  roles varchar(255), 
  primary key (id)
);
CREATE TABLE tb_person (
  id int AUTO_INCREMENT, 
  name varchar(255), 
  family_name varchar(255), 
  email varchar(255), 
  phone_number varchar(255), 
  primary key (id)
);
ALTER TABLE 
  tb_score 
ADD 
  FOREIGN KEY (movie_id) REFERENCES tb_movie(id);
ALTER TABLE 
  tb_score 
ADD 
  FOREIGN KEY (user_id) REFERENCES tb_user(id);
