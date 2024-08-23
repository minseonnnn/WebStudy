<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
.featured-games {
	display: flex;
	flex-wrap: wrap;
}

.cover {
	flex: 1;
	max-width: 300px;
}

.book-info {
	flex: 2;
	margin-left: 20px;
	max-width: calc(100% - 340px); 
}

.pricing-info {
	display: flex;
	width: 400px;
}

.price-label {
	font-size: 14px;
	color: #000000;
	font-weight: 400;
	width: 400px;
}

.book-in th, .book-in td {
	border: 1px solid #ddd;
	padding: 8px;
	padding-left: 15px;
	font-size: 13px;
}

.book-in th {
	border-left: none;
}

.book-in td {
	border-right: none;
}

.b-info {
	font-weight: 550;
	width: 200px;
	text-align: center;
}

.b-in {
	width: 1000px;
	text-align: left;
}

.price-value {
	font-size: 20px;
	text-align: left;
}

.discount-price {
	color: #E53935;
}

.discount-rate {
	font-size: 13px;
	color: #E53935;
	text-align: left;
}

.delivery-info {
	font-size: 12px;
	color: #979797;
	text-align: left;
}

.hr-container {
	margin: 10px 0;
	text-align: left;
}

.hr-container hr {
	width: 700px;
	border: 1px solid
}

.buttons {
	margin-top: 20px;
	width: 400px;
	display: flex;
	align-items: center;
}

.buttons a {
	text-decoration: none;
	padding: 10px;
	margin-right: 10px;
	color: #fff;
	border-radius: 5px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.buttons a.add-to-cart {
	background-color: #4CAF50;
	height: 40px;
}

.buttons a.like-button {
	background-color: transparent;
	border: 1px solid #ccc;
	color: #fff;
	width: 42px;
	height: 40px;
	border-radius: 8px;
	display: flex;
	align-items: center;
	justify-content: center;
	cursor: pointer;
}

.buttons a.like-button img {
	width: 20px;
	height: 20px;
}

.buttons a.buy-now {
	background-color: #E53935;
	height: 40px; /* 버튼의 높이 설정 */
}

.account-control {
	display: flex;
	align-items: center;
	width: 200px;
	margin: 10px 0;
}

.account-control button {
	width: 30px;
	height: 30px;
	font-size: 18px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.2s;
}

.account-control button:hover {
	background-color: #45a049;
}

.account-control button:disabled {
	background-color: #ccc;
	cursor: not-allowed;
}

.account-control input {
	width: 50px;
	text-align: center;
	font-size: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin: 0 5px;
	padding: 3px;
}

.account-control input:focus {
	outline: none;
	border-color: #4CAF50;
}

.star-rating {
	display: flex;
	font-size: 24px;
}

.star-rating input[type="radio"] {
	display: none;
}

.star-rating label {
	cursor: pointer;
	color: #ddd; /* 기본 색상: 선택되지 않은 상태 */
	transition: color 0.2s;
}

.star-rating label:before {
	content: '\f005'; /* Font Awesome star icon */
	font-family: 'Font Awesome 6 Free';
	font-weight: 900;
}

.star-rating input[type="radio"]:checked ~ label {
	color: #779BC9; /* 선택된 별점의 색상 */
}

.star-rating input[type="radio"]:checked ~ input[type="radio"] ~ label {
	color: #779BC9; /* 선택된 별점과 그 이전 별점의 색상 */
}

.review-form {
	margin-top: 20px;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 8px;
	background-color: #f9f9f9;
}

.review-form label {
	display: block;
	margin-bottom: 8px;
	font-weight: bold;
}

.review-form textarea {
	padding: 8px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 4px;
	width: 800px; 
	min-height: 68px;
	box-sizing: border-box; 
	vertical-align: middle; 
}

.review-form button {
	background-color: #5D7DC9;
	color: #fff;
	padding: 12px 20px; 
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	height: 50px; 
	vertical-align: middle; 
	box-sizing: border-box;
	margin-bottom: 10px;
}

.review-form button:hover {
	background-color: #45a049;
}

.review-form .review-container {
	display: flex;
	align-items: center;
}

.review-form .review-container textarea {
	margin-right: 10px; 
}

.button-container {
    display: flex;
    margin: 30px 0 0 0;
}

.action-button {
    background-color: #fff;
    color: #000;
    padding: 12px 20px;
    border: 1.5px solid #000;
    border-radius: 10px 10px 0 0;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
    height: 50px;
    width: 110px;
    text-align: center;
    display: inline-block;
    transition: background-color 0.2s, color 0.2s;
}

.action-button:hover {
    background-color: #f0f0f0;
    color: #333;
}

.action-button.active {
    background-color: #000;
    color: #fff;
}

.review-list {
    border: 1px solid #ddd;
    border-radius: 8px;
    background-color: #fff;
    padding: 15px;
    margin-bottom: 15px;
    width: 1022px;
}

.review-list .nick-rate {
    font-weight: bold;
    font-size: 16px;
    color: #333;
}

.review-list .date {
    font-size: 14px;
    color: #888;
}

.review-list .xBtn,
.review-list .rBtn {
    background: none;
    border: none;
    cursor: pointer;
    font-size: 14px;
    margin-left: 5px;
    padding: 0;
}

.review-list .xBtn{
    float: right;
}

.review-list .rBtn{
    color: #888;
}
.review-list .xBtn:hover,
.review-list .rBtn:hover {
    text-decoration: underline;
}

.review-list .rating {
    margin: 10px 0;
}

.review-list .r-content {
    font-size: 14px;
}

.r-content{
 margin-top: 10px;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    $('#scrollToReview').click(function(event) {
        event.preventDefault();
        $('html, body').animate({
            scrollTop: $('#review-form').offset().top
        }, 10);
    });

    $('#scrollToIntro').click(function(event) {
        event.preventDefault();
        $('html, body').animate({
            scrollTop: $('#intro-section').offset().top
        }, 10);
    });
    
    $(document).ready(function() {
        $('.action-button').click(function() {
            $('.action-button').removeClass('active'); 
            $(this).addClass('active'); 
        });
    });
});

