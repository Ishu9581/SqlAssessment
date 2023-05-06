-- Create a database schema for the online consultation and therapy website. The database should contain the following tables:-

create database onlineCunsultancy;

-- Doctor table:- The table should contain the attributes such as id, name, specialization, etc.

create table Doctor(id int primary key not null, Doc_name varchar(30),specialization varchar(30),Experience int);

-- Appointments table:- The table should contain information related to appointments set up by doctors and patients.

create table Appointments(serial_no int primary key not null,doctor_name varchar(30),patient_name varchar(30),cause varchar(30),patient_age int,appointment_time time check(appointment_time != "12:00:00"));

-- Patient table:- The table should contain information on patients.

create table patient(patient_id int primary key not null, patient_name varchar(30),gender varchar(10),problem varchar(20),registration_date date);

-- Reviews table:- This table should contain reviews posted by patients.

create table reviews(patient_name varchar(30),review varchar(40), rating int,suggestion varchar(30));
