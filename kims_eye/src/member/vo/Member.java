package member.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private String userId;
	private String password;
	private String name;
	private String birthDate;
	private String num1;
	private String num2;
	private String num3;
	private String email;
	private String sms_consent; // sms 발송 동의
	private String email_consent; // email 발송 동의
	private String regDate; // 가입일
	
	public Member(String userId, String name, String password, String birthDate, String num1, String num2, String num3, String email,
			String sms_consent, String email_consent) {
		this.userId = userId;
		this.name = name;
		this.password = password;
		this.birthDate = birthDate;
		this.num1 = num1;
		this.num2 = num2;
		this.num3 = num3;
		this.email = email;
		this.sms_consent = sms_consent;
		this.email_consent = email_consent;
	}
	
	
}
