$(document).ready(function () {
    const $img = $('.upload-file-img');
    const originalSrc = $img.data('default-src') || $img.attr('src');
    const originalDescription = $('#description-page').val();

    $('form').on('reset', function () {
        setTimeout(() => {
            $img.attr('src', originalSrc).show();
            $img.closest('.upload-file').find('.overlay').addClass('show');
            $img.closest('.upload-file').find('.remove_btn').css('opacity', '1');
            $img.closest('.upload-file').find('.upload-file-textbox').css('display', 'none');
            $('#description-page').val(originalDescription);

            const quill = $('#description-page-editor').data('quill');
            if (quill) {
                quill.root.innerHTML = originalDescription;
                $('#description-page').val(originalDescription);
            }
        }, 0);
    });
});
