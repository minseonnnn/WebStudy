window.onload=()=>{
	for(let i=1;i<=7;i++)
	{	
	  let img=document.createElement('img') // <img>
	  img.src='m'+i+'.jpg'
	  img.width=150
	  img.height=220
	  img.title='영화명'
	  // <img src="" width="" height="" title="">
	  document.body.appendChild(img)
	} 
}