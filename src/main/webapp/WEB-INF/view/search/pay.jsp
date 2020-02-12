<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/jspHeader.jsp" %>  
    
            <span class="login100-form-title p-b-37" id="sp"> 상대방의 연봉은 얼마인가요? </span>

            <div class="inputy-item" id="d1">
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-0" name="pay"
                  value="표시하지 않음" onclick="payselect()"> <label for="FORM_LOGIN-gender-0"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  표시하지 않음 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-1" name="pay"
                  value="1000만원 미만" onclick="payselect()"> <label for="FORM_LOGIN-gender-1"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  1000만원 미만 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-2" name="pay"
                  value="1000만원이상 2000만원미만" onclick="payselect()"> <label for="FORM_LOGIN-gender-2"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  1000만원이상 2000만원미만 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-3" name="pay"
                  value="2000만원이상 3000만원미만" onclick="payselect()"> <label for="FORM_LOGIN-gender-3"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  2000만원이상 3000만원미만 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-4" name="pay"
                  value="3000만원이상 4000만원미만" onclick="payselect()"> <label for="FORM_LOGIN-gender-4"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  3000만원이상 4000만원미만 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-5" name="pay"
                  value="4000만원이상 5000만원미만" onclick="payselect()"> <label for="FORM_LOGIN-gender-5"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  4000만원이상 5000만원미만</label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-6" name="pay"
                  value="5000만원이상 6000만원미만" onclick="payselect()"> <label for="FORM_LOGIN-gender-6"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  5000만원이상 6000만원미만 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-7" name="pay"
                  value="6000만원이상 7000만원미만" onclick="payselect()"> <label for="FORM_LOGIN-gender-7"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  6000만원이상 7000만원미만 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-8" name="pay"
                  value="7000만원이상 8000만원미만" onclick="payselect()"> <label for="FORM_LOGIN-gender-8"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  7000만원이상 8000만원미만 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-9" name="pay"
                  value="8000만원이상 9000만원미만" onclick="payselect()"> <label for="FORM_LOGIN-gender-9"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  8000만원이상 9000만원미만 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-10" name="pay"
                  value="9000만원이상 1억원미만" onclick="payselect()"> <label for="FORM_LOGIN-gender-10"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  9000만원이상 1억원미만 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-11" name="pay"
                  value="1억원이상" onclick="payselect()"> <label for="FORM_LOGIN-gender-11"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  1억원이상 </label>
               </div>
            </div>