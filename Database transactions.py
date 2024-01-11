import mysql.connector
import time
import os
import random

mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = '12Orion34',
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

def search_db(n):
    if n == '1':
        id = input("Enter User Id: ")
        q = "select * from user where user_id = " + id
        cur.execute(q)
        result = cur.fetchone()
    
    elif n == '2':
        id = input("Enter Customer Id: ")
        q = "select * from customer where customer_id = " + id
        cur.execute(q)
        result = cur.fetchone()
    
    elif n == '3':
        id = input("Enter Driver Id: ")
        q = "select * from driver where driver_id = " + id
        cur.execute(q)
        result = cur.fetchone()
    
    elif n == '4':
        id = input("Enter Trip Id: ")
        q = "select * from trip where trip_id = " + id
        cur.execute(q)
        result = cur.fetchone()
    
    print(result)
    
def ccheck(name):
    q = "select customer_name from customer where customer_name = '"+ name + "'"
    cur.execute(q)
    r = cur.fetchone()
    s = str(r)
    if s != "None":
        return 1
    else:
        return 0

def dcheck(name):
    q = "select driver_name from driver where driver_name = '"+ name + "'"
    cur.execute(q)
    r = cur.fetchone()
    s = str(r)
    if s != "None":
        return 1
    else:
        return 0

def remove(r):
    s = str(r)
    s = s.replace("(", "")
    s = s.replace(")", "")
    s = s.replace("'", "")
    s = s.replace(",", "")
    return s

