import stdlib.web.canvas


function do_it(){
  mycan = Canvas.get(#myCanvas);
  match(mycan){
  case {none}:{};

  case {some:mycan}:
  	  {
  	  	  //mycan=Canvas.get(#test);
	  	  Canvas.canvas meincan=mycan;
		  mytext=Canvas.get_context_2d(mycan);
		  match(mytext){
		  	case{none}:{}
		  	case{some:mytext}:
		  	  {
		  	  	Canvas.begin_path(_);
		  		Canvas.move_to(mytext,10,10);
		  		Canvas.line_to(mytext,200,200);
		  		Canvas.stroke(mytext);
		  	  }
		  }
		  
	  };
  }

}

function page(){
	<div id=test onready={function(_){do_it()}}> test</div>
	<canvas id="myCanvas" width="578" height="200" style="background-color:gray;"></canvas>

}

Server.start(Server.http,
  [ {resources: @static_resource_directory("resources")}
  , {title: "Canvas Test", ~page}
  ]
)