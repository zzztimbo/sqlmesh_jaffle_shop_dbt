# sqlmesh_jaffle_shop_dbt


## Prerequisites
```
poetry 1.5.1
python 3.10.11
```

Using [asdf](https://asdf-vm.com/guide/getting-started.html)

```
asdf plugin add poetry 
asdf plugin add python
asdf install python 3.10.11
asdf install poetry 1.5.1
```

## Poetry commands
```
poetry shell
poetry install 
source .venv/bin/activate
```

## SQLmesh commands
```
sqlmesh plan
sqlmesh test
```

This will create a duckdb file: `jaffle_shop.duckdb`.

Starting over is as simple as removing this file. 


## DuckDB commands

```
duckdb jaffle_shop.duckdb
...

select * from information_schema.tables;
use main;
show tables;
describe orders;
select * from main.orders;
```
