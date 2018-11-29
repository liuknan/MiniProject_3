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
            print("123")
            db.close()


def import_AccountInfo(popular):
    db=pymysql.connect("127.0.0.1", "root", "lkn123456", "MiniProject 3")
    cursor = db.cursor()
    sql = "INSERT INTO TwitterAccount(AccountName,ImgNumber,MostPopular,time) VALUES(\'%s\',\'%d\', " \
          "\'%s\',\'%s\')" % (screen_name,ImgNumber,popular,datetime.datetime.now())

    try:
        cursor.execute(sql)
        db.commit()
    except:
            db.rollback()
            print("123")
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
                transactions = str(input("Please input your operations\n'Detect' or 'video'\n"
                                         "If you want to choose another account, type'out'\n"
                                         "If you want to exit, type 'exit\n"))
                if transactions == "out":
                    import_transactions()
                    restart_program()
                elif transactions == "exit":
                    import_transactions()
                    sys.exit()
                elif transactions == "Detect":
                    import_transactions()
                    popular=image_detection()
                    import_AccountInfo(popular)
                elif transactions == "video":
                    import_transactions()
                    video_output()
                else:
                    print("Wrong operation\n")
                    continue
