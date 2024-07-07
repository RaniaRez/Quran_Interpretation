# Laravel API Boilerplate with Authentication and Media Support

This repository contains a boilerplate for a Laravel-based API project, complete with built-in authentication and extensive support for media and image handling. This boilerplate is designed to kickstart your API development, allowing you to focus on building unique features rather than setting up the basic structure.

## Features

- **Laravel 8.1**: Built on the latest version of Laravel (as of this writing).
- **JWT Authentication**: JSON Web Token (JWT) based authentication out of the box.
- **Media & Image Handling**: Integrated support for media upload, storage, and image manipulation.
- **RESTful API Structure**: Predefined structure for creating RESTful endpoints.
- **Database Migrations & Seeders**: Basic user table migration and seeders for quick setup.
- **API Rate Limiting**: Configurable rate limits for your API endpoints.
- **CORS Support**: Cross-Origin Resource Sharing (CORS) enabled for API routes.
- **Testing**: Basic setup for API testing with PHPUnit.
- **API Documentation**: Starter template for API documentation.
- **Environment Configuration**: DotEnv for easy environment configuration.

## Requirements

- PHP >= 8.0
- Composer
- MySQL or any other Laravel supported database system
- (Optional) Postman or any API testing tool

## Installation

1. **Clone the Repository**

    ```bash
    git clone https://github.com/your-username/your-laravel-api-boilerplate.git
    cd your-laravel-api-boilerplate
    ```

2. **Install Dependencies**

    ```bash
    composer install
    ```

3. **Environment Setup**

    - Copy `.env.example` to `.env` and configure your database and other settings.
    - Generate an application key:

      ```bash
      php artisan key:generate
      ```

4. **Docker Environment Setup with Laravel Sail**

    - If you do not have Docker installed, follow the [official Docker installation guide](https://docs.docker.com/get-docker/).
    - Start the Docker environment using Laravel Sail. This command will build your Docker containers and start the services defined in your `docker-compose.yml` file:

      ```bash
      ./vendor/bin/sail up
      ```

    - Note: On first run, Sail's application containers will be built on your machine. This could take several minutes.

5. **Database Migration and Seeding (with Sail)**

    - Once the Docker environment is up and running, use the following Sail command to run migrations and seeders:

      ```bash
      ./vendor/bin/sail artisan migrate
      ./vendor/bin/sail artisan db:seed
      ```

6. **JWT Setup**

    - Generate JWT secret key:

      ```bash
      ./vendor/bin/sail artisan jwt:secret
      ```

## Running the Application

- With Laravel Sail, you can start your server by simply running:

    ```bash
    ./vendor/bin/sail up
    ```

- To stop the server, you can use:

    ```bash
    ./vendor/bin/sail down
    ```

- The API will be accessible at `http://localhost`. You can change the port in your `docker-compose.yml` file.

## Usage

- API routes are defined in `routes/api.php`.
- Controllers are located in `app/Http/Controllers/Api`.
- Requests can be made to `http://localhost:8000/v1/api/`.

## Authentication

This boilerplate uses JWT for handling authentication. The following endpoints are available:

- `POST /v1/api/auth/login`: to log in a user.
- `GET /v1/api/auth/me`: to retrieve the authenticated user's profile.

## Media & Image Handling

- File uploads are handled through `POST /api/media/upload`.
- Images can be manipulated using query parameters for resizing and formatting.

## Testing

Run the PHPUnit tests with:

```bash
vendor/bin/phpunit
```
## Contributing
Contributions, issues, and feature requests are welcome. Feel free to fork this repository and submit pull requests.
