package beans;

public class BeanLoginJsp {
	
	private String login;
	private String senha;
	
	{
		this.login = "admin";
		this.senha = "admin";
	}
	
	public boolean podeLogar(String login, String senha) {
		return this.getLogin().equals(login)
				&& this.getSenha().equals(senha);
	}
	
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	

}
