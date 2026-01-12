/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author VNT
 */
public class UserDAO {
    ArrayList<UserDTO> list = new ArrayList<>();
    
    public UserDAO(){
        list.add(new UserDTO("admin", "admin", "Nguyen Van A"));
        list.add(new UserDTO("user1", "user1", "Tran Van B"));
        list.add(new UserDTO("user2", "user2", "Le Thi C"));
        list.add(new UserDTO("user3", "user3", "Do Nhat D"));
    }
    
    public UserDTO searchById(String id){
        for (UserDTO dTO : list) {
            if(dTO.getUserName().equalsIgnoreCase(id)){
                return dTO;
            }
        }return null;
    }
    
    public UserDTO login(String useName, String passWord){
        UserDTO user = searchById(useName);
        if(user != null && user.getPassWord().equals(passWord)){
            return user;
        }else
            return null;
    }
}
