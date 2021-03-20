import pymysql

def dbconnect(table_name: str):
    db = pymysql.connect(host="localhost", user="hackathon", password="Ey4kaiV0ooTh4quoFohnach5cher2ahV", db=table_name)
    cursor = db.cursor()
    return db, cursor

def get_user_information(uid: int):
    db, cursor = dbconnect("settings")
    cursor.execute("SELECT mail,avatar,name,phone,joke_account FROM user WHERE user_id=%s;", uid)
    try:
        data = cursor.fetchone()
        result = {
            "mail": data[0],
            "avatar": data[1],
            "name": data[2],
            "phone": data[3],
            "joke_account": data[4]
        }
    except:
        return "User does not exist!"
    return result