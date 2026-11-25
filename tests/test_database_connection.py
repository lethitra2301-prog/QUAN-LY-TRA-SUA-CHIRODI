
from app.database import get_connection


try:
    connection = get_connection()
    cursor = connection.cursor()

    print("Ket noi SQL Server thanh cong!")

    cursor.execute("SELECT DB_NAME()")
    database_name = cursor.fetchone()[0]

    print("Database hien tai:", database_name)

    cursor.execute("""
        SELECT TABLE_NAME
        FROM INFORMATION_SCHEMA.TABLES
        WHERE TABLE_TYPE = 'BASE TABLE'
        ORDER BY TABLE_NAME
    """)

    tables = cursor.fetchall()

    print("\nDanh sach cac bang:")

    for table in tables:
        print(table[0])

    cursor.close()
    connection.close()

except Exception as error:
    print("Loi ket noi:", error)
