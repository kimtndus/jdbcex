package org.zerock.dao;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.zerock.jdbcex.dao.TodoDAO;
import org.zerock.jdbcex.domain.TodoVO;

import java.time.LocalDate;
import java.util.List;

public class TodoDAOTest {

    private TodoDAO todoDAO;


    @BeforeEach
    //현재 테스트 클래스의 각 @Test 메서드 전에 주석이 달린 메서드가
    //실행되어야 함을 알린다.
    public void ready(){
        todoDAO = new TodoDAO();
    }

    @Test
    public void testTime() throws Exception {
        System.out.println("현재 시간 테스트~~~"+todoDAO.getTime());
    }

    @Test
    public void testInsert() throws Exception {
        TodoVO vo=TodoVO.builder().title("제목테스트1").dueDate(LocalDate.of(2023,11,10)).build();

        todoDAO.insert(vo);
    }


    @Test
    public void testList() throws Exception {

        List<TodoVO> list = todoDAO.selectAll();

        list.forEach(vo -> System.out.println(vo));

    }

    @Test
    public void testSelectOne() throws Exception {

        Long tno = 3L; //반드시 존재하는 번호를 이용

        TodoVO vo = todoDAO.selectOne(tno);

        System.out.println("해당 글 번호 조회한 결과 : "+vo);
    }


    @Test
    public void testUpdateOne() throws Exception {
        TodoVO todoVO = TodoVO.builder()
                .tno(1L)
                .title("Sample Title...")
                .dueDate(LocalDate.of(2021,12,31))
                .finished(true)
                .build();

        todoDAO.updateOne(todoVO);

    }


}
