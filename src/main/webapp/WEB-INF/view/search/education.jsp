<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/jspHeader.jsp" %>  
    
            <span class="login100-form-title p-b-37" id="sp"> 상대방의 희망최종학력을 알려주세요 </span>

            <div class="inputy-item" id="d1">
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-0" name="education"
                  value="고등학교 졸업" onclick="educationselect()"> <label for="FORM_LOGIN-gender-0"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  고등학교 졸업 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-1" name="education"
                  value="전문대 졸업" onclick="educationselect()"> <label for="FORM_LOGIN-gender-1"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  전문대 졸업 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-2" name="education"
                  value="대학교4년제 졸업" onclick="educationselect()"> <label for="FORM_LOGIN-gender-2"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  대학교4년제 졸업 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-3" name="education"
                  value="대학원 졸업" onclick="educationselect()"> <label for="FORM_LOGIN-gender-3"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  대학원 졸업 </label>
               </div>
               <div class="inputy-item">
               <input type="radio" id="FORM_LOGIN-gender-4" name="education"
                  value="그 외" onclick="educationselect()"> <label for="FORM_LOGIN-gender-4"
                  style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                  그 외 </label>
               </div>
            </div>