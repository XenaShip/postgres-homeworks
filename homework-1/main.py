import csv

import psycopg2

def edit_quotes(a):
    ans = ''
    for i in a:
        ans += i


file1 = open("north_data/customers_data.csv", "r")
data_customers = csv.reader(file1)
data_customers = list(data_customers)[1:]
file2 = open("north_data/employees_data.csv", "r")
data_employees = csv.reader(file2)
data_employees = list(data_employees)[1:]
file3 = open("north_data/orders_data.csv", "r")
data_orders = csv.reader(file3)
data_orders = list(data_orders)[1:]
with psycopg2.connect(
    host="localhost",
    database="north",
    user="postgres",
    password="Xena2003"
) as conn:
    with conn.cursor() as cur:
        '''
        for i in data_customers:
            sql_request = f"INSERT INTO customers VALUES ('%s', '%s', '%s')" % (i[0].replace("'", "''"),
                                                                                i[1].replace("'", "''"),
                                                                                i[2].replace("'", "''"))
            cur.execute(sql_request)
        count_num = 1
        for i in data_employees:
            helpp = [count_num] + i
            j = tuple(helpp)
            cur.execute(f"INSERT INTO employees VALUES {j}")
            count_num += 1
        for i in data_orders:
            j = tuple(i)
            cur.execute(f"INSERT INTO orders VALUES {j}")
        '''
conn.close()