package com.example.springreactjs.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name="employees")
@Data
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;

    @Column(name = "first_name")
    private String FirstName;
    @Column(name = "last_name")
    private String LastName;
    @Column(name = "mail_id")
    private String EmailId;
}
