<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/jspHeader.jsp" %>  
    
    <c:set var="path" value="${pageContext.request.contextPath}" />
      <!-- Modal content --> 
      <div class="modal-content">
          <div class="modal_d1">
             <div class="modal_d1_1">
                <div class=""></div>
                <div class="modal_d1_1_1">
                   <img src="${path}/login/img/${user.profileurl1}" width="328px" height="328px">
                </div>
             </div>
            <div class="photo_space"></div>
            <div class="modal_d1_2">
               <div class="modal_d1_2_1">
                  <div class="modal_d1_2_1_1">
                     <div class="modal_d1_2_1_1_pic">
                        <img src="${path}/login/img/${user.profileurl1}" width="100px" height="100px">
                     </div>
                     <c:if test="${user.profileurl2 != null}">
                        <div class="modal_d1_2_1_1_pic">
                           <img src="${path}/login/img/${user.profileurl2}" width="100px" height="100px">
                           <c:if test="${user.profileurl3 != null }">
                                 </div>
                                 <div class="modal_d1_2_1_1_pic">
                                  <img src="${path}/login/img/${user.profileurl3}" width="100px" height="100px">      
                            </c:if>
                        </div>
                     </c:if>
                  </div>
               </div>
            </div>
            <div class="photo_space"></div>
            <div class="modal_d1_3">
               <c:if test="${good2 == user.id}">
                  <div class="modal_bu_like">
                     <i class="far fa-heart" style="font-size: 4.0rem;" onclick=""></i>
                  </div>
               </c:if>
               <c:if test="${good != user.id && good2 != user.id}">
                  <div class="modal_bu_like">
                     <i class="fas fa-heart" style="font-size: 4.0rem;" onclick="good('${user.id}')"></i>
                  </div>
               </c:if>
               <c:if test="${good == user.id && good2 != user.id}">
                  <div class="modal_bu_like_cancel">
                     <i class="fas fa-heart-broken" style="font-size: 4.0rem;" onclick="goodcancel('${user.id}')"></i>
                  </div>
               </c:if>
               <div class="modal_bu_report">
                  <i class="fas fa-angry" style="font-size: 4.0rem;" onclick="javascript:selectreport('${loginUser.id}','${user.id}')"></i>
               </div>
            </div>
          </div>
          <div class="modal_d2">
             <div class="modal_d2_1">
                <div class="modal_d2_1_1">
                   <div class="modal_d2_1_1_1">
                      <div class="modal_d2_1_1_1_nick">
                         ${user.nickname}
                      </div>
                      <div class="modal_d2_1_1_1_adrage">
                         ${user.age}세 ${user.address}
                      </div>
                      <div class="modal_d2_1_1_1_gre">
                         안녕하세요!
                      </div>
                   </div>
                   <div class="modal_d2_1_1_3">
                      <div class="modal_hr">
                         <hr style="margin: 0;">
                      </div>
                      <div class="modal_profile_title">
                         상세 프로필
                      </div>
                      <div>
                         <div class="modal_prof_state">
                            <div class="modal_prof_title">
                               키 :
                            </div>
                            <div class="modal_prof_body">
                               ${user.height}
                            </div>
                         </div>
                         <div class="modal_prof_state">
                            <div class="modal_prof_title">
                               체형 :
                            </div>
                            <div class="modal_prof_body">
                               ${user.body}
                            </div>
                         </div>
                         <div class="modal_prof_state">
                            <div class="modal_prof_title">
                               학력 :
                            </div>
                            <div class="modal_prof_body">
                               ${user.education}
                            </div>
                         </div>
                         <div class="modal_prof_state">
                            <div class="modal_prof_title">
                               연봉 :
                            </div>
                            <div class="modal_prof_body">
                               ${user.pay}
                            </div>
                         </div>
                      </div>
                   </div>
                   <div class="modal_d2_1_1_2">
                      <div class="modal_hr">
                         <hr style="margin: 0;">
                      </div>
                      <c:if test="${itcnt != 0 }">
                         <div class="modal_d2_1_1_2_itname">
                            ${itcnt}개의 관심사에 참여중
                         </div>
                         <div class="modal_d2_1_1_2_itbody">
                            <c:forEach var="itlist" items="${itlist}" varStatus="status">
                               <div class="modal_d2_1_1_2_itbody_con">
                                  <div><img src="../interest/${itlist.interestpicurl}" width="80" height="60"></div>
                                  <div style="font-size: 1.0rem;">${itlist.interestname}</div>
                               </div>
                            </c:forEach>
                         </div>
                      </c:if>
                      <c:if test="${itcnt == 0 }">
                         <div class="modal_d2_1_1_2_itname">
                            상대방이 등록한 관심사가 없어요
                         </div>
                         <div class="modal_d2_1_1_2_noinfo">
                            <img src="../interest/noinfo.png" width="400" height="200">
                         </div>
                      </c:if>
                   </div>
                   
                </div>
             </div>
          </div>
          <div>
             <i class="fas fa-times" style="font-size: 1.0rem;" onclick="close_pop()"></i>
          </div>
      </div>      
    