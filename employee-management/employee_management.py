import mysql.connector
from mysql.connector import errorcode

# Database configuration
config = {
    'user': 'root',          # your MySQL username
    'password': 'password',  # your MySQL password
    'host': '127.0.0.1',
    'database': 'employee_db'
}

def create_connection():
    try:
        conn = mysql.connector.connect(**config)
        return conn
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Invalid credentials")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)
        return None

def create_department(name):
    conn = create_connection()
    cursor = conn.cursor()
    cursor.execute("INSERT INTO Departments (name) VALUES (%s)", (name,))
    conn.commit()
    cursor.close()
    conn.close()

def create_employee(name, email, phone, department_id, salary):
    conn = create_connection()
    cursor = conn.cursor()
    cursor.execute("INSERT INTO Employees (name, email, phone, department_id, salary) VALUES (%s, %s, %s, %s, %s)", 
                   (name, email, phone, department_id, salary))
    conn.commit()
    cursor.close()
    conn.close()

def fetch_employees():
    conn = create_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM Employees")
    rows = cursor.fetchall()
    for row in rows:
        print(row)
    cursor.close()
    conn.close()

def update_employee(employee_id, name=None, email=None, phone=None, department_id=None, salary=None):
    conn = create_connection()
    cursor = conn.cursor()
    if name:
        cursor.execute("UPDATE Employees SET name = %s WHERE employee_id = %s", (name, employee_id))
    if email:
        cursor.execute("UPDATE Employees SET email = %s WHERE employee_id = %s", (email, employee_id))
    if phone:
        cursor.execute("UPDATE Employees SET phone = %s WHERE employee_id = %s", (phone, employee_id))
    if department_id:
        cursor.execute("UPDATE Employees SET department_id = %s WHERE employee_id = %s", (department_id, employee_id))
    if salary:
        cursor.execute("UPDATE Employees SET salary = %s WHERE employee_id = %s", (salary, employee_id))
    conn.commit()
    cursor.close()
    conn.close()

def delete_employee(employee_id):
    conn = create_connection()
    cursor = conn.cursor()
    cursor.execute("DELETE FROM Employees WHERE employee_id = %s", (employee_id,))
    conn.commit()
    cursor.close()
    conn.close()

if __name__ == "__main__":
    # Example usage
    create_department("HR")
    create_department("Engineering")

    create_employee("Alice", "alice@example.com", "1234567890", 1, 50000)
    create_employee("Bob", "bob@example.com", "0987654321", 2, 60000)

    print("Employees in the company:")
    fetch_employees()
    
    print("Updating employee with ID 1")
    update_employee(1, phone="1111111111", salary=55000)
    
    print("Employees in the company after update:")
    fetch_employees()
    
    print("Deleting employee with ID 2")
    delete_employee(2)
    
    print("Employees in the company after deletion:")
    fetch_employees()
