<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>

</head>
<body>

    
  <form method="post" action="insertMemberPro.jsp">
  <table>
    <tr>

       <td>
    <input type="checkbox" name="userok"  value="롱"> 롱 
	<input type="checkbox" name="userok"  value="미디엄"> 미디엄
	<input type="checkbox" name="userok"  value="숏"> 숏
	
	 <input type="checkbox" name="style"  value="커트"> 커트
	<input type="checkbox" name="style"  value="펌"> 펌
	<input type="checkbox" name="style"  value="염색"> 염색
	<input type="checkbox" name="style"  value="매직"> 매직
	
	<select name="sto_sel" onchange="getList(this.selectedIndex)">
	<option>시도선택</option>
	
	<option value="서울특별시">서울특별시</option>
	<option value="인천광역시">인천광역시</option>
	<option value="대전광역시">대전광역시</option>
	<option value="광주광역시">광주광역시</option>
	<option value="대구광역시">대구광역시</option>
	<option value="울산광역시">울산광역시</option>
	<option value="부산광역시">부산광역시</option>
	<option value="경기도">경기도</option>
	<option value="강원도">강원도</option>
	<option value="충청북도">충청북도</option>
	<option value="충청남도">충청남도</option>
	<option value="전라북도">전라북도</option>
	<option value="전라남도">전라남도</option>
	<option value="경상북도">경상북도</option>
	<option value="경상남도">경상남도</option>
	<option value="제주도">제주도</option>
	</select>
	
	<select name="sto_sel">
	
	<option>시군구 선택</option>
	
	</select>
		

	
	</td>
  </tr>
	 

  </table>
 
    <input type="submit" value="회원가입">

  </form>
  

</body>

</html>

 <script type="text/javascript">

var listText = new Array();

var listValue = new Array();

listText[0] = new Array('강남구',  '강동구',  '강북구',
        '강서구',  '관악구',  '광진구',  '구로구',  '금천구',
        '노원구',  '도봉구',  '동대문구',  '동작구',  '마포구',
        '서대문구',  '서초구',  '성동구',  '성북구',  '송파구',
        '양천구',  '영등포구',  '용산구',  '은평구',  '종로구',
        '중구',   '중랑구'); // 각 option의 text

listValue[0] = new Array('강남구',  '강동구',  '강북구',
        '강서구',  '관악구',  '광진구',  '구로구',  '금천구',
        '노원구',  '도봉구',  '동대문구',  '동작구',  '마포구',
        '서대문구',  '서초구',  '성동구',  '성북구',  '송파구',
        '양천구',  '영등포구',  '용산구',  '은평구',  '종로구',
        '중구',   '중랑구'); // 각 option의 value

listText[1] = new Array( "시군구선택", "계양구",  "남구",   "남동구",
        "동구",   "부평구",  "서구",   "연수구",  "중구",
        "강화군",  "옹진군");

listValue[1] = new Array("계양구",  "남구",   "남동구",
        "동구",   "부평구",  "서구",   "연수구",  "중구",
        "강화군",  "옹진군");

listText[2] = new Array("대덕구",  "동구",   "서구",
        "유성구",  "중구");

listValue[2] = new Array("대덕구",  "동구",   "서구",
        "유성구",  "중구");
        
listText[3] = new Array("광산구",  "남구",   "동구", 
        "북구",   "서구");

listValue[3] = new Array("광산구",  "남구",   "동구", 
        "북구",   "서구");
        
listText[4] = new Array("남구",   "달서구",  "동구",
        "북구",   "서구",   "수성구",  "중구",   "달성군");

listValue[4] = new Array("남구",   "달서구",  "동구",
        "북구",   "서구",   "수성구",  "중구",   "달성군");
listText[5] = new Array("남구",   "동구",   "북구",
        "중구",   "울주군");

listValue[5] = new Array("남구",   "동구",   "북구",
        "중구",   "울주군");
listText[6] = new Array("강서구",  "금정구",  "남구",
        "동구",   "동래구",  "부산진구",  "북구",   "사상구",
        "사하구",  "서구",   "수영구",  "연제구",  "영도구",
        "중구",   "해운대구",  "기장군");

listValue[6] = new Array("강서구",  "금정구",  "남구",
        "동구",   "동래구",  "부산진구",  "북구",   "사상구",
        "사하구",  "서구",   "수영구",  "연제구",  "영도구",
        "중구",   "해운대구",  "기장군");
        
listText[7] = new Array( "고양시",  "과천시",  "광명시",
        "광주시",  "구리시",  "군포시",  "김포시",  "남양주시",
        "동두천시",  "부천시",  "성남시",  "수원시",  "시흥시",
        "안산시",  "안성시",  "안양시",  "양주시",  "오산시",
        "용인시",  "의왕시",  "의정부시",  "이천시",  "파주시",
        "평택시",  "포천시",  "하남시",  "화성시",  "가평군",
        "양평군",  "여주군",  "연천군");

listValue[7] = new Array( "고양시",  "과천시",  "광명시",
        "광주시",  "구리시",  "군포시",  "김포시",  "남양주시",
        "동두천시",  "부천시",  "성남시",  "수원시",  "시흥시",
        "안산시",  "안성시",  "안양시",  "양주시",  "오산시",
        "용인시",  "의왕시",  "의정부시",  "이천시",  "파주시",
        "평택시",  "포천시",  "하남시",  "화성시",  "가평군",
        "양평군",  "여주군",  "연천군");
