<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.screen_con{
		padding: 40px;
	}
	.mtb40{
		margin-top: 40px;
		margin-bottom: 40px;
	}
	.w60p{
		width: 60%;
		margin: 0 auto;
	}
	.is_band{
		padding: 16px 0;
	}
	.l_con{
		border-color: #d8d7dc;
		border: 1px solid #f5f6f8;
		border-radius: 20px;
		box-sizing: border-box;
		overflow: hidden;
		padding: 0 16px;
	}
	.l_item{
		border-bottom: none;
		border-top: none;
		cursor: auto;
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 27px;
		position: relative;
	}
	.box_title{
		color: #b4b4b4;
	}
	.box_r{
		max-width: 50%;
		word-break: break-all;
	}
	.fnt_s20{
		font-size: 2rem;
	}
	.con_row{
		display: flex;
		align-items: center;
		justify-content: center;
	}
	.plan_wrap{
		flex-basis: 220px;
		padding: 10px;
	}
	.plan_layout{
		position: relative;
		padding: 8px;
		box-sizing: border-box;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		box-shadow: 0 4px 8px 2px rgba(0,0,0,.1);
		width: 350px;
  		height: 200px;
	}
	.is_main{
		height: 80px;
		display: flex;
		align-items: center;
		justify-content: center;
		padding-bottom: 10px;
	}
	.box_icon{
		flex-basis: 40%;
		padding: 8px;
		box-sizing: border-box;
	}
	.box_info{
		font-weight: 700;
		padding: 8px;
		box-sizing: border-box;
	}
	.cnt{
		font-size: 1.4rem;
	}
	.price{
		font-size: 1.4rem;
	}
	.box_but{
		height: 60px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.but{
		box-shadow: 0 2px 8px 0 rgba(82,213,221,.5);
		border-color: #35d9d7;
		background: #35d9d7;
		color: #fff;
		border-radius: 100px;
		line-height: 2;
		box-sizing: border-box;
		padding: 8px 16px;
		font-size: 1.0rem;
		width: 160px;
		cursor: pointer;
		margin: 4px;
		vertical-align: middle;
		align-items: center;
		display: inline-flex;
		justify-content: center;
		height: 50px;
	}
</style>

</head>
<body>

<div class="screen_con">
	<div>
		<h1 style="color: #575757; font-weight: 700; font-size: 2.0rem; margin-bottom: 0;">
			포인트 구매하기
		</h1>
		<h3 style="font-size: 1.3rem; font-weight: 700; color: #575757; margin-bottom: 0;">
			한꺼번에 구입하면 더 저렴합니다
		</h3>
	</div>
	<div>
		<div class="mtb40">
			<div class="w60p">
				<div class="is_band">
					<div class="l_con">
						<div class="l_item">
							<div class="box_title" style="font-size: 1.3rem;">
								남은 좋아요
							</div>
							<div class="box_r">
								<span class="fnt_s20">
									${cashuser.goodcnt}
								</span>
								개
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="mtb40">
			<div class="con_row">
				<c:forEach var="cash1" items="${cash1}">
					<form action="cashcheck.shop?id=${cashuser.id}&cnt=${cash1.cashcnt}&price=${cash1.cashprice}" method="get">
					<input type="hidden" name="cnt" value="${cash1.cashcnt}">
					<input type="hidden" name="price" value="${cash1.cashprice}">
					<input type="hidden" name="id" value="${cashuser.id}">
					<div class="plan_wrap">
						<div class="plan_layout">
							<div class="is_main">
								<div class="box_icon">
									<img src="https://static-kr-pairs.akamaized.net/public/images/app/content/plan/point/normal/lp/dt/coin_point_10.png" style="width: 100%;">
								</div>
								<div class="box_info">
									<div class="cnt">
										${cash1.cashcnt}개
									</div>
									<div class='price'>
										<span style="font-size: 2rem;">${cash1.cashprice}</span>원
									</div>
								</div>
							</div>
							<div class="box_but">
								<button class="but">선택하기</button>
							</div>
						</div>
					</div>
					</form>
				</c:forEach>
			</div>
			<div class="con_row">
				<c:forEach var="cash2" items="${cash2}">
					<form action="cashcheck.shop?id=${cashuser.id}&cnt=${cash2.cashcnt}&price=${cash2.cashprice}" method="get">
					<input type="hidden" name="cnt" value="${cash2.cashcnt}">
					<input type="hidden" name="price" value="${cash2.cashprice}">
					<input type="hidden" name="id" value="${cashuser.id}">
					<div class="plan_wrap">
						<div class="plan_layout">
							<div class="is_main">
								<div class="box_icon">
									<img src="https://static-kr-pairs.akamaized.net/public/images/app/content/plan/point/normal/lp/dt/coin_point_10.png" style="width: 100%;">
								</div>
								<div class="box_info">
									<div class="cnt">
										${cash2.cashcnt}개
									</div>
									<div class='price'>
										<span style="font-size: 2rem;">${cash2.cashprice}</span>원
									</div>
								</div>
							</div>
							<div class="box_but">
								<button class="but">선택하기</button>
							</div>
						</div>
					</div>
					</form>
				</c:forEach>
			</div>
		</div>
	</div>
</div>

</body>
</html>