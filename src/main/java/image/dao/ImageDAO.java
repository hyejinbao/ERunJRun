package image.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import image.bean.ImageDTO;

public class ImageDAO {
	private static ImageDAO instance = new ImageDAO();
	private SqlSessionFactory sqlSessionFactory;

	public ImageDAO() {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static ImageDAO getInstance() {
		return instance;
	}

	public boolean writeImage(ImageDTO imageDTO) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		boolean check = false;
		int su = sqlSession.insert("imageSQL.writeImage", imageDTO);
		if (su > 0) check = true;
		sqlSession.commit();
		sqlSession.close();
		return check;
	}

	public List<ImageDTO> imageListByType(int startNum, int pageSize, int imageType) {
	    SqlSession sqlSession = sqlSessionFactory.openSession();
	    HashMap<String, Object> map = new HashMap<>();
	    map.put("startNum", startNum);
	    map.put("pageSize", pageSize);
	    map.put("imageType", imageType);  // imageType 추가
	    List<ImageDTO> list = sqlSession.selectList("imageSQL.imageListByType", map);
	    sqlSession.close();
	    return list;
	}
	public int getTotalImagesByType(int imageType) {
	    SqlSession sqlSession = sqlSessionFactory.openSession();
	    HashMap<String, Object> map = new HashMap<>();
	    map.put("imageType", imageType);  // imageType 추가
	    int totalImages = sqlSession.selectOne("imageSQL.getTotalImagesByType", map);
	    sqlSession.close();
	    return totalImages;
	}
}
