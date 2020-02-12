<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/jspHeader.jsp" %>
    <c:set var="path" value="${pageContext.request.contextPath}" />
      <div class="reportuser-content jm">
      <i class="fas fa-angle-left" style="font-size: 30px;" onclick="open_detailmodal('${user.id}')"></i> 
    <i class="fas fa-times" style="font-size: 30px; position: absolute; left: 69%;" onclick="close_reportmodal()"></i>
<div style="width: 700px;  margin: 0 auto; padding-left: 35px; text-align:center;"><h3>회원신고</h3>
   <div style="text-align:center;"><img src="${path}/login/img/${user.profileurl1}" width=200px height=200px;></div>
   <div style="text-align:center;">${user.nickname}</div>
   <div></div>
   <div style="padding-top: 45px;">
      <ul style="font-size: 14px;">
         <li style="padding-bottom: 5px;">회원님들이 더욱 안심하고 사용할 수 있는 앱을 제공하기 위해 핑글의 이용규약을 위반한 회원을 발견할 경우 가능한 한 자세한 내용을 적어 아래의 양식을 작성해주세요</li>
         <li style="padding-bottom: 5px;">핑글 고객센터가 위반보고를 확인하고 해당 회원의 위반내용의 사실여부를 확인한 후 해당회원에게 경고 또는 강제탈퇴를 시킵니다.</li>
         <li style="padding-bottom: 5px;">회원님이 제출하신 위반신고에는 고객센터에서 따로 답장을 전송하고 있지 않습니다. 양해 부탁드립니다.</li>
      </ul>
   </div>
   <div style="display: flex;">
      <div style="font-size: 1.5rem; font-weight: 700; color: #575757; padding: 20px 10px; box-sizing: border-box; flex-grow: 1;">
         <div style="font-size: 15px;">위반항목</div>
         <div style="font-size: 14px; line-height: 1; border-radius: 2px; padding: 4px 6px; color: #fff; display: inline-block; height: auto;
             width: auto; background: linear-gradient(90deg,#ff5656,#ff3f71);">필수항목 입니다.</div>
      </div>
      <div style="padding: 20px 10px; box-sizing: border-box; flex-basis: 70%;">
         <div style="word-break: break-all;">
            <div style="position: relative; font-size: 1.5rem; color: #575757;">
               <select class="selectt" name="reportcolumn">
                  <option>탭하여 선택해 주세요</option>
                  <option value="애인이 있거나 기혼자">애인이 있거나 기혼자</option>
                  <option value="다른 사이트나 상품 매매의 권유">다른 사이트나 상품 매매의 권유</option>
                  <option value="금전목적 (성매매, 조건만남 등)">금전목적 (성매매, 조건만남 등)</option>
                  <option value="허위 프로필">허위 프로필</option>
                  <option value="연예인이나 타인의 사진 도용">연예인이나 타인의 사진 도용</option>
               </select>
               <div style="pointer-events: none;   position: absolute; top: 50%; left:80%; background: transparent; width: 10px;
                   height: 10px; border: 2px solid #b4b4b4; border-top: transparent; border-right: transparent;
                     transform: translateY(-50%) rotate(-45deg) skew(6deg,6deg);"></div>
            </div>
         </div>
         <div></div>
      </div>
   </div>
   <div style="display: flex;">
      <div style="font-size: 1.5rem; font-weight: 700; color: #575757; padding: 20px 10px; box-sizing: border-box; flex-grow: 1;">
         <div style="font-size: 15px;">구체적인 내용</div>
         <div style="font-size: 14px; line-height: 1; border-radius: 2px; padding: 4px 6px; color: #fff; display: inline-block; height: auto;
             width: auto; background: linear-gradient(90deg,#ff5656,#ff3f71);">필수항목 입니다.</div>
      </div>
      <div style="padding: 20px 10px; box-sizing: border-box; flex-basis: 70%;">
         <div style="word-break: break-all;">
            <div style="position: relative; font-size: 1.5rem; color: #575757; line-height: 0; border-radius: 8px;">   
               <textarea style="resize: none; outline: none; 
    background: transparent; -webkit-appearance: none; font-size: 1.5rem;
    color: #575757;
    border: 1px solid #d8d7dc;
    border-radius: 8px;
    padding: 12px;
    box-sizing: border-box;
    width: 100%;" name="reportcontent" id="reportcontent"></textarea>
            </div>
         </div>
         <div></div>
      </div>
   </div>
   <br>
   <div style="text-align: center;     padding-bottom: 30px;">
      <div style="display: inline;">
         <a style="align-items: center; vertical-align: middle; margin: 4px; cursor: pointer;  border-radius: 6px; justify-content: center;
               line-height: 2; box-sizing: border-box; padding: 8px 16px; font-size: 1.4rem display: inline-flex; border: 1px solid #575757;
               color: #fff; box-shadow: 0 2px 8px 0 rgba(255,67,67,.5); border-color: #ff4343; background: #ff4343;"
                href="javascript:report('${user.id}')">이 내용으로 보내기</a>
      </div>
   </div>  
</div>
</div>
