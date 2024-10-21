package board.bean;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter

public class BoardDTO {
	
	private int seq;          
    private String id;                
    private String email;     
    private String subject; 
    private String content;   
    private String reply;             
    private int hit;       
    private String image1;
    private Date logtime;   

}
