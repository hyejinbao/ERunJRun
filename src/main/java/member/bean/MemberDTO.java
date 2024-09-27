package member.bean;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class MemberDTO {
	@NonNull
    private String id;
	@NonNull
    private String name;
	@NonNull
    private String pwd;
    private String email1;
    private String email2;
    private String birth;
    private int gender;
    private int admin;
}
