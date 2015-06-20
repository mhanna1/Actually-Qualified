/**
 * Created by mark on 5/20/15.
 * This javascript function creates a clock in the format of
 *    SAT MAY 11 2015 16:00:43    counting up by seconds
 */


function pgClock() {
    var sTime = (new Date()).toString();
    document.getElementById('clockid').innerHTML =
        sTime.substring(0, 3 + sTime.lastIndexOf(':'));
    setTimeout('pgClock()', 333);
}

/**
 * Created by mark on 5/20/15.
 * This javascript function startTickin() calls the clock on window open
 */


window.onload = function startTickin() {
    pgClock();
}