$(function() {
	  let ratingCheck = false
    let likeCheck = false
    let id = '${id}'
    let bno = $('#bno').val()
    reviewlist()

    if (id.length > 0) {
        $.ajax({
            type: 'post',
            url: '../like/likeCheck.do',
            data: {
                'tno': bno,
                'type': 5
            },
            success: function(result) {
                if (result === 'OK') {
                    likeCheck = true;
                    $('#like-button').attr('src', 'fullheart.png');
                } else {
                    likeCheck = false;
                    $('#like-button').attr('src', 'heart.png');
                }
            }
        });
    } else {
        $('#likeBtn').css('display', 'none');
    }

    $('#likeBtn').click(function() {
        console.log(bno)
        if (likeCheck) {
            $.ajax({
                type: 'post',
                url: '../like/likeOff.do',
                data: {
                    'tno': bno,
                    'type': 5
                },
                success: function(result) {
                	console.log(bno)
                    if (result >= 0) {
                        likeCheck = false;
                        $('#like-button').attr('src', 'heart.png');
                    }
                }
            });
        } else {
            $.ajax({
                type: 'post',
                url: '../like/likeOn.do',
                data: {
                    'tno': bno,
                    'type': 5
                },
                success: function(result) {
                	console.log(bno)
                    if (result >= 0) {
                        likeCheck = true;
                        $('#like-button').attr('src', 'fullheart.png');
                    }
                },
                error:function(request, status, error){
                	alert(error)
                }
            });
        }
    });
    $('.rating').change(function() {
    ratingCheck=true	
		let rating=$('input[name="rating"]:checked').val()
		rating=6-rating
    console.log(rating)
	})
	
	$('#reviewBtn').click(function(){
		let rating=0
		if(ratingCheck){
		rating=$('input[name="rating"]:checked').val()
		rating=6-rating
   	console.log(rating)
			
		}
		else{
			alert('평점을 선택해주세요')
			return
		}
		let content=$('#content').val()
		if(content.trim()===''){
			alert('리뷰를 입력해주세요')
			$('#content').focus()
			return
		}
		$.ajax({
			type:'post',
			url:'../review/insert.do',
			data:{
				'tno':${vo.bno},
				'trating':rating,
				'tcontent':content,
				'type':2
			},
			success:function(){
				let count=$('#rcount').text()
				count=parseInt(count)
				$('#content').val('')
				$('input[name="rating"]').checked=false
			   	reviewlist()
				$('#rcount').text('')
				$('#rcount').text(count+1)
			}
		})
	})
});
function reviewlist(){
	$.ajax({
		type:'post',
		url:'../review/list.do',
		data:{
			'tno':${vo.bno},
			'type':2
		},
		success:function(result){
			let json=JSON.parse(result)
			html=''
				json.map(function(reply) {
					let stars=''
					for(let i=1;i<=reply.trating;i++){
						stars+='<img src="star.png" style="width:15px;height:15px;">'
					}
					for(let i=1;i<=5-reply.trating;i++){
						stars+='<img src="nostar.png" style="width:15px;height:15px;">'
					}
			html+='<tr>'
			html+='<td>'
			html+='<div class="review-list">'
			html+='<div>'
			html+='<span class="nick-rate">'+reply.nickname+'</span>'
			if(reply.id===reply.sessionId){
				html+='<input type="button" class="xBtn" value="X" onclick="reviewdelete('+reply.trno+')">'
				}
			html+='<br>'
		  html+=stars+'<br>'
			html+='<span class="date">'+reply.dbday+'&nbsp;</span>'
			if(reply.sessionId.length>2){
			html+='<input type="button" class="rBtn" value="|&nbsp&nbsp;신고">'
			}
			html+='<div>'
			html+='<div class="r-content">'+reply.tcontent+'</div>'
			html+='</div>'
			html+='</div>'
			html+='</td>'
			html+='</tr>'
				})
				$('#review').html(html)
		}
	})
}
function reviewdelete(trno){
	$.ajax({
		type:'post',
		url:'../review/delete.do',
		data:{
			'trno':trno,
		},
		success:function(result){
			reviewlist()
			let count=$('#rcount').text()
			count=parseInt(count)
			$('#rcount').text(count-1)
			}
		})
}
document.addEventListener('DOMContentLoaded', function() {
    const stars = document.querySelectorAll('.star-rating input[type="radio"]');
    stars.forEach(star => {
        star.addEventListener('change', function() {
            updateStars(this);
        });
    });

    function updateStars(selectedStar) {
        const allStars = document.querySelectorAll('.star-rating label');
        allStars.forEach(star => {
            star.style.color = '#ddd'; 
        });

        const selectedValue = selectedStar.value;
        allStars.forEach(star => {
            const starValue = star.getAttribute('for').replace('star', '');
            if (parseInt(starValue) >= parseInt(selectedValue)) {
                star.style.color = '#779BC9'; 
            }
        });
    }
    
});
$(document).ready(function() {
    var acountInput = $('#account');
    var incrementButton = $('#increment');
    var decrementButton = $('#decrement');

    incrementButton.click(function() {
        var value = parseInt(acountInput.val());
        acountInput.val(value + 1);
    });

    decrementButton.click(function() {
        var value = parseInt(acountInput.val());
        if (value > 1) {
        	acountInput.val(value - 1);
        }
    });
    
});

