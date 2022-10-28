let rotate = 0;
        const progess = [
        	["progress-bar-step","progress-bar-step","progress-bar-step","progress-bar-step-2","progress-bar-step-2","progress-bar-step-2"],
            ["progress-bar-step-2","progress-bar-step","progress-bar-step","progress-bar-step","progress-bar-step-2","progress-bar-step-2"],
            ["progress-bar-step-2","progress-bar-step-2","progress-bar-step","progress-bar-step","progress-bar-step","progress-bar-step-2"],
            ["progress-bar-step-2","progress-bar-step-2","progress-bar-step-2","progress-bar-step","progress-bar-step","progress-bar-step"],
            ["progress-bar-step","progress-bar-step-2","progress-bar-step-2","progress-bar-step-2","progress-bar-step","progress-bar-step"],
            ["progress-bar-step","progress-bar-step","progress-bar-step-2","progress-bar-step-2","progress-bar-step-2","progress-bar-step"],
        ];
         
        function progressBar(){
        	let items = document.querySelectorAll(".progress");
        	for(let i=0;i<items.length; i++){
           		items[i].classList.remove("progress-bar-step");
           		items[i].classList.remove("progress-bar-step-2");
           		items[i].classList.add(progess[rotate][i]);
        	}
        	if(rotate == (items.length - 1)){
           		rotate = 0;
        	}else{
                rotate = rotate + 1;
            }
        }
        
        let idinterval = setInterval (progressBar, 50);

        setTimeout(loadMainPage,2000);

        function loadMainPage(){
            clearInterval (idinterval);
            window.location="identification.html";
        }