listText[8] = new Array("강릉시",  "동해시",  "삼척시",
        "속초시",  "원주시",  "춘천시",  "태백시",  "고성군",
        "양구군",  "양양군",  "영월군",  "인제군",  "정선군",
        "철원군",  "평창군",  "홍천군",  "화천군",  "횡성군");

listValue[8] = new Array("강릉시",  "동해시",  "삼척시",
        "속초시",  "원주시",  "춘천시",  "태백시",  "고성군",
        "양구군",  "양양군",  "영월군",  "인제군",  "정선군",
        "철원군",  "평창군",  "홍천군",  "화천군",  "횡성군");
                
listText[9] = new Array("제천시",  "청주시",  "충주시",
        "괴산군",  "단양군",  "보은군",  "영동군",  "옥천군",
        "음성군",  "증평군",  "진천군",  "청원군");

listValue[9] = new Array("제천시",  "청주시",  "충주시",
        "괴산군",  "단양군",  "보은군",  "영동군",  "옥천군",
        "음성군",  "증평군",  "진천군",  "청원군");
listText[10] = new Array("계룡시",  "공주시",  "논산시",
        "보령시",  "서산시",  "아산시",  "천안시",  "금산군",
        "당진군",  "부여군",  "서천군",  "연기군",  "예산군",
        "청양군",  "태안군",  "홍성군");

listValue[10] = new Array("계룡시",  "공주시",  "논산시",
        "보령시",  "서산시",  "아산시",  "천안시",  "금산군",
        "당진군",  "부여군",  "서천군",  "연기군",  "예산군",
        "청양군",  "태안군",  "홍성군");
listText[11] = new Array("군산시",  "김제시",  "남원시",
        "익산시",  "전주시",  "정읍시",  "고창군",  "무주군",
        "부안군",  "순창군",  "완주군",  "임실군",  "장수군",  "진안군");

listValue[11] = new Array("군산시",  "김제시",  "남원시",
        "익산시",  "전주시",  "정읍시",  "고창군",  "무주군",
        "부안군",  "순창군",  "완주군",  "임실군",  "장수군",  "진안군");
        
listText[12] = new Array("광양시",  "나주시",  "목포시",
        "순천시",  "여수시",  "강진군",  "고흥군",  "곡성군",
        "구례군",  "담양군",  "무안군",  "보성군",  "신안군",
        "영광군",  "영암군",  "완도군",  "장성군",  "장흥군",
        "진도군",  "함평군",  "해남군",  "화순군");

listValue[12] = new Array("광양시",  "나주시",  "목포시",
        "순천시",  "여수시",  "강진군",  "고흥군",  "곡성군",
        "구례군",  "담양군",  "무안군",  "보성군",  "신안군",
        "영광군",  "영암군",  "완도군",  "장성군",  "장흥군",
        "진도군",  "함평군",  "해남군",  "화순군");
        
listText[13] = new Array("군산시",  "김제시",  "남원시",
        "익산시",  "전주시",  "정읍시",  "고창군",  "무주군",
        "부안군",  "순창군",  "완주군",  "임실군",  "장수군",  "진안군");

listValue[13] = new Array("군산시",  "김제시",  "남원시",
        "익산시",  "전주시",  "정읍시",  "고창군",  "무주군",
        "부안군",  "순창군",  "완주군",  "임실군",  "장수군",  "진안군");
listText[14] = new Array("경산시",  "경주시",  "구미시",
        "김천시",  "문경시",  "상주시",  "안동시",  "영주시",
        "영천시",  "포항시",  "고령군",  "군위군",  "봉화군",
        "성주군",  "영덕군",  "영양군",  "예천군",  "울릉군",
        "울진군",  "의성군",  "청도군",  "청송군",  "칠곡군");

listValue[14] = new Array("경산시",  "경주시",  "구미시",
        "김천시",  "문경시",  "상주시",  "안동시",  "영주시",
        "영천시",  "포항시",  "고령군",  "군위군",  "봉화군",
        "성주군",  "영덕군",  "영양군",  "예천군",  "울릉군",
        "울진군",  "의성군",  "청도군",  "청송군",  "칠곡군");
listText[15] = new Array("거제시",  "김해시",  "마산시",
        "밀양시",  "사천시",  "양산시",  "진주시",  "진해시",
        "창원시",  "통영시",  "거창군",  "고성군",  "남해군",
        "산청군",  "의령군",  "창녕군",  "하동군",  "함안군",
        "함양군",  "합천군");

listValue[15] = new Array("거제시",  "김해시",  "마산시",
        "밀양시",  "사천시",  "양산시",  "진주시",  "진해시",
        "창원시",  "통영시",  "거창군",  "고성군",  "남해군",
        "산청군",  "의령군",  "창녕군",  "하동군",  "함안군",
        "함양군",  "합천군");
listText[16] = new Array( "서귀포시",  "제주시",  "남제주군",  "북제주군");

listValue[16] = new Array( "서귀포시",  "제주시",  "남제주군",  "북제주군");
function getList(sel_id) {

   var sel = document.getElementsByName('sto_sel');

   var sel_id = sel_id - 1;

   if(sel_id>=0) {

      sel[1].options.length = listText[sel_id].length;

      for(i=0;i

<listText[sel_id].length;i++) {

         sel[1].options[i] = new Option(listText[sel_id][i], listValue[sel_id][i]);

      }

   } else {

      sel[1].options.length = 1;

      sel[1].options[0].text = "------";

      sel[1].options[0].value = 0;

   }

}

</script>
