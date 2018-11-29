from miniproject_1 import *
import pymysql
import datetime

API_key = ""
API_secret_key = ""
access_token = ""
access_token_secret = ""


# Google API credential


os.environ["GOOGLE_APPLICATION_CREDENTIALS"]=''


def import_transactions():
    db=pymysql.connect("127.0.0.1", "root", "lkn123456", "MiniProject 3")
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
                    restart_program()
                elif transactions == "exit":
                    import_transactions()
                    sys.exit()
                elif transactions == "detect":
                    import_transactions()
                    popular=image_detection(screen_name)
                    import_AccountInfo(popular)
                elif transactions == "video":
                    import_transactions()
                    video_output()
                elif transactions == "search":
                    import_transactions()
                    m = str(input("e.g. T kobebryant or L basketball\n"))
                    move = m.split()
                    if m[0] == "T":
                        query_transactions(move[1])
                    if m[0] == "L":
                        query_Labels(move[1])

                else:
                    print("Wrong operation\n")
                    continue
