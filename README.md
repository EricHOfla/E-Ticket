**Bus E-Ticket System**

A web-based Bus E-Ticket Booking System built with Laravel. Users can browse bus routes, book tickets, and receive tickets with QR codes for easy scanning during boarding. Admins can manage buses, routes, schedules, and track ticket sales.

Table of Contents

Features

Technologies Used

Installation

Configuration

Database Setup

Running the Application

Usage

Contributing

License

Features
User Features

Browse available bus routes and schedules

Book tickets online

Receive QR-coded tickets for boarding

View booking history


Admin Features

Manage buses, routes, and schedules

Track ticket sales and generate reports

Validate QR-coded tickets at boarding

Manage user accounts

Other Features

QR code generation for tickets

Email notifications with ticket details and QR code

User authentication and role-based access control

Responsive design for mobile and desktop

Technologies Used

Backend: Laravel 10

Frontend: Blade Templates, Bootstrap 5

Database: MySQL

QR Code: simple-qrcode package

Authentication: Laravel Breeze

Mailing: Laravel Mail for sending tickets

Version Control: Git

Installation

Clone the repository

git clone https://github.com/EricHOfla/E-Ticket.git
cd E-Ticket


Install dependencies

composer install
npm install
npm run build

Configuration

Copy .env.example to .env

cp .env.example .env


Generate the application key

php artisan key:generate


Update .env with your database credentials, mail settings, and other configurations.

Database Setup

Create a MySQL database, e.g., bus_ticket_db

Run migrations and seeders

php artisan migrate --seed

Running the Application

Start the Laravel development server:

php artisan serve


Visit the application in your browser at http://localhost:8000

Usage

Users:

Browse routes → Select schedule → Book ticket → Receive QR-coded ticket 

Admins:

Add buses, routes, and schedules

Validate tickets by scanning QR codes at boarding

Generate reports on ticket sales and user bookings

License

This project is licensed under the MIT License.
