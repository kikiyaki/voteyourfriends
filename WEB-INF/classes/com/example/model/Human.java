package com.example.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;

public class Human {
    String name;
    int id=0;
    String cookieNameDB = "";
    double a, b, c, d, e, f, g, h, i, j, k, m, n;
    int count;


    static final String DB_URL = "jdbc:mysql://localhost:3306/DB?useSSL=false";
    static final String DRIVER = "com.mysql.jdbc.Driver";

    static final String USER = "root";
    static final String PASS = "root";


    public int[] setName(String name)                       //вставляет в таблицу users строки с именем,
            throws ClassNotFoundException, SQLException {   //id, куки и нулевым рейтингом, возвращает id и куки имя
        Connection connection = null;

        PreparedStatement preparedStatement = null;

        int cnId = 0;

        try {
            Class.forName(DRIVER);

            connection = getDBConnection();
			
			//PreparedStatement prepSt = connection.prepareStatement("SET NAMES 'utf8'");
			//prepSt.executeUpdate();

            Statement st = connection.createStatement();
            ResultSet resultSet = st.executeQuery("SELECT MAX(id) FROM users");     //получаем последний id
            while (resultSet.next()) {
                id = resultSet.getInt(1);
            }

            preparedStatement = connection.prepareStatement("INSERT INTO users" +
                    " (name, cookieName, a, b, c, d, e, f, g, h, i, j, k, m, n, count) VALUES (?, ?, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);");

           preparedStatement.setString(1, name);
		//  preparedStatement.setString(1, "керел");
            cnId =  (int) Math.round((id+123456789*Math.random()));
            preparedStatement.setString(2, Integer.toString(cnId));

            preparedStatement.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (preparedStatement != null) {
                preparedStatement.close();
            }

            if (connection != null) {
                connection.close();
            }
        }

        int[] ret = {id+1, cnId};
        return ret;
    }

