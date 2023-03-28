$(function () {
    $("#wizard").steps({
        headerTag: "h4",
        bodyTag: "section",
        transitionEffect: "fade",
        enableAllSteps: true,
        onStepChanging: function (event, currentIndex, newIndex) {
            if (newIndex === 1) {
                $(".wizard > .steps ul").addClass("step-2");
            } else {
                $(".wizard > .steps ul").removeClass("step-2");
            }
            if (newIndex === 2) {
                $(".wizard > .steps ul").addClass("step-3");
            } else {
                $(".wizard > .steps ul").removeClass("step-3");
            }
            if (newIndex === 3) {
                $(".wizard > .steps ul").addClass("step-4");
            } else {
                $(".wizard > .steps ul").removeClass("step-4");
            }
            return true;
        },
        labels: { finish: "Submit", next: "Continue", previous: "Back" },
    });
    $(".forward").click(function () {
        $("#wizard").steps("next");
    });
    $(".backward").click(function () {
        $("#wizard").steps("previous");
    });
    var dp1 = $("#dp1").datepicker().data("datepicker");
    dp1.selectDate(new Date());
});
