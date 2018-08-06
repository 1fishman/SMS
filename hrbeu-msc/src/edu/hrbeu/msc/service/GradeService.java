package edu.hrbeu.msc.service;

import edu.hrbeu.msc.dao.GradeDao;
import edu.hrbeu.msc.db.DBhelper;

import java.sql.*;
import java.util.Map;

public class GradeService {
    private GradeDao gradeDao;
    private Connection conn;
    public GradeService() {
        try {
            conn = DBhelper.getConnection();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public boolean inputGrade(Map<String,Object> newGrade,String sub_no) throws Exception {

        String sql="select paper_grade_per from subject where sub_no="+sub_no;
        PreparedStatement pst = conn.prepareStatement(sql);
        ResultSet res=pst.executeQuery();
        float paper_grade_per = 0;
        while (res.next()){
            paper_grade_per=res.getFloat("paper_grade_per");
        }
        float usual_grade= (float) newGrade.get("usual_grade");
        float paper_grade= (float) newGrade.get("paper_grade");
        float final_grade=usual_grade+paper_grade*paper_grade_per;
        newGrade.put("final_grade",final_grade);
        gradeDao=new GradeDao();
        if(gradeDao.addGrade(newGrade)>0){
            return true;
        }else {
            return false;
        }
    }

    public boolean inputUpdateGrade(Map<String,Object> newGrade,String sub_no) throws Exception {

        String sql="select paper_grade_per from subject where sub_no="+sub_no;
        PreparedStatement pst = conn.prepareStatement(sql);
        ResultSet res=pst.executeQuery();
        float paper_grade_per = 0;
        while (res.next()){
            paper_grade_per=res.getFloat("paper_grade_per");
        }
        float usual_grade= (float) newGrade.get("usual_grade");
        float paper_grade= (float) newGrade.get("paper_grade");
        float final_grade=usual_grade+paper_grade*paper_grade_per;
        newGrade.put("final_grade",final_grade);
        gradeDao=new GradeDao();
        if(gradeDao.updateGrade(newGrade)>0){
            return true;
        }else {
            return false;
        }
    }
}
