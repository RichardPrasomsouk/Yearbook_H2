let $img = document.querySelectorAll("ul li");
let $btn_left  = document.getElementById("carousel__list--js-btn-left");
let $btn_right = document.getElementById("carousel__list--js-btn-right");

let first = 0;


$btn_right.addEventListener("click", function (){

    if ( first < $img.length ){

        $img[first].classList.remove('carousel__list--images-first-image');


        first += 1;



        if ( first > ($img.length-1)){

            first = 0

        }

        $img[first].classList.add('carousel__list--images-first-image');



    }});

$btn_left.addEventListener('click', function (){


    if (first < $img.length){

        $img[first].classList.remove('carousel__list--images-first-image');



        if (first === 0 ) {
            first = 6

        }

        first -= 1;


        $img[first].classList.add('carousel__list--images-first-image');



    }

});