    public String[] getRating (String id) throws ClassNotFoundException, SQLException {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            Class.forName(DRIVER);

            connection = DriverManager.getConnection(DB_URL, USER, PASS);

            Statement st = connection.createStatement();
            ResultSet resultSet = st.executeQuery("SELECT * FROM users WHERE ID ="+ id);
            while (resultSet.next()) {
                name = resultSet.getString(2);
                cookieNameDB = resultSet.getString(3);
                a = resultSet.getDouble(4);
                b = resultSet.getDouble(5);
                c = resultSet.getDouble(6);
                d = resultSet.getDouble(7);
                e = resultSet.getDouble(8);
				f = resultSet.getDouble(9);
				g = resultSet.getDouble(10);
				h = resultSet.getDouble(11);
				i = resultSet.getDouble(12);
				j = resultSet.getDouble(13);
				k = resultSet.getDouble(14);
				m = resultSet.getDouble(15); 
				n = resultSet.getDouble(16); 

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }

        }
        String[] res = {name, cookieNameDB, String.valueOf(a), String.valueOf(b),
                String.valueOf(c), String.valueOf(d), String.valueOf(e), String.valueOf(f),
                String.valueOf(g), String.valueOf(h), String.valueOf(i), String.valueOf(j),
                String.valueOf(k), String.valueOf(m), String.valueOf(n)};
        return res;
    }

    public String[] setRating(int id, int cnId, int a1, int b1, int c1, int d1, int e1,
	int f1, int g1, int h1, int i1, int j1, int k1, int m1, int n1)
    throws ClassNotFoundException, SQLException {
        Connection connection = null;

        PreparedStatement preparedStatement = null;

        String name = "";
        try {
            Class.forName(DRIVER);

            connection = DriverManager.getConnection(DB_URL, USER, PASS);

            Statement st = connection.createStatement();
            ResultSet resultSet = st.executeQuery("SELECT * FROM users WHERE ID="+(String.valueOf(id)));
            while (resultSet.next()) {
                name = resultSet.getString(2);
                a = resultSet.getDouble(4);
                b = resultSet.getDouble(5);
                c = resultSet.getDouble(6);
                d = resultSet.getDouble(7);
                e = resultSet.getDouble(8);
				f = resultSet.getDouble(9);
				g = resultSet.getDouble(10);
				h = resultSet.getDouble(11);
				i = resultSet.getDouble(12);
				j = resultSet.getDouble(13);
				k = resultSet.getDouble(14);
				m = resultSet.getDouble(15); 
				n = resultSet.getDouble(16); 
                count = resultSet.getInt(17);

            }
            count++;
            a = (a + a1)/count;
            b = (b + b1)/count;
            c = (c + c1)/count;
            d = (d + d1)/count;
            e = (e + e1)/count;
			f = (f + f1)/count;
            g = (g + g1)/count;
            h = (h + h1)/count;
            i = (i + i1)/count;
            j = (j + j1)/count;
			k = (k + k1)/count;
            m = (m + m1)/count;
            n = (n + n1)/count;

            preparedStatement = connection.prepareStatement("UPDATE users SET a="+a+", b="+b+", " +
                    "c="+c+", d="+d+", e="+e+", f="+f+", g="+g+", " +
                    "h="+h+", i="+i+", j="+j+", k="+k+", m="+m+", n="+n+", count="+count+" WHERE ID="+id);

            preparedStatement.executeUpdate();

            preparedStatement = connection.prepareStatement("INSERT INTO voting" +
                    " (cookieName, idVoting) VALUES ("+cnId+", "+id+");");

            preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (preparedStatement != null) {
                preparedStatement.close();
            }

            if (connection != null) {
                connection.close();
            }
        }
        String mass[] = {String.format("%.2f", a).replace(",", "."), String.format("%.2f", b).replace(",", "."), 
		String.format("%.2f", c).replace(",", "."), String.format("%.2f", d).replace(",", "."), 
		String.format("%.2f", e).replace(",", "."), String.format("%.2f", f).replace(",", "."), 
		String.format("%.2f", g).replace(",", "."), String.format("%.2f", h).replace(",", "."), 
		String.format("%.2f", i).replace(",", "."), String.format("%.2f", j).replace(",", "."), 
		String.format("%.2f", k).replace(",", "."),  
		String.format("%.2f", m).replace(",", "."), String.format("%.2f", n).replace(",", "."), 
										 name};
        
        return mass;
    }

	
	
	    public ArrayList<String> getVoting (String cookieName) throws ClassNotFoundException, SQLException {

        ArrayList<String> votings = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            Class.forName(DRIVER);

            connection = DriverManager.getConnection(DB_URL, USER, PASS);

            Statement st = connection.createStatement();
            ResultSet resultSet = st.executeQuery("SELECT * FROM voting WHERE cookieName ="+ cookieName);
            int i = 0;
            while (resultSet.next()) {
                votings.add(resultSet.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }

        }
        return votings;
    }


    public void createTables() throws ClassNotFoundException, SQLException {
        Connection connection = null;
        Statement statement = null;
        PreparedStatement preparedStatement = null;
        try {
            Class.forName(DRIVER);

            connection = DriverManager.getConnection(DB_URL, USER, PASS);

            statement = connection.createStatement();

            String CREATE_USERS = "CREATE TABLE users (" +
                    " id INTEGER AUTO_INCREMENT PRIMARY KEY, " +
                    " name VARCHAR(40), " +
                    " cookieName VARCHAR(20), " +
                    " a FLOAT(4,2), " +
                    " b FLOAT(4,2), " +
                    " c FLOAT(4,2), " +
                    " d FLOAT(4,2), " +
                    " e FLOAT(4,2), " +
					" f FLOAT(4,2), " +
                    " g FLOAT(4,2), " +
                    " h FLOAT(4,2), " +
                    " i FLOAT(4,2), " +
                    " j FLOAT(4,2), " +
					" k FLOAT(4,2), " +
                    " m FLOAT(4,2), " +
                    " n FLOAT(4,2), " +
                    " count INTEGER);";

            statement.executeUpdate(CREATE_USERS);

            String CREATE_VOTING = "CREATE TABLE voting (" +
                    " cookieName VARCHAR(20), " +
                    " idVoting INTEGER);";

            statement.executeUpdate(CREATE_VOTING);

           preparedStatement = connection.prepareStatement("INSERT INTO users" +
                    " (name, cookieName, a, b, c, d, e, f, g, h, i, j, k, m, n, " +
					"count) VALUES ('TEST', 'cookieName', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);");

            preparedStatement.executeUpdate();


        } finally {
            if (statement != null && preparedStatement != null) {
                statement.close();
                preparedStatement.close();
            }

            if (connection != null) {
                connection.close();
            }

        }
    }
	
	protected Connection getDBConnection()throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
        Properties properties=new Properties();
        properties.setProperty("user", USER);
        properties.setProperty("password", PASS);
        /*
          настройки указывающие о необходимости конвертировать данные из Unicode
	  в UTF-8, который используется в нашей таблице для хранения данных
        */
        properties.setProperty("useUnicode","true");
        properties.setProperty("characterEncoding","UTF-8");
        return(DriverManager.getConnection(DB_URL ,
	properties));
    }


}