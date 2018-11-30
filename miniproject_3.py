from miniproject_1 import *
import pymysql
import datetime
from pymongo import MongoClient


def mongo_transactions():
    conn = MongoClient('127.0.0.1', 27017)
    db = conn.MiniProject3
    my_set = db.transactions
    my_set.insert_one({"UserName":user_name,"AccountName":screen_name,"time":datetime.datetime.now(),"transactions"
    :transactions})
    conn.close()


def import_transactions():
    db = pymysql.connect("127.0.0.1", "root", "lkn123456", "MiniProject 3")
    cursor = db.cursor()
    sql = "INSERT INTO transactions(UserName,AccountName,time,transactions) VALUES(\'%s\',\'%s\', " \
          "\'%s\',\'%s\')" % (user_name,screen_name,datetime.datetime.now(),transactions)

    try:
        cursor.execute(sql)
        db.commit()
    except:
            db.rollback()
            print("error")
            db.close()


def query_mongo_tran(name):
    conn = MongoClient('127.0.0.1', 27017)
    db = conn.MiniProject3
    my_set = db.transactions
    for i in my_set.find({"AccountName":name}):
        print(i)
    conn.close()


def query_transactions(name):
    db = pymysql.connect("127.0.0.1", "root", "lkn123456", "MiniProject 3")
    cursor = db.cursor()
    sql = "SELECT * FROM transactions WHERE AccountName = '%s'" %(name)
    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            UserName = row[1]
            AccountName = row[2]
            time = row[3]
            transactions = row[4]
            print("UserName: '%s', AccountName: '%s', Time: '%s', transactions='%s'\n" % \
                  (UserName, AccountName, time, transactions))
    except:
        print("Error: unable to fetch data")
    db.close()

def query_Labels(name):
    db = pymysql.connect("127.0.0.1", "root", "lkn123456", "MiniProject 3")
    cursor = db.cursor()
    sql = "SELECT * FROM Labels WHERE Label = '%s'" %(name)
    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            TwitterAccount = row[1]
            Label = row[2]
            print("TwitterAccount: '%s', Label: '%s'" % \
                  (TwitterAccount, Label))
    except:
        print("Error: unable to fetch data")
    db.close()

def query_mongo_Twitter(account):
    conn = MongoClient('127.0.0.1', 27017)
    db = conn.MiniProject3
    my_set = db.TwitterAccount
    for i in my_set.find({"AccountName":account}) :
        print(i)
    conn.close()


def query_TwitterAccount(account):
    db = pymysql.connect("127.0.0.1", "root", "lkn123456", "MiniProject 3")
    cursor = db.cursor()
    sql = "SELECT * FROM TwitterAccount WHERE AccountName = '%s'" %(account)
    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        print(results)
        for row in results:
            AccountName = row[1]
            ImgNumber = row[2]
            most_popular = row[3]
            time = row[4]
            print("AccountName: '%s', ImgNumber: '%d', Most_Popular: '%s', time='%s'\n" % \
                  (AccountName, ImgNumber, most_popular, time))
    except:
        print("Error: unable to fetch data")
    db.close()


def mongo_AccountInfo(popular):
    conn = MongoClient('127.0.0.1', 27017)
    db = conn.MiniProject3
    my_set = db.TwitterAccount
    my_set.update({"AccountName": screen_name}, {"$set": {"AccountName":screen_name, "ImgNumber":ImgNumber,
                                                          "MostPopular":popular,"time":datetime.datetime.now()}}, True)
    conn.close()


def import_AccountInfo(popular):
    db=pymysql.connect("127.0.0.1", "root", "lkn123456", "MiniProject 3")
    cursor = db.cursor()
    try:
        sql = "INSERT INTO TwitterAccount(AccountName,ImgNumber,MostPopular,time) VALUES(\'%s\',\'%d\', " \
              "\'%s\',\'%s\')" % (screen_name,ImgNumber,popular,datetime.datetime.now())
        cursor.execute(sql)
        db.commit()
    except:
        try:
            print("goal")
            sql = "UPDATE TwitterAccount SET ImgNumber = '%d', MostPopular = '%s', time = '%s' " \
                  "WHERE AccountName='%s'" % (ImgNumber,popular,datetime.datetime.now(),screen_name)
            cursor.execute(sql)
            db.commit()
        except:
            db.rollback()
            print("error")
            db.close()


if __name__ == '__main__':
    while (True):
        user_name = str(input('Input User Name\n'))
        screen_name = str(input('Please input the screen name:\n if you want to exit, input exit\n'))
        if screen_name == 'exit':
            print('end')
            sys.exit()
        else:
            try:
                get_images(screen_name)
            except tweepy.error.TweepError as err:
                if err.api_code == 215:
                    print('Bad authentication data,please fill in your API Key\n')
                    sys.exit()
                else:
                    print("The screen name is invalid!")
                    restart_program()
            else:
                try:
                    ImgNumber=read_json()
                except KeyError:
                    print("There is no images in the account you chose")
                    restart_program()
            while (True):
                transactions = str(input("Please input your operations\n type 'detect' or 'video'\n"
                                         "If you want to search transactions or Labels, type 'search' then "
                                         "'T' for transactions or 'L' for Labels\n"
                                         "If you want to choose another account, type'out'\n"
                                         "If you want to exit, type 'exit\n"))
                if transactions == "out":
                    import_transactions()
                    mongo_transactions()
                    restart_program()
                elif transactions == "exit":
                    import_transactions()
                    mongo_transactions()
                    sys.exit()
                elif transactions == "detect":
                    import_transactions()
                    mongo_transactions()
                    popular=image_detection(screen_name)
                    import_AccountInfo(popular)
                    mongo_AccountInfo(popular)
                elif transactions == "video":
                    import_transactions()
                    mongo_transactions()
                    video_output()
                elif transactions == "search":
                    import_transactions()
                    mongo_transactions()
                    m = str(input("e.g. MT kobebryant or SL basketball\n"))
                    move = m.split()
                    if move[0] == "ST":
                        query_transactions(move[1])
                    elif move[0] == "MT":
                        query_mongo_tran(move[1])
                    elif move[0] == "SL":
                        query_Labels(move[1])
                    elif move[0] == "ML":
                        query_mongo_Twitter(move[1])

                else:
                    print("Wrong operation\n")
                    continue
