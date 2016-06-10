$(document).on('page:change', function() {

    $(".like").click(function() {
        // if liked already - do NOTHING.
        // return;
        var $this = $(this);

        $.ajax({
            type: "POST",
            url: '/likes',
            data: {
                value: 1,
                type: 'phrase',
                id: $this.parents('.phrase').attr('id')
            },
            success: function(data) {
                console.log(data);
                var $counter = $this.siblings('.counter');
                $counter.text( $counter.text()*1 + data.value);
                $this.attr('disabled', 'disabled');
                $this.siblings('.dislike').attr('disabled', 'disabled');
            },
            error: function(e) {
                console.error('error occurred:', e);
            },
            dataType: 'JSON'
        });

    });

});





$(document).on('page:change', function() {

    $(".dislike").click(function() {
        // if liked already - do NOTHING.
        // return;
        var $this = $(this);

        $.ajax({
            type: "POST",
            url: '/likes',
            data: {
                value: -1,
                type: 'phrase',
                id: $this.parents('.phrase').attr('id')
            },
            success: function(data) {
                console.log(data);
                var $counter = $this.siblings('.counter');
                $counter.text( $counter.text()*1 + data.value);
                $this.attr('disabled', 'disabled');
                $this.siblings('.like').attr('disabled', 'disabled');
            },
            error: function(e) {
                console.error('error occurred:', e);
            },
            dataType: 'JSON'
        });

    });

});


