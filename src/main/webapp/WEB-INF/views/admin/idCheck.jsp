<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC_KR">
	<title>Title</title>
	<script>
	function checkID()
	{
	      var id = document.regist.uid.value;
	      if( id == '' )
	      {
	            alert('아이디를 입력하세요');
	            return;
	      }   
	      
	      var url ='id_check?id=' + id;
	      
	      window.open(url, '',  'width=300, height=350, left=0, top=0');
	}
	</script>
</head>
<body>
 
    <form name="func">
            <input onclick="disableID()" type="hidden" name="disable_id" />
      </form>
 
      <form name="regist">
            <table align="center">
                  <tr>
                        <td colspan="3"><hr noshade="noshade" /></td>
                  </tr>
                  <tr>
                        <td>아이디</td>
                        <td><input onkeyup="enableID()" type="text" name="uid" /></td>
                        <td><input onclick="checkID()" type="button" name="checker" value="중복확인" /></td>
                  </tr>
            </table>
      </form>
</body>
</html>