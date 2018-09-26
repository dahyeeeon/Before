<script src="http://momentjs.com/downloads/moment-with-locales.js"></script>
<script src="http://momentjs.com/downloads/moment-timezone-with-data.js"></script>


Time Zone: Europe/London

<div class="container" style="margin-top:70px;">
	<div class="row">
        <form class="form-horizontal col-sm-7 col-sm-offset-2" action="" method="post">
            <div class="form-group registration-date">
                <label class="control-label col-sm-3" for="registration-date">Date:</label>
            	<div class="input-group registration-date-time">
            		<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></span>
            		<input class="form-control" name="registration_date" id="registration-date" type="date">
            		<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-time" aria-hidden="true"></span></span>
            		<input class="form-control" name="registration_time" id="registration-time" type="time">
            		<span class="input-group-btn">
            	    	<button class="btn btn-default" type="button" onclick="addNow()"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Now</button>
                    	<button class="btn btn-default" type="button" onclick="stopNow()"><span class="glyphicon glyphicon-minus-sign" aria-hidden="true"></span> Stop</button>
                    </span>
            	</div>
            </div>
        </form>
	</div>
</div>

<script>
function addNow() {
	  nowDate = moment().tz("Europe/London").format('YYYY-MM-DD');
	  nowTime = moment().tz("Europe/London").format('HH:mm:ss');
	  document.getElementById('registration-date').value = nowDate;
	  document.getElementById('registration-time').value = nowTime;
	  set = setTimeout(function () { addNow(); }, 1000);
	}

	function stopNow() {
	  clearTimeout(set);
	}
</script>