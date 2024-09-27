package member.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import member.bean.MemberDTO;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;

public class MemberDAO {
    private SqlSessionFactory sqlSessionFactory;
        private static MemberDAO memberDAO = new MemberDAO(); // 싱글톤
        public static MemberDAO getInstance() {
            return memberDAO;
        }
        public MemberDAO() {
            try {
               Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
               sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
            } catch (IOException e) {
               throw new RuntimeException(e);
            }
        }

    public int memberWrite(MemberDTO memberDTO) {
        int result = 0;
        SqlSession sqlSession = sqlSessionFactory.openSession();
        result = sqlSession.insert("memberSQL.memberWrite", memberDTO);
        sqlSession.commit();
        sqlSession.close();
        return result;
    }
    
    public MemberDTO loginMember(String id, String pwd) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		System.out.println("dao id = " + id);
		System.out.println("dao pwd = " + pwd);
		MemberDTO memberDTO = new MemberDTO();
		HashMap<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		memberDTO = sqlSession.selectOne("memberSQL.loginMember", map);
		sqlSession.close();
		return memberDTO;
	}

    public boolean isExistId(String id) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
            Integer count = sqlSession.selectOne("memberSQL.isExistId", id);
            return count != null && count > 0; // count가 0보다 크면 true 반환
        }
    }

}