</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-content">
					<!-- ***** Featured Games Start ***** -->
					<div class="container" style="padding: 20px;">
						<div class="row" style="display: flex; align-items: flex-start;">
							<div class="col-lg-8" style="flex: 1; margin-right: 10px;">
								<div class="featured-games header-text">
									<div class="cover">
										<img src="${vo.cover}" alt=""
											style="width: 300px; height: 400px; border-radius: 23px;">
									</div>
									<div class="book-info">
										<p>${vo.bgenre}<br>
										</p>
										<span
											style="font-size: 30px; font-weight: bold; display: block; margin-bottom: 10px;">${vo.btitle}</span>
										<p>${vo.writer}${vo.writer != null ? ' 저 | ' : ''}${vo.publisher}
											| ${vo.dbday}</p>
										<p>${vo.btag}</p>
										<div class="hr-container">
											<hr>
										</div>
										<table class="pricing-info">
											<tr>
												<th class="price-label">정가</th>
												<td class="price-value"><fmt:formatNumber
														value="${vo.price}" type="number" />원</td>
											</tr>
											<tr>
												<th class="price-label">할인가</th>
												<td class="price-value discount-price"><fmt:formatNumber
														value="${vo.sale_price}" type="number" />원 <span
													class="discount-rate"> <c:choose>
															<c:when test="${vo.sale_price<vo.price}">
															(<fmt:formatNumber maxFractionDigits="0" type="number"
																	value="${((vo.price-vo.sale_price) / vo.price*100)}" />% 할인)
                                  </c:when>
															<c:otherwise>(할인 없음)</c:otherwise>
														</c:choose>
												</span></td>
											</tr>
											<tr>
												<th class="price-delivery"
													style="padding-top: 8px; font-size: 13px; color: #979797; font-weight: 300; width: 400px;">배송비</th>
												<td class="delivery-info" style="padding-top: 8px;">무료</td>
											</tr>
											<tr>
												<th class="price-label">수량</th>
												<td><div class="account-control">
														<button id="decrement">-</button>
														<input type="text" id="account" value="1">
														<button id="increment">+</button>
													</div></td>
											</tr>
											<tr>
												<th class="price-label">총 금액</th>
												<td class="price-value"></td>
											</tr>
										</table>
										<div class="buttons">
											<a href="" class="like-button" id="likeBtn"> <img
												src="../book/heart.png" id="like-button" alt="">
											</a> <a href="#" class="add-to-cart"> <i
												class="fa fa-cart-plus">&nbsp;Add to Cart</i>
											</a> <a href="#" class="buy-now"> <i
												class="fa fa-credit-card">&nbsp;Buy Now</i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="button-container">
								<a href="#review-form" id="scrollToReview" class="action-button">도서	리뷰</a> 
								<a href="#intro-section" id="scrollToIntro"	class="action-button">책 소개</a>
							</div>
							<div class="top-streamers" style="flex: 1; margin-top: 0px; border-radius: 0 10px 10px 10px;">
								<div class="heading-section">
									<span style="font-size: 20px; font-weight: bold;">도서 정보</span>
								</div>
								<table class="book-in" style="margin-top: 20px;">
									<tbody class="book-size">
										<tr>
											<th class="b-info">발행일</th>
											<td class="b-in">${vo.dbday }</td>
										</tr>
										<tr>
											<th class="b-info">쪽수</th>
											<td class="b-in">${vo.pages }</td>
										</tr>
										<tr>
											<th class="b-info">isbn13</th>
											<td class="b-in">${vo.isbn13 }</td>
										</tr>
										<tr>
											<th class="b-info">isbn10</th>
											<td class="b-in">${vo.isbn10 }</td>
										</tr>
									</tbody>
								</table>
								<div id="intro-section" style="margin-top: 50px;">
								<div class="heading-section" style="padding: 0 0 15px 0;">
                <span style="font-size: 20px; font-weight: bold;">책 소개</span>
            </div>
								<p>${vo.intro }</p>

								<div class="heading-section" style="padding: 50px 0 10px 0;">
									<span style="font-size: 20px; font-weight: bold;">소개 이미지</span>
								</div>
								<img src="${vo.intro_img }" alt="" style="padding-bottom: 80px;">
								<br>
								<!-- 리뷰 작성 폼 -->
								<div id="review-form" class="review-form">
										<div class="heading-section" style="padding: 0 0 15px 0;">
											<span style="font-size: 20px; font-weight: bold;">도서 리뷰(<span id="rcount">${rcount}</span>)</span>
										</div>
											<input type="hidden" id="bno" name="bno" value="${vo.bno}" /> 
											<div>
											<div class="star-rating">
												<input class="rating" type="radio" id="star5" name="rating"
													value="5" required />
												<label for="star5"></label>
												<input class="rating" type="radio" id="star4" name="rating"
													value="4" />
												<label for="star4"></label>
												<input class="rating" type="radio" id="star3" name="rating" value="3" />
												<label for="star3"></label>
												<input class="rating" type="radio" id="star2" name="rating" value="2" />
												<label for="star2"></label>
												<input class="rating" type="radio" id="star1" name="rating" value="1" />
												<label for="star1"></label>
											</div>
										</div>
											<table>
												<tr>
													<td>
														<div class="review-container">
															<textarea id="content" style="resize: none;"
																name="content" required placeholder="리뷰를 작성해주세요!!"></textarea>
															<button type="button" id="reviewBtn">리뷰 작성</button>
														</div>
													</td>
												</tr>
											</table>
											<table>
										 <tbody id="review">
										 </tbody>
										</table>
									</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ***** Featured Games End ***** -->
			</div>
		</div>
	</div>

	<!-- <a href="https://www.flaticon.com/kr/free-icons/" title="심장 아이콘">심장 아이콘 제작자: hazhio - Flaticon</a> -->
</body>
</html>