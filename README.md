---

# Backend API for States and Counties

This is a backend API developed with Node.js 18.13.0 and TypeScript that provides endpoints for retrieving information about states and counties.

## Installation

1. Clone this repository on your local machine:

```bash
git clone https://github.com/eddgt/states-backend.git
```

2. Install dependencies using npm:

```bash
cd states-backend
npm install
```

3. Set up environment variables by creating a `.env` file at the root of the project and providing the necessary values. You can find an example of the required variables in the `.env.example` file.

4. Start the server:

```bash
npm start
```

Go to http://localhost:3003/api/states to test the app

## Usage

The API provides the following endpoints:

- `GET /api/states`: Get a list of all states.
- `GET /api/states/:id`: Get details of a specific state by its ID.
- `GET /api/counties`: Get a list of all counties.
- `GET /api/counties/:id`: Get details of a specific county by its ID.

To use the endpoints, make HTTP requests to the corresponding URL using your favorite HTTP client or tools like cURL or Postman.


## Dockerfile
### Create de Docker image
Building the Docker image: Open a terminal in the directory where your Dockerfile is located and execute the following command to build the Docker image:

```
docker build -t image_name .
```

### Running the Docker container
Running the Docker container: Once the Docker image has been successfully built, you can run a container based on that image using the following command:

```
docker run -p 3003:3003 image_name
```

## Contributions

Contributions are welcome. If you find any bugs or have suggestions to improve the API, please open an issue or send a pull request.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

---