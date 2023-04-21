package JDBC01;

import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumnModel;

class SelectForm extends JFrame implements ActionListener{
	
	MemberDao mdao = MemberDao.getInstance();
	String [][] data;
	JTable jtb;
	SelectForm(){
		
		ArrayList<MemberDto> list = mdao.selectMember();
		data = new String[list.size()][9];
		for(int i = 0; i < list.size(); i++) {
			data[i][0] = String.valueOf(list.get(i).getMembernum());
			data[i][1] = list.get(i).getName();
			data[i][2] = list.get(i).getPhone();
			data[i][3] = list.get(i).getBirthday();
			data[i][4] = String.valueOf(list.get(i).getBpoint());
			data[i][5] = list.get(i).getJoindate();
			data[i][6] = String.valueOf(list.get(i).getAge());
			data[i][7] = list.get(i).getGender();
		}
		
		DefaultTableModel model = new DefaultTableModel();
		jtb = new JTable(model);
		
		model.addColumn("회원번호");
		model.addColumn("성명");
		model.addColumn("전화번호");
		model.addColumn("생년월일");
		model.addColumn("포인트");
		model.addColumn("가입일");
		model.addColumn("나이");
		model.addColumn("성별");
		for(int i = 0; i < list.size(); i++) model.addRow(data[i]);
		
		JScrollPane jsp = new JScrollPane(jtb);
		JButton btn = new JButton("새로고침");
		btn.addActionListener(this);
		
		DefaultTableCellRenderer dtcr1 = new DefaultTableCellRenderer();
		dtcr1.setHorizontalAlignment(SwingConstants.CENTER);
		
		TableColumnModel tcm = jtb.getColumnModel();
		tcm.getColumn(0).setCellRenderer(dtcr1);
		tcm.getColumn(1).setCellRenderer(dtcr1);
		tcm.getColumn(2).setCellRenderer(dtcr1);
		tcm.getColumn(3).setCellRenderer(dtcr1);
		tcm.getColumn(4).setCellRenderer(dtcr1);
		tcm.getColumn(5).setCellRenderer(dtcr1);
		tcm.getColumn(6).setCellRenderer(dtcr1);
		tcm.getColumn(7).setCellRenderer(dtcr1);
		
		jtb.getColumnModel().getColumn(0).setMaxWidth(60);
		jtb.getColumnModel().getColumn(0).setMinWidth(60);
		jtb.getColumnModel().getColumn(0).setWidth(60);
		
		jtb.getColumnModel().getColumn(1).setMaxWidth(80);
		jtb.getColumnModel().getColumn(1).setMinWidth(80);
		jtb.getColumnModel().getColumn(1).setWidth(80);
		
		jtb.getColumnModel().getColumn(2).setMaxWidth(150);
		jtb.getColumnModel().getColumn(2).setMinWidth(150);
		jtb.getColumnModel().getColumn(2).setWidth(150);
		
		jtb.getColumnModel().getColumn(3).setMaxWidth(80);
		jtb.getColumnModel().getColumn(3).setMinWidth(80);
		jtb.getColumnModel().getColumn(3).setWidth(80);
		
		jtb.getColumnModel().getColumn(4).setMaxWidth(60);
		jtb.getColumnModel().getColumn(4).setMinWidth(60);
		jtb.getColumnModel().getColumn(4).setWidth(60);
		
		jtb.getColumnModel().getColumn(5).setMaxWidth(100);
		jtb.getColumnModel().getColumn(5).setMinWidth(100);
		jtb.getColumnModel().getColumn(5).setWidth(100);
		
		jtb.getColumnModel().getColumn(6).setMaxWidth(60);
		jtb.getColumnModel().getColumn(6).setMinWidth(60);
		jtb.getColumnModel().getColumn(6).setWidth(60);
		
		jtb.getColumnModel().getColumn(7).setMaxWidth(60);
		jtb.getColumnModel().getColumn(7).setMinWidth(60);
		jtb.getColumnModel().getColumn(7).setWidth(60);
		
		Container container = getContentPane();
		container.setLayout(new BorderLayout());
		container.add(jsp, BorderLayout.CENTER);
		container.add(btn, BorderLayout.SOUTH);
		
		setTitle("테이블 박스 실습");
		setSize(800, 300);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		
		ArrayList<MemberDto> list = mdao.selectMember();
		
		DefaultTableModel model=(DefaultTableModel)jtb.getModel();
		if(list.size() != model.getRowCount()) {
			String [] record = new String[8];
			model.addRow(record);
		}
		for(int i = 0; i < list.size(); i++) {
			jtb.setValueAt(String.valueOf(list.get(i).getMembernum()), i, 0);
			jtb.setValueAt(list.get(i).getName(), i, 1);
			jtb.setValueAt(list.get(i).getPhone(), i, 2);
			jtb.setValueAt(list.get(i).getBirthday(), i, 3);
			jtb.setValueAt(String.valueOf(list.get(i).getBpoint()), i, 4);
			jtb.setValueAt(list.get(i).getJoindate(), i, 5);
			jtb.setValueAt(String.valueOf(list.get(i).getAge()), i, 6);
			jtb.setValueAt(list.get(i).getGender(), i, 7);
		}
		
	}
	
}

public class MemberSelect {

	public static void main(String[] args) {
		
		new SelectForm();
	}

}
