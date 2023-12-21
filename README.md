
## eTravel Run Locally (Docker-compose)

Pull source

```bash
  git clone https://github.com/CTPhuongThuy/etravel
```

Go to the project directory

```bash
  cd etravel
```

Edit API/appsettings.Development.json

```bash
  "AzureStorageSettings": {
    "ConnectionString": "[Replace your Azure Storage Account connection string here]"
  }
```

Edit NodeJS/.env
```bash
  AZURE_STORAGE_CONNECTION_STRING='[Replace your Azure Storage Account connection string here]'
```

Run docker compose

```bash
  docker compose up --build -d
```

Wait about 2 minutes for SQL Server to be initiated and SQL file imported

Give it a try by accessing eTravel Web Application at:

```bash
  http://localhost:8005
```



## Authors

- [@CTPhuongThuy](https://github.com/CTPhuongThuy)

