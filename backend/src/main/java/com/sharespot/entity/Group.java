package com.sharespot.entity;

import lombok.*;
import lombok.experimental.SuperBuilder;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@SuperBuilder
@AllArgsConstructor
@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name="group_table")
public class Group {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(columnDefinition = "INT UNSIGNED")
    private Integer groupId;

    private Integer groupManager;

    private String groupName;
    private String groupContent;
    private Integer groupLimit;
    private Integer groupGender;
    private Integer groupAgeMin;
    private Integer groupAgeMax;
    private String  groupImage;
    private String  groupNick;


}
