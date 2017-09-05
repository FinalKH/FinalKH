<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page Error</title>
<%@ include file="../include/header.jsp" %>		<!-- header travel 포함 -->
<style type="text/css">
body{
background-image : url(https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Hubble2005-01-barred-spiral-galaxy-NGC1300.jpg/1920px-Hubble2005-01-barred-spiral-galaxy-NGC1300.jpg);
}

 .row.button {
margin-top: 35em;
}
.image {
   margin-left: 37.7em;
}
</style>
</head>
<body>
<div class="row">
  <div class="column">
    <div class="ui middle aligned stackable grid container">
      
      <div class="row button">
        <div class="center aligned column">
          <img class="ui image" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLTEtMTU3Ojo6IyszODM4PTQ5OjcBCgoKDQwNGg8PGjclHyU3Ky01NzctKzc1NzcrNzcrLS03Ky03KzcrLTcrKy0rKysrKysrKysrKy0rKysrKysrLf/AABEIADAAMAMBIgACEQEDEQH/xAAaAAACAwEBAAAAAAAAAAAAAAAFBgMEBwAC/8QALxAAAgEDAwIFAgUFAAAAAAAAAQIDBAURACExEkEGExRRYSJxB0JygZEyUoKx8P/EABgBAQADAQAAAAAAAAAAAAAAAAQCAwUB/8QAHhEAAgMAAgMBAAAAAAAAAAAAAQIAAxEhMRJRcRP/2gAMAwEAAhEDEQA/AKVqtuFWSUbNso99M8PhpaqB/WxqqBchzgYHydVYZYbZbprjVxloaYZVV5YnbA+Cd8/GqM9yq71aJ7xfC0Fnp4zJDQQMVM+D0jqb+3qIA9znGANa1tgThZh1o1h2L1RcrfZ6mSngrPXOvUo8oMyyk8A8Ywdsj+dH/D92tlcy0tWvoqrAJSXIUn4J/wBH+dLH4dUPrL9LdJI6fooQJVSWQRx+Yx+jJJ2Vd2P6e51oU9Gl0D09RWWi6ySu8nlIyN07/wBKsGDLnkb47EDnRv2OxT1DMguv8OzvVPK28fbHt20ButCYCccD440ZrKq4eEqeOWlL1lmdzGYpmJkp256Q2BsRuNuxBAOurqqmr7bHWQKRHKpIDbEHcYP2I1erBxKCHU8y5fJIqrwXIiEZlmiUsN89Tah8f0/R4ZuEVKirGgiRVUY+iGUocj/MEn50qy3WopbfW2+qjaP1EonppXXpGVbuMfA+37503LeqK9T1VRTilkgMId4JZliWXqTomBDEYY5BB4+kHOdHsOmX1KUExtjnb54OuVuhgV2YcEbYPwdEfEVugtd0lpqSshrKcfVFNE4bKns2OGHcZ5GRtqOy25rlcI4Ar+WPrmZVLdMY3Y4+2w98gahFcZGvw/4jnu1JNY7pL1vLCyQvI2OsjJVWPdgc9J+SDztARc4LRa2SboopomJDr9IdWbb9wf3xot+Jvh6mMreIbAjLCDipRV2UrhfNUjbGSAd85GffRW2CCb8N6GKoCsGDHDAH8x/jU6tMNawXDPHl012tktJUKjMysE6uY37MD230n3Khai6aetgw0aAB3xg/pYdu4G59wNFaKujiET9UnnAnrBA6SO2D9uc+2majrYbi3TVLHKpwArKMA7du3302ytLB5CDR3oOHkTPKC02qYg3OrqqdzghI4VIccbNnI2910+eHrnZLJ5gtdNUxUTEKJyFd5sY6/MUENg5IXgDkDOjN2sU5RfOVY1JGQ0avGRkbYxlePy6DW6yUFouS1UsctfibMSwkAIDwrKRvuffHHGhNWR8iheG779Sjcbkl5CWemlFosyuJZfVK3XORj+oKMcADGQNskk6LXVaIrT0FvmiFP5YKNkAPnvnVHxVca1/OqIa1vTklRC6pGycjGAPq/wC30s01PcpKRVi9P0JkLFLKikDngke+2+uo3hOlC+Gf/9k=" onclick="history.go(-1)">
          <a style="color:blue" href="javascript:history.go(-1)"><c:out value='${msg }' /></a>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>