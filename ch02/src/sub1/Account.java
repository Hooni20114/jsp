package sub1;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class Account {
	
	// Ư��(��� ����) - ĸ��ȭ �ؾ� �ȴ�.
	public String bank;
	public String id;
	public String name;
	public int money;
	
	// ������ - ��ü ���� �� �� ��������� �ʱ�ȭ�ϴ� �޼��� 
	public Account(String bank, String id, String name, int money) {
		this.bank = bank;
		this.id = id;
		this.name = name;
		this.money = money;
	}
	
	// ���(��� �޼���)
	public void deposit( int money ) {
		this.money += money;
	}
	
	public void withdraw( int money ) {
		this.money -= money;
	}
	
	

}
