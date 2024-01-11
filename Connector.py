import mysql.connector

mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = '****',
    database = 'cab_app'
    )

cur = mydb.cursor();

def show_db(n):
    if n == '1':
        q = "select * from user"
        cur.execute(q)
        result = cur.fetchall()
    
    elif n == '2':
        q = "select * from customer"
        cur.execute(q)
        result = cur.fetchall()
    
    elif n == '3':
        q = "select * from driver"
        cur.execute(q)
        result = cur.fetchall()
    
    elif n == '4':
        q = "select * from trip"
        cur.execute(q)
        result = cur.fetchall()
    
    for rec in result:
        print(rec)

n = '0'
while n != '5':
    print("-----MENU-----")
    print("1) Show Tables\n2) Embedded SQL\n3) OLAP Queries\n4) Triggers\n5) EXIT")

    a = input("Enter: ")
    if a == '1':
        o = '0'
        while o != '5':
            print("\n-----TABLES-----")
            print("1) User\n2) Customer\n3) Driver\n4) Trip\n5) Return")
            b = input("Enter: ")
            if b != '5':
                show_db(b)
            o = b
    
    elif a == '2':
        o = '0'
        while o != '3':
            print("\n---Embedded SQL---")
            print("1) Get all users with mobile no. starting with '987'")
            print("2) Get the average rating of all drivers")
            print("3) Return")
            b = input("Enter: ")
            
            if b == '1':
                q = "select * from user where mobile_no like '987%'"
                cur.execute(q)
                res = cur.fetchall()
                for r in res:
                    print(r)
            
            elif b == '2':
                q = "select avg(ratings) from driver"
                cur.execute(q)
                res = cur.fetchone()
                print("Average driver rating: ", res[0])
            
            o = b

    elif a == '3':
        o = '0'
        while o != '5':
            print("\n---OLAP Queries---")
            print("1) Get the total number of trips by each driver")
            print("2) Get the total amount earned by each driver")
            print("3) Get the total distance travelled by each customer")
            print("4) Get the average rating for each car")
            print("5) Return")
            b = input("Enter: ")
            
            if b == '1':
                q = "select driver_id, count(*) as num_trips from trip group by driver_id"
                cur.execute(q)
                res = cur.fetchall()
                for r in res:
                    print(r)
            
            elif b == '2':
                q = "select driver_id, sum(total_amount) as total_earnings from trip group by driver_id"
                cur.execute(q)
                res = cur.fetchall()
                for r in res:
                    print(r)
            
            elif b == '3':
                q = "select customer_id, sum(distance) as total_distance from trip group by customer_id"
                cur.execute(q)
                res = cur.fetchall()
                for r in res:
                    print(r)
            
            elif b == '4':
                q = "select car_name, avg(ratings) as avg_rating from driver group by car_name"
                cur.execute(q)
                res = cur.fetchall()
                for r in res:
                    print(r)
            
            o = b
        
    elif a == '4':
        o = '0'
        while o != '7':
            print("\n---Triggers---")
            print("1) Inserting in 'driver' values (a, 111, 111, password1, Accord, 1111, 3.2)")
            print("2) Inserting in 'driver' values (b, 112, 112, password2, Accord, 1112, -1.4)")
            print("3) Inserting in 'driver' values (c, 113, 113, password3, Accord, 1113, 5.3)")
            print("4) Updating rating of customer with id 1 to 4")
            print("5) Updating rating of customer with id 1 to -0.5")
            print("6) Updating rating of customer with id 1 to 5.6")
            print("7) Return")
            b = input("Enter: ")
            
            if b == '1':
                q = "insert into driver values('a', 110, 111, 'password1', 'Accord', 1111, 3.2)"
                cur.execute(q)
                mydb.commit()
                q1 = "select * from driver"
                cur.execute(q1)
                res = cur.fetchall()
                for r in res:
                    print(r)
            
            elif b == '2':
                q = "insert into driver values('b', 110, 112, 'password2', 'Accord', 1112, -1.4)"
                cur.execute(q)
                res = cur.fetchone()
                print(res)
            
            elif b == '3':
                q = "insert into driver values('c', 110, 113, 'password3', 'Accord', 1113, 5.3)"
                cur.execute(q)
                res = cur.fetchone()
                print(res)
            
            elif b == '4':
                q = "update customer set ratings = 4 where user_id = 110"
                cur.execute(q)
                mydb.commit()
                q1 = "select * from customer"
                cur.execute(q1)
                res = cur.fetchall()
                for r in res:
                    print(r)
            
            elif b == '5':
                q = "update customer set ratings = -0.5 where user_id = 110"
                cur.execute(q)
                res = cur.fetchone()
                print(res)
            
            elif b == '6':
                q = "update customer set ratings = 5.6 where user_id = 110"
                cur.execute(q)
                res = cur.fetchone()
                print(res)
            
            o = b

    n = a