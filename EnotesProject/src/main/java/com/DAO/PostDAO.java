package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class PostDAO {
    private Connection connn;

    public PostDAO(Connection connn) {
        this.connn = connn;
    }

    public boolean AddNotes(String ti, String co, int ui) {
        boolean f = false;
        try {
            String qu = "INSERT INTO post(title, content, id) VALUES(?,?,?)";
            PreparedStatement ps = connn.prepareStatement(qu);
            ps.setString(1, ti);
            ps.setString(2, co);
            ps.setInt(3, ui);

            int i = ps.executeUpdate();
            if (i > 0) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
