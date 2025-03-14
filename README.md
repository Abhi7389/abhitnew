# Abhitnew

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 16.2.16.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The application will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.

## Running the Project with Docker

To run this project using Docker, follow these steps:

1. **Build the Docker Image**:
   Ensure Docker is installed on your system. Navigate to the project root directory and execute:
   ```bash
   docker-compose build
   ```

2. **Run the Application**:
   Start the application using:
   ```bash
   docker-compose up
   ```
   This will build and run the application in a containerized environment.

3. **Access the Application**:
   Open your web browser and navigate to `http://localhost:80` to view the application.

### Notes

- The application is built using Node.js version `22.13.1` and served using Nginx.
- The Docker Compose setup exposes port `80` for the application.
- Ensure no other services are using port `80` on your host machine to avoid conflicts.

For any issues or further assistance, please refer to the Docker and Docker Compose documentation.