<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:Master title="LoginPage">
<jsp:attribute name="content">
<section id="content">
    <div class="sub-page">
      <div class="sub-page-left box-9">
        <h2>Contact Form</h2>
        <c:url var="action" value="/Register"></c:url>
        <form:form method="post" action="${action}" modelAttribute="user" id="form">
          <fieldset>
            <form:label path="name">
              <form:input path="name" type="text" value="Name" name="name" onBlur="if(this.value=='') this.value='Name'" onFocus="if(this.value =='Name' ) this.value=''"/>
            </form:label>
            <form:label path="username">
              <form:input path="username" type="text" value="UserName" name="username" onBlur="if(this.value=='') this.value='Phone'" onFocus="if(this.value =='Phone' ) this.value=''"/>
            </form:label>
            <form:label path="password">
              <form:input path="password" type="text" value="Password" name="password" onBlur="if(this.value=='') this.value='Phone'" onFocus="if(this.value =='Phone' ) this.value=''"/>
            </form:label>
            <%-- <form:label>
              <form:input type="text" value = "<fmt:formatDate value="${cForm.dob}" pattern="MM-dd-yyyy" />" name="dob" onBlur="if(this.value=='') this.value='Phone'" onFocus="if(this.value =='Phone' ) this.value=''"/>
            </form:label> --%>
            <form:label path="gender">
              <form:input path="gender" type="text" value="gender" name="gender" onBlur="if(this.value=='') this.value='Phone'" onFocus="if(this.value =='Phone' ) this.value=''" />
            </form:label>
            <div class="btns"><a href="#" class="button">Reset</a><a href="#" class="button" onClick="document.getElementById('form').submit()">Submit</a></div>
            <input type="submit" value="SUBMIT"/>
          </fieldset>
        </form:form>
      </div>
      <div class="sub-page-right">
        <h2>Find Us</h2>
        <div class="map">
          <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
        </div>
        <dl class="adr">
          <dt>8901 Marmora Road, <br>
            Glasgow, D04 89GR.</dt>
          <dd><span>Telephone:</span>+1 800 603 6035</dd>
          <dd><span>E-mail:</span><a href="#" class="link">mail@demolink.org</a></dd>
        </dl>
      </div>
    </div>
  </section>
</jsp:attribute>
</c:Master>