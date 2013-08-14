insert into maiid_search_key_type ("type") values ('number');
insert into maiid_search_key_type ("type") values ('numberRange');
insert into maiid_search_key_type ("type") values ('color');
insert into maiid_search_key_type ("type") values ('string');

insert into maiid_search_key ("key", "tid") values ('Height', 1);
insert into maiid_search_key ("key", "tid") values ('Height Range', 2);
insert into maiid_search_key ("key", "tid") values ('Weight', 1);
insert into maiid_search_key ("key", "tid") values ('Weight Range', 2);
insert into maiid_search_key ("key", "tid") values ('Hair Color', 3);
insert into maiid_search_key ("key", "tid") values ('Eye Color', 3);

-- Demo artist
insert into maiid_artist (email, password, lastname, firstname, gender, district) values ('xxxx@xxxx.com', '12345678', 'Lastname', 'Firstname', 'M', 'Kai Ko') returning id;
