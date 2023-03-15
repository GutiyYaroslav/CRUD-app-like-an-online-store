package com.example.buysell.config;


import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@EnableWebSecurity
@RequiredArgsConstructor
@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)


public class SecurityConfig {

//    private final CustomUserDetailsService userDetailsService;


    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests((requests) -> requests
                        .requestMatchers("/", "/product/**", "/images/**", "/registration", "/user/**").permitAll()
                        .anyRequest().authenticated()
                )
                .formLogin((form) -> form
                        .loginPage("/login")
                        .permitAll()
                )
                .logout((logout) -> logout.permitAll());

        return http.build();
    }

    //    @Bean
//    public AuthenticationManager authenticationManager(AuthenticationManagerBuilder auth ) throws Exception {
//        return auth.userDetailsService(userDetailsService)
//                .passwordEncoder(passwordEncoder()).and().build();
//    }
//    @Bean
//    public AuthenticationManager authenticationManager(AuthenticationManagerBuilder auth) throws Exception {
//        return auth.userDetailsService(userDetailsService)
//                .passwordEncoder(passwordEncoder()).and().build();
//    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(8);
    }


}
