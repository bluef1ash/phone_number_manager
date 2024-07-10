package com.github.phonenumbermanager;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.AllArgsConstructor;

@SpringBootTest
@AllArgsConstructor
public class DataSourceTest {
    private DataSource dataSource;

    @Test
    public void testDataSource() throws SQLException {
        try (Connection connection = dataSource.getConnection()) {
            String catalog = connection.getCatalog();
            System.out.println("Connected to database: " + catalog);
        }
    }
}
