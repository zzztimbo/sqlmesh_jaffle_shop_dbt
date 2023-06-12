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
sqlmesh test
```

This will create a duckdb file: `jaffle_shop.duckdb`.

Starting over is as simple as removing this file. 

You can also use sqlmesh to instantiate the project in DuckDB, but you should not expect 
to use both sqlmesh and dbt as the runner without encountering errors. Use one or the other.

```
sqlmesh plan
```

## dbt commands
```
dbt deps
dbt seed
dbt build 
```

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

## Launch Jupyter Lab
```
jupyter lab
```

Open the `jaffle_shop_duckdb_column_lineage.ipynb` notebook. 
Run cell by cell so that you can see the lineage change as we go through each column in our the jaffle shop business tables. 

## Purpose

This repo illustrates how to utilize SQLmesh for unit testing of dbt models. Please look at the `tests` folder.

It also shows the utility of sqlglot in generating a list of columns used by upstream tables in our jaffle shop sources. This can be seen in the `jaffle_shop_duckdb_column_lineage.ipynb` notebook. 
