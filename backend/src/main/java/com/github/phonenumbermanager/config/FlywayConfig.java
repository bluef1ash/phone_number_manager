package com.github.phonenumbermanager.config;

import org.flywaydb.core.Flyway;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.github.phonenumbermanager.constant.SystemConstant;

@Configuration
public class FlywayConfig implements ApplicationListener<ApplicationReadyEvent> {
    private static final Logger log = LoggerFactory.getLogger(FlywayConfig.class);
    @Value("${spring.datasource.url}")
    private String baseUrl;
    @Value("${DATABASE_NAME}")
    private String databaseName;
    @Value("${spring.datasource.username}")
    private String username;
    @Value("${spring.datasource.password}")
    private String password;

    @Override
    public void onApplicationEvent(ApplicationReadyEvent event) {
        try {
            Flyway flyway = Flyway.configure().dataSource(baseUrl, username, password).load();
            flyway.getConfiguration().getDataSource().getConnection()
                .prepareStatement("CREATE DATABASE IF NOT EXISTS " + databaseName).execute();
            flyway = Flyway.configure()
                .dataSource(baseUrl + databaseName + SystemConstant.DATABASE_URL_SUFFIX, username, password).load();
            flyway.migrate();
        } catch (Exception e) {
            log.error("Flyway 初始化失败", e);
        }
    }

    /**
     * 初始化 flyway
     *
     * @return flyway 实例
     */
    @Bean
    public Flyway flyway() {
        return Flyway.configure().dataSource(baseUrl + databaseName, username, password).load();
    }
}
