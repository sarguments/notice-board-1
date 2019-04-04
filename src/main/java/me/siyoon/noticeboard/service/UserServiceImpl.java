package me.siyoon.noticeboard.service;

import lombok.RequiredArgsConstructor;
import me.siyoon.noticeboard.domain.Role;
import me.siyoon.noticeboard.domain.User;
import me.siyoon.noticeboard.domain.enums.Authority;
import me.siyoon.noticeboard.dto.UserForm;
import me.siyoon.noticeboard.repository.RoleRepository;
import me.siyoon.noticeboard.repository.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService{
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final PasswordEncoder passwordEncoder;

    @Override
    public User getUser(String email) {
        User user = userRepository.findUserByEmail(email);
        validateUser(user);
        return user;
    }

    @Override
    public User getUser(Long id) {
        User user = userRepository.findUserById(id);
        validateUser(user);
        return user;
    }

    private void validateUser(User user) {
        if (user == null) {
            throw new IllegalArgumentException("User 조회 실패");
        }
    }

    @Override
    public User signUp(UserForm userForm) {
        User user = convertFormToUser(userForm);
        encodePassword(user);
        setRoles(user);

        return userRepository.save(user);
    }

    private User convertFormToUser(UserForm userForm) {
        return User.builder()
                .email(userForm.getEmail())
                .nickName(userForm.getNickName())
                .password(userForm.getPassword())
                .build();
    }

    private void encodePassword(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
    }

    private void setRoles(User user) {
        Set<Role> roles = new HashSet<>();
        roles.add(roleRepository.findRoleByAuthority(Authority.USER));
        user.setRoles(roles);
    }
}
