<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "store.register.ShopBookDBBean" %>
<%@ page import = "store.register.ShopBookDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<body class="docs framebox_body">
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCqT9GR5FZjVKodrZwdw1flTvXvgFmO_U&sensor=false&libraries=places"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
  <script type="text/javascript">
      var map, places, iw;
      var markers = [];
      var autocomplete;

      function initialize() {
         var myLatlng = new google.maps.LatLng(37.5581482,127.0477185);
         var myOptions = {
            zoom: 14,
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
         };
         map = new google.maps.Map(document.getElementById('GoogleMap_map'), myOptions);
         places = new google.maps.places.PlacesService(map);
         google.maps.event.addListener(map, 'tilesloaded', tilesLoaded);
         autocomplete = new google.maps.places.Autocomplete(document.getElementById('autocomplete'));
         google.maps.event.addListener(autocomplete, 'place_changed', function () {
            showSelectedPlace();
         });
      }

      function tilesLoaded() {
         google.maps.event.clearListeners(map, 'tilesloaded');
         google.maps.event.addListener(map, 'zoom_changed', search);
         google.maps.event.addListener(map, 'dragend', search);
         search();
      }

      function showSelectedPlace() {
         clearResults();
         clearMarkers();
         var place = autocomplete.getPlace();
         map.panTo(place.geometry.location);
         markers[0] = new google.maps.Marker({
            position: place.geometry.location,
            map: map
         });
         iw = new google.maps.InfoWindow({
            content: getIWContent(place)
         });
         iw.open(map, markers[0]);
      }

      function search() {
         var type;
         for (var i = 0; i < document.controls.type.length; i++) {
            if (document.controls.type[i].checked) {
               type = document.controls.type[i].value;
            }
         }
         autocomplete.setBounds(map.getBounds());
         var search = {
            bounds: map.getBounds()
         };
         if (type != 'establishment') {
            search.types = [type];
         }
         places.search(search, function (results, status) {
            if (status == google.maps.places.PlacesServiceStatus.OK) {
               clearResults();
               clearMarkers();
               for (var i = 0; i < results.length; i++) {
                  markers[i] = new google.maps.Marker({
                     position: results[i].geometry.location,
                     animation: google.maps.Animation.DROP
                  });
                  google.maps.event.addListener(markers[i], 'click', getDetails(results[i], i));
                  setTimeout(dropMarker(i), i * 100);
                  addResult(results[i], i);
               }
            }
         });
      }

      function clearMarkers() {
         for (var i = 0; i < markers.length; i++) {
            if (markers[i]) {
               markers[i].setMap(null);
               markers[i] == null;
            }
         }
      }

      function dropMarker(i) {
         return function () {
            markers[i].setMap(map);
         }
      }

      function addResult(result, i) {
         var results = document.getElementById('results');
         var tr = document.createElement('tr');
         tr.style.backgroundColor = (i % 2 == 0 ? '#F0F0F0' : '#FFFFFF');
         tr.onclick = function () {
            google.maps.event.trigger(markers[i], 'click');
         };
         var nameTd = document.createElement('td');
         var name = document.createTextNode(result.name);
         nameTd.appendChild(name);
         tr.appendChild(nameTd);
         results.appendChild(tr);
      }

      function clearResults() {
         var results = document.getElementById('results');
         while (results.childNodes[0]) {
            results.removeChild(results.childNodes[0]);
         }
      }

      function getDetails(result, i) {
         return function () {
            places.getDetails({
               reference: result.reference
            }, showInfoWindow(i));
         }
      }

      function showInfoWindow(i) {
         return function (place, status) {
            if (iw) {
               iw.close();
               iw = null;
            }
            if (status == google.maps.places.PlacesServiceStatus.OK) {
               iw = new google.maps.InfoWindow({
                  content: getIWContent(place)
               });
               iw.open(map, markers[i]);
            }
         }
      }

      function getIWContent(place) {
         var content = '<tr>';
         content += '<b><a href="' + place.url + '">' + place.name + '</a></b>';
         content += '</td></tr></table>';
         return content;
      }
      google.maps.event.addDomListener(window, 'load', initialize);
   </script>
   <style>
         #listing {
         float: center;
         margin-left: 1px;
         height: 326px;
         overflow: auto;
         cursor: pointer;
      }
      #controls {
         padding: 5px;
      }

      #results {
         width: 100%;
      }
      #locationField {
         margin-left: 1px;
      }
      #autocomplete {

         border: 1px solid #ccc;
      }
       #GoogleMap_map {
        height: 400px;
        width: 100%;
       }
       
      #search{
      margin: 20px 0 15px 0;
      width: 100%;
      }       
      
      #div1{
      margin-top: 15px;
      }
       
  </style>

<section class="hoc container clear">   
<div class="masthead">
 <h3 class="text-muted" ><b>내 주변 매장 찾기</b></h3>
<blockquote>
  <footer>시술 받으실 매장을 검색해주세요.</footer>
</blockquote>
<div class="col-md-12 column">
 <div class="panel panel-default">
         <div class="panel-body">
         <div class="row">
         
         <br>
   <div class="col-md-12" id="div2">
   <div id="GoogleMap_map"></div>
   </div>
   
   
     <div class="col-md-12" id="locationField">
           <br><br>
               <input type="text" id="autocomplete"  class="form-control" name="name_keyword" placeholder="주소 또는 매장명을 입력하세요"><br>
              
   </div>

   <div id="controls" align="center">
   <br>
      <form name="controls">
         <input type="radio" name="type" value="beauty_salon" onclick="search()" checked="checked" /> 주변 매장
         <input type="radio" name="type" value="subway_station" onclick="search()" /> 주변 지하철역
         <br/>
      </form>
   </div>
   <br>
   <div id="listing">
      <table class="table table-hover table-bordered results" id="results"></table>
      </div>
      </div>
      </div>
   </div>
   </div>
   </div>
 
</section>