<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.screen_con{
		max-width: 600px;
		margin: 0 auto;
		box-sizing: border-box;
		padding: 40px;
		margin-bottom: 0;
	}
	.mtb_20{
		margin-top: 20px;
		margin-bottom: 20px;
	}
	.payment{
		position: relative;
	}
	.is_band{
		padding: 16px 0;
	}
	.l_con{
		border-color: #d8d7dc;
		border: 3px solid #f5f6f8;
		border-radius: 20px;
		box-sizing: border-box;
		overflow: hidden;
		padding: 0 16px;
	}
	.l_item{
		border-top: none;
		cursor: auto;
		display: flex;
		justify-content: space-between;
		align-items: center;
		position: relative;
		padding: 16px;
	}
	.box_l{
		color: #b4b4b4;
		font-size: 1.4rem;
	}
	.box_r{
		max-width: 50%;
		word-break: break-all;
		font-size: 1.4rem;
	}
	.pr116{
		padding-right: 16px;
		padding-left: 16px;
	}
	.mb10{
		margin-bottom: 10px;
	}
	.mt30{
		text-align: center;
		margin-top: 30px;
	}
	.but{
		box-shadow: 0 2px 8px 0 rgba(0,199,205,.5);
		border-color: #00c1bf;
		background: #00c1bf;
		color: #fff;
		line-height: 2;
		box-sizing: border-box;
		padding: 8px 16px;
		font-size: 1.1rem;
		display: inline-flex;
		justify-content: center;
		align-items: center;
		vertical-align: middle;
		margin: 4px;
		cursor: pointer;
		border-radius: 20px;
		width: 200px;
	}
</style>

</head>
<body>

<div>
	<div class="screen_con">
		<div>
			<h1 style="font-weight: 700; color: #575757; font-size: 2.0rem;">
				결제를 시작합니다
			</h1>
		</div>
		<div class="mtb_20">
			<div class="payment">
				<div class="is_band">
					<div class="l_con">
						<div class="l_item">
							<div class="box_l">
								결제자
							</div>
							<div class="box_r">
								${id}
							</div>
						</div>
						<hr style="margin: 2px;">
						<div class="l_item">
							<div class="box_l">
								결제내용
							</div>
							<div class="box_r">
								좋아요 ${cnt}개
							</div>
						</div>
						<hr style="margin: 1px;">
						<div class="l_item">
							<div class="box_l">
								결제가격
							</div>
							<div class="box_r">
								${price}원
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="mtb_20">
			<div>
				<div class="pr116">
					<div>
						<div class="mb10">
							<h3 style="font-size: 1.3rem; font-weight: 700; color: #575757;">
								결제에 대하여
							</h3>
						</div>
						<div>
							<ul>
								<li style="margin-top: 0; text-align: left; padding-left: 20px; position: relative;">
									******의 결제 시스템을 이용하고 있습니다.
								</li>
								<li style="margin-top: 0; text-align: left; padding-left: 20px; position: relative;">
									신용카드의 이용명세에는 '******'에서의 청구라고 기재됩니다.
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="pr116">
					<div class="mt30">
						<form action="cashcheck.shop" method="post">
							<input type="hidden" name="id" value="${id}">
							<input type="hidden" name="cnt" value="${cnt}">
							<input type="hidden" name="price" value="${price}">
							<button class="but">결제 진행</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>