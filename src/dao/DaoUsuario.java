package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import beans.BeanCursoJsp;
import beans.BeanLoginJsp;
import connections.SingleConnection;

public class DaoUsuario {
	
	private Connection connection;
	
	public DaoUsuario() {
		
		connection = SingleConnection.getConnection();
		
	}
	
	public void salvar(BeanLoginJsp beanLoginJsp) {
		try {
			String sql = "insert into usuario(login, senha) values (?, ?)";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, beanLoginJsp.getLogin());
			statement.setString(1, beanLoginJsp.getSenha());
			statement.execute();
			connection.commit();
		} catch (Exception e) {
		
			try {
				
				connection.rollback();
				
			} catch (Exception t) {
				// TODO: handle exception
			}
		}
	}
}
