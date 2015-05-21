
<script type="text/javascript">

    function pgClock() {
        var sTime=(new Date()).toString();
        document.getElementById('clockid2').innerHTML =
            sTime.substring(0,3+sTime.lastIndexOf(':'));
        setTimeout('pgClock()',333);
    }


window.onload=function(){
        pgClock();
    }

    </script>
