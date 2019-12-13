package conn;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public final class MSSQLConnection {

    
    public static Connection getConnection() {

        Connection conn = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection("jdbc:sqlserver://An:1433;databaseName=db_LTM;user=sa;password=123;");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public boolean execute(String strQuery) throws SQLException {
        Connection conn = null;
        try {
            conn = getConnection();
            Statement st = conn.createStatement();
            st.execute(strQuery);

        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        } finally {
            conn.close();
        }
        return true;
    }

    public ResultSet query(String strSQL) throws Exception {
        Connection conn = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            Statement st = conn.createStatement();
            rs = st.executeQuery(strSQL);
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());

        } finally {

        }
        return rs;
    }
}

