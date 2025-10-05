-- Q1. Retrieve all books in the "Fictional" genre

select * from books
where genre = 'fiction';




-- Q2. Find books published after the year 1950. 

select * from books
where published_year > 1950;




-- Q3. List all the customers form Canada.

select * from customers
where country = 'canada';




-- Q4. Show orders placed in November 2023.

select * from orders
where order_date between '2023-11-01' and '2023-11-30';




-- Q5. Retrieve the total stock of books available.

select sum(stock) as total_stock
from books;




-- Q6. Find the details of the most expensive book.




select * from books 
order by price desc limit 1;




-- Q7. Show all the customers who ordered more than 1 quantity of books.

select * from orders
where quantity > 1;




-- Q8. Retrieve all orders where the total amount exceeds $20.

select * from orders 
where total_amount > '20';




-- Q9. List all genres available in the books table.

select distinct genre
from books;




-- Q10. Find the book with the lowest stock.

select * from books
order by stock limit 1;




-- Q11. Calculate the total revenue generanted from all orders.

select sum(total_amount) as revenue
from orders;


-- ADVANCE QUENTIONS
-- Q12. Retrive the total number of books sold for each genre. 

select b.genre,
sum(o.quantity) as total_books_sold
from books b join orders o
on b.book_id = o.book_id
group by b.genre;




-- Q13. Find the average price of books in the "Fantasy" genre.

select round(avg(price)) as average_price
from books
where genre = 'fantasy';




-- Q14. List the customers who have placed atleast 2 orders.

select customer_id,
count(order_id) as order_count
from orders
group by customer_id
having count(order_id) >= 2;




-- Q15. Find the most frequenty ordered book.

select orders.book_id, books.title,
count(orders.order_id) as order_count
from orders join books
on orders.book_id = books.book_id
group by orders.book_id, books.title
order by order_count desc limit 1;




-- Q16. Show the top most expensive books of 'fantasy' genre.

select * from books
where genre = 'fantasy'
order by price desc limit 3;




-- Q17. Retrive the total quantity of books sold by each author.

 select b.author,
 sum(o.quantity) as total_books_sold
 from orders o join books b
 on o.book_id = b.book_id
 group by b.author;
 



-- Q18. List the cities where customers who spend over $30 are located.

select distinct c.city, country, total_amount
from orders o join customers c
on c.customer_id = o.customer_id
where o.total_amount > 30;




-- Q19. Find the customers who spend the most on orders.

select c.customer_id, c.name,
sum(o.total_amount) as most_spend
from customers c join orders o
on c.customer_id = o.customer_id
group by c.customer_id, c.name
order by most_spend desc limit 3;












  


 



















