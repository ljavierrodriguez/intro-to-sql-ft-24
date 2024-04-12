# Crear una base de datos

```sql
CREATE DATABASE dbft24;
```

# Seleccionar una base de datos

```sql
USE dbft24;
```

# Crear Tablas en la base de datos

```sql
CREATE TABLE users (
    id INTEGER NOT NULL AUTO_INCREMENT,
    email VARCHAR(120) NOT NULL,
    password VARCHAR(120) NOT NULL,
    active BOOLEAN DEFAULT true,
    name VARCHAR(100),
    lastname VARCHAR(100),
    phone VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE (email)
);

CREATE TABLE notes (
    id INTEGER NOT NULL AUTO_INCREMENT,
    note TEXT NOT NULL,
    users_id INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);
```

# Eliminar Tabla de la basa de datos

```sql
DROP TABLE notes;
DROP TABLE users;
```