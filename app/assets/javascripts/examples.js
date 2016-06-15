   $(document).ready(function(){

       $("#add").click(function (e) {
           event.preventDefault()
           $("#items").append('<div><input name="phrase[examples][]" type="text" /><button class="delete">Delete</button></div>'); });

       $("body").on("click", ".delete", function (e) {
           $(this).parent("div").remove();
       });

       // console.log('=-=-=CLICK!!!!=-=-=')
    });

























// $(document).ready(function () {
//
//
//     var InputsWrapper   = $("#Input");
//     var addButton       = $("#AddMoreBox");
//
//     var x = Input.length;
//     var FieldCount=1;
//
//     $(addButton).click(function (e) {
//         $(InputsWrapper).append('<div><input type="text" name="example[]" id="field_'+ FieldCount +'"/>');
//         x++;
//
//         $('#AddFileId').show();
//         $('AddMoreBox').html("Add field")
//
//     }
//
// });
//
// $("body").on("click",".removeclass", function(e){
//     if( x > 1 ) {
//         $(this).parent('div').remove();
//         x--;
//
//         $("#AddFileId").show();
//
//         $("#lineBreak").html("");
//
//
//         $('AddMoreBox').html("Add field");
//     }
//     return false;
// })
//
// });




// $(document).ready(function() {
//  var i = 1;
//     $('#add').click(function(){
//         i++;
//     });
// });




// var $template = $('#exampleTemplate'),
//     $clone = $template
//         .clone()
//         .removeClass('hidden example_template')
//         .removeAttr('id')
//         .insertBefore($template),
//     $example = $clone.find('[name="example[]"]');
//
// $('#example_label').formValidation('addField', $example);