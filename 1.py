from pymysql import * 
def main():
    conn = connect(host='localhost',port=3306,user='root',password=1234,data_base ='database_learn',charset='utf-8' )
    cursor = conn.cursor()
    cursor.execute("select * from ")