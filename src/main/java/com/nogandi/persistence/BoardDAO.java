package com.nogandi.persistence;

import java.util.List;

import com.nogandi.domain.BoardVO;
import com.nogandi.domain.Criteria;

public interface BoardDAO {

	public void create(BoardVO vo) throws Exception;
	public BoardVO read(Integer bno) throws Exception;
	public void update(BoardVO vo) throws Exception;
	public void delete(Integer bno) throws Exception;
	public List<BoardVO> listAll() throws Exception;
	public List<BoardVO> listPage(int page) throws Exception;
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
}
