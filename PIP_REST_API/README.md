# AC-ABAC
Repository for the AC-ABAC paper, containing the ABAC contextual handlers, policies and additional components.

## Usage

```bash
docker-compose build
docker-compose up
```

## Test
After docker-compose up:
* Try to access http://127.0.0.1:8000/attribute-provider/getinfo?patient-ID=10&ES-ID=10&user-ID=10

Available get params:
* patient-ID
* ES-ID
* user-ID

## License
[TODO]()