Create database goodreads; Use goodreads;

Create table books_details (

Book_id int, Books_title varchar(500) not null, Authors_name varchar(500) not null, Isbn int not null, Languages text, Edition text, Characters text, Pages_count int, Verage_rating float, Ratings_count int, Reviews_count int, Published_date date, Published_name text, Primary key (isbn, book_id)

);

Create table users_profile (

First_name varchar(500) not null, Last_name varchar(500) not null, Email varchar(500) not null, Users_password varchar(500) not null, Bio text, Genres text, Statue text, Website_url varchar(500), Primary key (email)

);

Create table user_account0 ( Challenge_joined text, Series_list text, Review_list text, Email_acc text not null, Groups_list text, Book_list text, Recommendation text, Want_to_read_books text,
Current_read_books text, Read_books text, Created_sehlf text, Compare_book text, Users_following int, Users_followers int, Foreign key(emailacc) references users_profile(email) );

Create table authors_profile ( Authorname varchar(500) not null, Author_published_date date, Author_books_rating int, Authors_followers int, Authors_id int not null, Primary key (authors_id) );

Create table group_info ( Group_id int not null, Joined_group text, Group_members text, List_group text, Primary key (group_id) );

Create table lists ( Shelf_list text, Series_list text, Review_list text, List_group text, Book_list text, Command_list text );

Create table bill ( Bill_id int not null, Order_dtare date, Book_title text, Book_quantity int, Book_price float, Total_price float, Vat float, Primary key (bill_id)

);

Alter table books_details; Select count(*) as total_records,

Count(distinct book_id) as num_books,

Count(distinct authors_name) as num_authors,

Count(distinct published_name) as num_publishers,

Count(distinct languages) as num_languages From books_details; Select * from books_details;

Select published_name, count(distinct book_id) as num_books From books_details Group by 1 Order by 2 desc, 1 Limit 15; Select min(average_rating) as min_rating,

Max(average_rating) as max_rating, Round(avg(average_rating),2) as avg_rating;