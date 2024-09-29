package image.bean;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class ImageDTO {
	private int seq;			//글번호
	@NonNull
	private String id;			//글쓴이
	@NonNull
	private String content;		//이미지 내용
	@NonNull
	private Integer likeImage;  //이미지 좋아요
	@NonNull
	private String image;		//파일 이름
	@NonNull
	private Integer imageType;	//이미지 타입(1 크루모집, 2 오운완)
}
