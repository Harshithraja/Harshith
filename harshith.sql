create table Passenger (
              customer_id int primary key auto_increment,
              cust_name varchar(255) not null,
              cust_phone int not null,
              cust_email varchar(255) not null,
              cust_city varchar(255) not null,
              cust_pin int not null,
              cust_boarding date,
              Cust_boarding_place varchar(255) not null,
              Cust_destination_place varchar(255) not null);
create table flights (
       flight_id int primary key,
       flight_name varchar(255) not null,
       flight_price varchar(255),
       Seats int(11), 
       departure date,
       departure_place varchar(255) not null);
create table ticket (
       ticket_id int primary key auto_increment,
       customer_id int not null,
       flight_id int not null,
       departure date not null,
       departure_place varchar(255) not null,
       flight_price varchar(255) not null,
       foreign key (customer_id)
       references passenger(customer_id),
       foreign key (flight_id)
       references flights(flight_id),
       foreign key (departure_place)
       references flights(departure_place));
       