w1 = '0'
while w1 != '2':
    os.system('cls')
    
    print("__________WELCOME__________")
    time.sleep(1)
    print("\n\n\n")
    print("1) Login")
    print("2) Exit")
    inp = input("Enter: ")

    if inp == '1':
        os.system('cls')
        print("_____Login____\n\n")
        user = input("User: ")
        print("\nLoading...")
        time.sleep(1)

        if (user == 'admin'):
            n = '0'
            while n <= '4':
                os.system('cls')
                
                print("_____Hello Admin_____\n\n")
                print("-----MENU-----")
                print("1) Database Tables")
                print("2) Search")
                print("3) Update Ratings")
                print("4) Return")

                a = input("Enter: ")
                
                if a == '1':
                    o = '0'
                    while o != '5':
                        os.system('cls')
                        
                        print("-----TABLES-----")
                        print("1) User\n2) Customer\n3) Driver\n4) Trip\n5) Return")
                        b = input("Enter: ")
                        if b != '5':
                            show_db(b)
                            input("\nPress Enter to continue...")
                        o = b
                
                elif a == '2':
                    o = '0'
                    while o != '5':
                        os.system('cls')
                        
                        print("-----Search-----")
                        print("1) User\n2) Customer\n3) Driver\n4) Trip\n5) Return")
                        b = input("Enter: ")
                        if b != '5':
                            search_db(b)
                            input("\nPress Enter to continue...")
                        o = b

                elif a == '3':
                    o = '0'
                    while o != '3':
                        os.system('cls')
                        
                        print("-----Update Ratings-----")
                        print("1) Customer\n2) Driver\n3) Return")
                        b = input("Enter: ")
                        if b == '1':
                            cid = input("Enter Customer Id: ")
                            
                            q = "select * from customer where customer_id = " + cid
                            cur.execute(q)
                            r = cur.fetchone()
                            print(r)
                            
                            print("\n")
                            cr = input("Enter new rating: ")
                            
                            q = "update customer set ratings = " + cr
                            cur.execute(q)
                            mydb.commit()
                            
                            print("Rating updated")
                            input("\nPress Enter to continue...")
                        
                        elif b == '2':
                            did = input("Enter Driver Id: ")
                            
                            q = "select * from driver where driver_id = " + did
                            cur.execute(q)
                            r = cur.fetchone()
                            print(r)
                            
                            print("\n")
                            dr = input("Enter new rating: ")
                            
                            q = "update driver set ratings = " + dr
                            cur.execute(q)
                            mydb.commit()
                            
                            print("Rating updated")
                            input("\nPress Enter to continue...")
                        o = b
                
                elif a == '4':
                    break
                n = a

        
        elif (user == 'customer'):
            os.system('cls')
                
            print("_____Hello Customer_____\n\n")
            cname = input("Enter name: ")
            print("\nLoading...")
            time.sleep(1)
            if (ccheck(cname)):
                n = '0'
                while n <= '3':   
                    os.system('cls')
                    print("_____Hello " + cname + "_____")
                    print("\n\n")
                    print("-----MENU-----")
                    print("1) Customer Details")
                    print("2) Book trip")
                    print("3) Return")
                    
                    a = input("Enter: ")
                    
                    
                    q = "select customer_id from customer where customer_name = '" + cname + "'"
                    cur.execute(q)
                    r = cur.fetchone()
                    cid = remove(r)
                        
                    q = "select ratings from customer where customer_name = '" + cname + "'"
                    cur.execute(q)
                    r = cur.fetchone()
                    crate = remove(r)
                    
                    if a == '1':
                        print("-----Details-----")    
                        print("\n\nName: ", cname)
                        print("Id: ", cid)
                        print("Rating: ", crate)
                        input("\nPress Enter to continue...")
                    
                    elif a == '2':
                        print("-----Booking Trip-----")
                        start = input("Enter pickup locaion: ")
                        end = input("Enter drop location: ")
                        print("Loading...")
                        
                        q = "select trip_id from trip where trip_id = (select max(trip_id) from trip)"
                        cur.execute(q)
                        r = cur.fetchone()
                        tpid = remove(r)
                        tid = int(tpid)
                        tid += 1
                        
                        q = "select driver_id from driver where driver_id = (select max(driver_id) from driver)"
                        cur.execute(q)
                        r = cur.fetchone()
                        maxid = remove(r)
                        maxdid = int(maxid)
                        did = random.randint(1, maxdid)
                        
                        dist = random.uniform(1, 50)
                        dist = round(dist,2)
                        
                        amount = random.uniform(100, 500)
                        amount = round(amount, 2)
                        
                        q = "select driver_name from driver where driver_id = " + str(did) + ""
                        cur.execute(q)
                        r = cur.fetchone()
                        dname = remove(r)
                        
                        q = "insert into trip values(" + str(tid) + ", " + str(did) + ", " + str(cid) + ", '" + start + "', '" + end + "', " + str(amount) + ", " + str(dist) + ")"
                        cur.execute(q)
                        mydb.commit()

                        time.sleep(1)
                        print("\n\nTrip Booked!!!")
                        print("\n\n-----Trip Details-----")
                        print("\n")
                        print("Trip Id: ", tid)
                        print("\nCustomer Name: ", cname)
                        print("Customer Id: ", cid)
                        print("\nDriver Name: ", dname)
                        print("Driver Id: ", did)
                        print("\nPickup Location: ", start)
                        print("Drop Location: ", end)
                        print("Distance: ", dist)
                        print("\nTotal Amount: ", amount)
                        input("\nPress Enter to continue...")
                    
                    elif a == '3':
                        break
                    n = a

            else:
                print("\nERROR!!!")
                print("No such name recorded\n")
                x = input("Would you like to register(y/n): ")
                
                if x == 'n':
                    continue
                
                elif x == 'y':
                    time.sleep(0.5)
                    os.system('cls')
                    
                    print("-----Sign Up-----\n\n")
                    cname = input("Enter name: ")
                    cpass = input("Enter password: ")
                    
                    q = "select customer_id from customer where customer_id = (select max(customer_id) from customer)"
                    cur.execute(q)
                    r = cur.fetchone()
                    cpid = remove(r)
                    cid = int(cpid)
                    cid += 1
                    
                    q = "insert into customer values('" + cname + "', 110, " + str(cid) + ", '" + cpass + "', 4.0)"
                    cur.execute(q)
                    mydb.commit()
                    
                    print("\nSign Up complete!!!\n")
                    print("-----Details-----")
                    print("Customer Name: ", cname)
                    print("Customer Id: ", cid)
                    print("Customer Rating: 4.0")
                    input("\nPress Enter to continue...")
                
        elif (user == 'driver'):
            os.system('cls')
                
            print("_____Hello Driver_____\n\n")
            dname = input("Enter name: ")
            print("\nLoading...")
            time.sleep(1)
            if (dcheck(dname)):
                n = '0'
                while n <= '2':   
                    os.system('cls')
                    print("_____Hello " + dname + "_____")
                    print("\n\n")
                    print("-----MENU-----")
                    print("1) Driver Details")
                    print("2) Return")
                    
                    a = input("Enter: ")
                    
                    q = "select driver_id from driver where driver_name = '" + dname + "'"
                    cur.execute(q)
                    r = cur.fetchone()
                    did = remove(r)
                        
                    q = "select ratings from driver where driver_name = '" + dname + "'"
                    cur.execute(q)
                    r = cur.fetchone()
                    drate = remove(r)
                    
                    q = "select car_name from driver where driver_name = '" + dname + "'"
                    cur.execute(q)
                    r = cur.fetchone()
                    carname = remove(r)
                    
                    q = "select car_id from driver where driver_name = '" + dname + "'"
                    cur.execute(q)
                    r = cur.fetchone()
                    carid = remove(r)
                    
                    if a == '1':
                        print("-----Details-----")
                        print("\n\nName: ", dname)
                        print("Id: ", did)
                        print("Car Name: ", carname)
                        print("Car Id: ", carid)
                        print("Rating: ", drate)
                        input("\nPress Enter to continue...")
                    
                    elif a == '2':
                        break
                    
                    n = a
            
            else:
                print("\nERROR!!!")
                print("No such name recorded\n")
                x = input("Would you like to register(y/n): ")
                
                if x == 'n':
                    continue
                
                elif x == 'y':
                    time.sleep(0.5)
                    os.system('cls')
                    
                    print("-----Sign Up-----\n\n")
                    dname = input("Enter name: ")
                    dpass = input("Enter password: ")
                    carname = input("Enter car name: ")
                    carid = input("Enter car id: ")
                    
                    
                    
                    q = "select driver_id from driver where driver_id = (select max(driver_id) from driver)"
                    cur.execute(q)
                    r = cur.fetchone()
                    dpid = remove(r)
                    did = int(dpid)
                    did += 1
                    
                    
                    
                    q = "insert into driver values('" + dname + "', 110, " + str(did) + ", '" + dpass + "', '" + carname + "', " + carid + ", 4.0)"
                    cur.execute(q)
                    mydb.commit()
                    
                    print("\nSign Up complete!!!\n")
                    print("-----Details-----")
                    print("Driver Name: ", dname)
                    print("Driver Id: ", did)
                    print("Car Name: ", carname)
                    print("Car Id: ", carid)
                    print("Driver Rating: 4.0")
                    
                
    w1 = inp