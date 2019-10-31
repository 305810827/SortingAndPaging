$(document).ready(function () {
    $('.top>ul>li').each(function (index) {
        $(this).click(function () {
            removeAllClass();
            $(this).addClass(`sortBtn${index+1}`);
        })
    });
})
function removeAllClass() {
    $('.sortBtn').removeClass(`sortBtn1`);
    $('.sortBtn').removeClass(`sortBtn2`);
    $('.sortBtn').removeClass(`sortBtn3`);
}