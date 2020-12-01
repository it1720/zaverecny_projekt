// Problém s CORS
 $(document).ready(function() {
    $.getJSON("data.json",function(data){
        $.each(data,function(key,value){
            console.log(value.name)
        });
    });
});
