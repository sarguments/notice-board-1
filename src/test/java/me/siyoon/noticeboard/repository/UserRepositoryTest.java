package me.siyoon.noticeboard.repository;

import me.siyoon.noticeboard.domain.User;
import org.junit.Assert;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
@FixMethodOrder(value = MethodSorters.NAME_ASCENDING)
public class UserRepositoryTest {
    @Autowired
    private UserRepository userRepository;

    @Test
    public void test1_유저_id로_조회하기() {
        Long id = 1L;
        User user = userRepository.findById(id).get();

        Assert.assertEquals(id, user.getId());
    }

    @Test
    public void test2_유저_한명_삽입하기() {
        User user = User.builder().email("user@naver.com")
                .password("1234")
                .nickName("김유저").build();
        User save = userRepository.save(user);

        Assert.assertEquals(user.getEmail(), save.getEmail());
    }

    @Test
    public void test3_유저_한명_정보수정하기() {
        Long id = 1L;
        String newNickName = "관리자2";

        User user1 = userRepository.findById(id).get();

        user1.setNickName(newNickName);
        userRepository.saveAndFlush(user1);

        User user2 = userRepository.findById(id).get();

        Assert.assertEquals(newNickName, user2.getNickName());
    }

    @Test
    public void test4_유저_한명_삭제하기() {
        List<User> 삭제전List = userRepository.findAll();

        userRepository.deleteById(1L);

        List<User> 삭제후List = userRepository.findAll();

        Assert.assertEquals(삭제전List.size(), 삭제후List.size() + 1);
    }
}
