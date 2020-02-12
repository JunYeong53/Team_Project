<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/jspHeader.jsp" %> 
    
            <span class="login100-form-title p-b-37" id="sp"> 상대방의 희망나이를 알려주세요. (상한)</span>
            <br>
            <div class="inputy-item" id="d1">
               <c:forEach begin="20" end="59" varStatus="status" var="age" step="4">
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-${age}" name="agehigh"
                  value="${age}" onclick="agehighselect()"> <label for="FORM_LOGIN-gender-${age}"
                  style="position: relative; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  ${age}세 </label>
               <input type="radio" id="FORM_LOGIN-gender-${age + 1}" name="agehigh"
                  value="${age + 1}" onclick="agehighselect()"> <label for="FORM_LOGIN-gender-${age + 1}"
                  style="position: relative; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  ${age + 1}세 </label>
               <input type="radio" id="FORM_LOGIN-gender-${age + 2}" name="agehigh"
                  value="${age + 2}" onclick="agehighselect()"> <label for="FORM_LOGIN-gender-${age + 2}"
                  style="position: relative; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  ${age + 2}세 </label>
               <input type="radio" id="FORM_LOGIN-gender-${age + 3}" name="agehigh"
                  value="${age + 3}" onclick="agehighselect()"> <label for="FORM_LOGIN-gender-${age + 3}"
                  style="position: relative; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  ${age + 3}세 </label>
               </div>
               </c:forEach>
               <hr>
               <div class="inputy-item">
                  <input type="radio" id="FORM_LOGIN-gender-100" name="agehigh"
                  value="상관없음" onclick="agehighselect()"> <label for="FORM_LOGIN-gender-100"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  상관없음 </label>
               </div>
            </div>