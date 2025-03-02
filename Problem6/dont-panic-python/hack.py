from cs50 import SQL

db = SQL("sqlite:///dont-panic.db")
db.execute(
    """
    UPDATE "users"
    SET "password" = 'Hacked!'
    WHERE "username" = 'admin';
    """
)
