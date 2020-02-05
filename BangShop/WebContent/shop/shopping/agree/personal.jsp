<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>guide.jsp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
    <style>
        div.jumbotron {
            background-color: white;
            margin-bottom: 0;
            height: 20px;
        }

        h1 {
            font-style: italic;
            text-align: center;
        }

		.w3-lobster{
			font-family: "Lobster", serif;
			text-align: center;
		}
    </style>
</head>

<body>

    <div class="container" style="margin-bottom: 10px; padding-bottom: 40px;">
        <div class="jumbotron">
            <h1 class="w3-lobster">
                <a class="w3-xxxlarge" href="<%=request.getContextPath()%>/shop/shopping/bangMain.jsp" id="logo" 
                style="color: #3F0099; font-size: 33pt;">
                    BangShop
                </a>
            </h1>
        </div>

        <h5 style="text-align: left; margin-bottom: 40px; margin-top:50px; color: #3F0099;"><b>개인정보 처리방침</b></h5>

        <p style="color: gray;">
쇼핑몰은 다음과 같은 개인정보보호 방침을 명시하고 있습니다.<br>
읽으시고 쇼핑몰이 귀하의 개인정보를 어떻게 처리하는지를 이해하시기 바랍니다.<br>
본 보호정책은 정보통신부에서 지정한 개인정보 보호지침 제7조에 의거하여 작성되었으며, 수시로 내용이 변경될 수 있으므로 정기적으로 방문하셔서 확인해 보시기 바랍니다.<br><br>
▶ 쇼핑몰은 정통부 시행 개인정보보호지침(제22조 1항)에 의거 관리책임자를 아래와 같이 지정합니다.<br>
&nbsp;&nbsp;직 위 : 개인정보 보호책임자(CPO:Chief Privacy Officer)<br>
&nbsp;&nbsp;이 름 : 방기승<br>
&nbsp;&nbsp;전 화 : 010-1234-5656<br>
&nbsp;&nbsp;E-mail : bang@naver.com<br><br>
개인정보 관리 책임자는 쇼핑몰 회원 여러분의 개인정보를 보호하고, 유출을 방지하는 책임자로서 회원들이 안심하고 쇼핑몰을 이용할 수 있도록 도와 드립니다.<br>
개인정보보호에 대해 의견을 제시하거나 관련 문의사항이 있으면, 위의 연락처로 연락하시면 됩니다.<br><br>
▶ 개인정보의 수집목적 및 이용<br>
쇼핑몰이 개인정보를 수집하는 목적은 쇼핑몰 사이트를 통하여 회원님께 최대한으로 최적화되고 맞춤화된 서비스를 제공해 주기 위해서입니다.<br>
쇼핑몰은 회원님께서 쇼핑몰에서 재화 및 서비스 상품을 주문하고 결제하고, 또한 기타 회원님을 위한 각종 서비스를 제공하기 위해서 필요한 최소한의 정보를 수집하고 있습니다.<br>
개인 정보의 기본 수집 목적 이외에 다른 용도로 이용하거나 회원의 동의 없이 제3자에게 회원 정보를 제공할 수 없으며, 회원 정보의 분식, 도난, 유출, 변조가 발생하고 
이에 따라 회원이 피해를 입을 경우 이에 대한 모든 책임은 '쇼핑몰'이 집니다.<br><br>
▶ 개인정보 수집 항목 및 방법<br>
쇼핑몰은 이용자의 정보 수집시 구매계약 이행에 필요한 최소한의 정보를 수집하되, 다음의 사항을 필수로 하고, 그 외 사항은 선택사항으로 합니다.<br>
&nbsp;&nbsp;1. 성명<br>
&nbsp;&nbsp;2. 아이디<br>
&nbsp;&nbsp;3. 비밀번호<br>
&nbsp;&nbsp;4. 주소<br>
&nbsp;&nbsp;5. 전화번호<br>
이 이외에 회원 가입시 고객께서 원하시는 경우에 한하여 추가 정보를 선택하여 제공하실 수 있도록 되어 있으며 일부 물품 및 서비스 상품에 대한 주문 및 접수시에 
고객이 원하는 정확한 주문 내용을 파악하여 원활한 주문 및 결재와 배송을 위하여 추가적인 정보를 요구하고 있습니다.<br><br>
▶ 개인정보의 수정 및 보유 기간<br>
회원님께서 쇼핑몰 회원으로서 서비스를 받는 동안은 회원님의 정보를 쇼핑몰이 지속적으로 보유합니다.<br>
그러나, 회원의 개인 정보는 회원이 이 메일이나 전화로 삭제를 요청할 경우 쇼핑몰은 회원님의 정보를 삭제 합니다.<br><br>
▶ 개인정보의 공유 및 제공<br>
쇼핑몰 회원의 회원 개인 정보는 원칙적으로 제 3 기관 및 제 3 자에게 제공 될 수 없으며 쇼핑몰이 회원에게 편의를 제공하기 위하여 특정 회사에 개인 정보를 제공하고자 할 경우에는 
반드시 회원께 해당되는 합당한 절차를 통하여 동의를 구하도록 되어 있습니다.<br>
단, 쇼핑몰 이용 약관 6조에 따라 구입한 상품을 배송하기 위해 배송 업체에 알려주는 경우, 고객의 제세 공과금(원천징수, 세금 포함)관련 해당기관에 통보해야 하는 경우, 
특정 개인을 식별할 수 없는 학술, 통계를 위한 목적일 경우는 예외가 됩니다.<br><br>
▶ 어린이의 개인정보 보호<br>
쇼핑몰은 온라인 환경에서 만 14세 미만 어린이의 개인정보를 보호하는 것 역시 중요한 일이라고 생각하고 있습니다. 쇼핑몰은 만 14세 미만의 어린이들을 회원으로 가입할 수 없게 하고 있습니다.<br>
즉, 만 14세 미만의 어린이들은 쇼핑몰에서 회원 자격의 서비스를 받을 수 없습니다.<br><br>
▶ 금융관련 정보 보호정책<br>
쇼핑몰은 회원님들의 개인적인 금융관련 정보를 보호하는 것이야 말로 가장 중요하다고 생각합니다.<br>
쇼핑몰은 회원님들의 금융관련 정보를 절대 매매하거나 대여하지 않습니다. 쇼핑몰은 금융정보나 금융과 관련된 서비스에 대해서 협력사들에게 이용자 통계치 자료를 제공할 수 있으나, 
여기에는 귀하를 식별할 수 있는 정보는 포함시키지 않습니다.<br><br>
▶ 쿠키(cookie)의 운용 및 활용<br>
쇼핑몰은 회원 인증을 위하여 Cookie 방식을 이용하고 있습니다. 그러나 이러한 쿠키의 사용은 로그 인시 사용자가 회원임을 인증하기 위한 수단으로만 사용 할 뿐, 
개인의 정보를 활용하여 쇼핑몰의 정책에 도움을 주기위한 방법으로 파일 쿠키를 사용하지는 않습니다. 이와 더불어서 PC의 로그 아웃시에 자동으로 PC에 저장되지 않고 삭제되도록 되어있으므로 
공공장소나 타인이 사용할 수 있는 PC를 사용하 실 경우에는 로그인 후 서비스 이용이 끝나시면 반드시 로그 아웃을 해주시기 바랍니다.<br><br>
▶ 개인정보의 상실,오용,도용,변경을 막기 위한 보안 예방책<br>
쇼핑몰은 개인 정보는 비밀번호에 의해 보호되고 있습니다. 귀하는 비밀번호를 그 누구에게도 알려주어서는 안됩니다. 쇼핑몰은 절대 불필요한 전화나 전자우편으로 귀하의 비밀번호를 묻거나 하지 않습니다. 
또한 쇼핑몰 서비스를 이용한 후에는 반드시 귀하의 계정을 종료하시고, 웹 브라우져의 창을 닫아 주시기 바랍니다. 이것은 귀하가 다른 사람과 컴퓨터를 공유하여 사용하고 있거나, 인터넷 카페, pc방, 
도서관 같은 공공 장소에서 컴퓨터를 사용하는 경우 다른 사람이 귀하의 개인정보 및 통신 내용을 함부로 볼 수 없도록 하기 위한 것입니다.<br><br>
▶ 개인정보를 위해 그밖에 알아야 할 사항<br> 
온라인 상에서(예를 들면, 게시판이나 이메일을 통해서 또는 채팅을 통해서) 귀하가 자발적으로 제공하는 개인정보는 다른 사람들이 수집하여 사용할 수 있음을 항상 유념해 주시기 바랍니다. 
공개적으로 접속할 수 있는 온라인 상에서 개인정보를 게재하는 경우, 다른 사람들로부터 원하지 않는 메시지를 받게 될 수도 있습니다.<br>
회원님의 ID나 비밀번호에 대한 비밀을 유지할 책임은 오로지 귀하에게 있습니다. 따라서, 온라인상에 접속해 있을 경우에는 각별히 주의해 주시기 바랍니다.<br>
개인정보에관해 상담이나 문의가 필요한 경우에는 한국정보보호센터내의 정보보호 상담실이나 개인정보 침해 신고센터 및 개인정보 유출 방지 및 프라이버시 보호 캠페인으로 문의 하시기 바랍니다.<br>
		</p>
    </div>
</body>

</html>