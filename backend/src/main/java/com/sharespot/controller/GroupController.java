package com.sharespot.controller;

import com.sharespot.entity.Group;
import com.sharespot.entity.GroupLite;
import com.sharespot.entity.GroupUser;
import com.sharespot.entity.User;
import com.sharespot.repo.GroupLiteRepository;
import com.sharespot.repo.GroupUserRepository;
import com.sharespot.service.GUService;
import com.sharespot.service.GroupService;
import com.sharespot.service.UserService;

import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/group")
@AllArgsConstructor
public class GroupController {

    @Autowired
    private GroupService groupService;
    private final GroupLiteRepository groupLiteRepository;
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private GroupUserRepository guRepository;
    @Autowired
    private GroupRepository groupRepository;

    @Autowired
    private GUService guService;

    @GetMapping("/userGroup/{userId}")
    @ApiOperation(value = "유저의 모임목록 검색", notes = "userId를 넣으면 <b>가입한 그룹 목록</b>을 반환한다.")
    public ResponseEntity<List<Optional<Group>>> getUserGroup(@PathVariable int userId){
        List<GroupUser> groupUsers = guRepository.findByUserId(userId);
        List<Optional<Group>> group = new ArrayList<>();

        for (GroupUser gu : groupUsers){
            group.add(groupRepository.findById(gu.getGroupId()));
        }

        return new ResponseEntity<>(group, HttpStatus.OK);
    }

    @GetMapping
    @ApiOperation(value = "그룹목록", notes = "<b>그룹 전체 목록</b>을 반환한다.")
    public ResponseEntity<List<Group>> getAllGroups(){
        List<Group> groups = groupService.findAllGroup();
        return new ResponseEntity<>(groups, HttpStatus.OK);
    }

    @GetMapping("{gid}")
    @ApiOperation(value = "그룹", notes = "해당 그룹id의 <b>그룹</b>을 반환한다.")
    public ResponseEntity<Optional<Group>> getGroup(@PathVariable int gid){
        Optional<Group> group = groupService.findByGroupId(gid);
        return new ResponseEntity<>(group, HttpStatus.OK);
    }

    @PostMapping
    @ApiOperation(value = "그룹작성", notes = "<b>그룹</b>을 작성한다.")
    public ResponseEntity<Integer> createGroup(@RequestBody Group group){
        Group groupEntity = Group.builder()
                .groupManager(group.getGroupManager())
                .groupName(group.getGroupName())
                .groupContent(group.getGroupContent())
                .groupLimit(group.getGroupLimit())
                .groupGender(group.getGroupGender())
                .groupAgeMin(group.getGroupAgeMin())
                .groupAgeMax(group.getGroupAgeMax())
                .groupImage(group.getGroupImage())
                .groupNick(group.getGroupNick())
                .build();
        groupService.createGroup(groupEntity);
        return new ResponseEntity<Integer>(1, HttpStatus.OK);
    }

    @DeleteMapping("{gid}")
    @ApiOperation(value = "그룹삭제", notes = "해당 <b>그룹</b>을 삭제한다.")
    public ResponseEntity<Integer> deleteGroup(@PathVariable int gid){
        return new ResponseEntity<Integer>(groupService.deleteGroup(gid), HttpStatus.OK);
    }

    @PutMapping("{gid}")
    @ApiOperation(value = "그룹수정", notes = "해당 <b>그룹</b>을 수정한다.")
    public ResponseEntity<Integer> updateGroup(@RequestBody Group group, @PathVariable int gid){
        Group groupEntity = Group.builder()
        		.groupManager(group.getGroupManager())
                .groupName(group.getGroupName())
                .groupContent(group.getGroupContent())
                .groupLimit(group.getGroupLimit())
                .groupGender(group.getGroupGender())
                .groupAgeMin(group.getGroupAgeMin())
                .groupAgeMax(group.getGroupAgeMax())
                .groupImage(group.getGroupImage())
                .groupNick(group.getGroupNick())
                .build();

        int result = groupService.updateGroup(gid, groupEntity);

        return new ResponseEntity<Integer>(result, HttpStatus.OK);

    }
    
    @GetMapping("members/{gid}")
    @ApiOperation(value = "그룹 멤버 확인", notes = "그룹 현재 참가자들 확인")
    public ResponseEntity<List<GroupUser>> GUList(@PathVariable int gid){
    	
    	List<GroupUser> guList = guRepository.findByGroupId(gid);
    	
    	return new ResponseEntity<List<GroupUser>>(guList,HttpStatus.OK);
    	
    }
    
    @PostMapping("{gid}/{userId}")
    @ApiOperation(value = "그룹 참가", notes = "해당 그룹에 참가")
    public ResponseEntity<GroupUser> joinGroup(@PathVariable int gid, @PathVariable int userId){
    	
    	Optional<User> user  = userService.getUser(userId);
    	User userEntity = user.get();
    	
    	GroupUser gu = GroupUser.builder().groupId(gid).userId(userEntity.getUser_id()).userNick(userEntity.getNickname()).build();
    	
    	GroupUser savedGu = guRepository.save(gu);
    	
    	return new ResponseEntity<GroupUser>(savedGu,HttpStatus.OK);
    	
    }
    
    @DeleteMapping("{gid}/{userId}")
    @ApiOperation(value = "그룹 탈퇴", notes = "해당 그룹에서 탈퇴")
    public ResponseEntity<Integer> exitGroup(@PathVariable int gid, @PathVariable int userId){
    	
    	int result = 0;
    	
    	try {
    		guService.deleteJoin(userId, gid);
    		result = 1;
    	}catch (Exception e) {
			// TODO: handle exception
		}
    	
    	return new ResponseEntity<Integer>(result,HttpStatus.OK);
    	
    }
    
    @GetMapping("/search/{word}")
    @ApiOperation(value = "그룹 검색", notes = "그룹 이름으로 검색")
    public ResponseEntity<List<GroupLite>> searchGroup(@PathVariable String word){
    	
    	List<GroupLite> searchList = groupLiteRepository.findByGroupNameContaining(word);
    	
    	return new ResponseEntity<List<GroupLite>>(searchList,HttpStatus.OK);
    	
    }

}
