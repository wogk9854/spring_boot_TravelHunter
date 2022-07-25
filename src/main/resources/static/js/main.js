window.addEventListener("load",function(){

    	var header=document.getElementById("header");
		var [top, menu_zone]=header.children;
	    
		var gnb=document.getElementById("gnb");
		var gnbUl=gnb.firstElementChild;
		var dep1Li=gnbUl.children;
		var search_pop=document.getElementsByClassName("search_pop")[0];
		var pop_inner=document.getElementsByClassName("pop_inner")[0];
		//var pop_inner=search_pop.firstElementChild;
		var pop_close=pop_inner.lastElementChild;
		
		
		//코로나 안내문
		var covid=document.getElementsByClassName("covid")[0];
		var covid_close=covid.lastElementChild;
		
		covid_close.addEventListener("click",function(){
			covid.classList.add("cancle");
			header.classList.add("cancle");
		});
		
		
		
		//스크롤시 메뉴 위치 offset top수정
		window.addEventListener("scroll",function(){
			var t=window.pageYOffset;
			if(0 < t){
				dep1Li[0].classList.remove("active");
			}
			if(45 < t){
				menu_zone.classList.add("on");
			}
			else{
		 		menu_zone.classList.remove("on");
			}
			
		});
		var scrollTrigger=document.createEvent("UiEvent");
		scrollTrigger.initEvent("scroll");			 	
		window.dispatchEvent(scrollTrigger);

		//GNB
		dep1Li[0].firstElementChild.addEventListener("click",function(e){
			e.preventDefault();
			if(dep1Li[0].classList.contains("active") == false){
				dep1Li[0].classList.add("active");
			}
			else{
				dep1Li[0].classList.remove("active");
			}
		});
		pop_close.addEventListener("click", function(e){
			e.preventDefault();
			dep1Li[0].classList.remove("active");
		});
		
		//GNB hover
		for(var i=0; i<dep1Li.length; i++){
			dep1Li[i].addEventListener("mouseover",function(e){
				e.currentTarget.classList.add("over");	
			});
			dep1Li[i].addEventListener("mouseleave",function(e){
				e.currentTarget.classList.remove("over");	
			});

			dep1Li[i].idx=i;
			dep1Li[i].firstElementChild.addEventListener("focusin",function(e){
				var n=e.currentTarget.parentNode.idx;
				for(var k=0; k<dep1Li.length; k++){
				 	if(n == k){
				 		dep1Li[k].classList.add("over");
				 	}
				}
			});

			var lastChild=document.querySelectorAll("#gnb li li:last-child li:last-child a");
			var lastChild4=document.querySelector("#gnb > ul > li:nth-child(4) > a");
			var lastChild5=document.querySelector("#gnb > ul > li:last-child > a");
			
			for(var j=0; j<lastChild.length; j++){
				lastChild[j].addEventListener("focusout",function(e){
					for(var k=0; k<dep1Li.length; k++){
						dep1Li[k].classList.remove("over");
					}
				});
			}
			lastChild4.addEventListener("focusout",function(e){
				for(var k=0; k<dep1Li.length; k++){
					dep1Li[k].classList.remove("over");
				}
			});
			lastChild5.addEventListener("focusout",function(e){
				for(var k=0; k<dep1Li.length; k++){
					dep1Li[k].classList.remove("over");
				}
			});
			
		}
    
});
