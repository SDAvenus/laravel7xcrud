<div id="demo" class="carousel slide" data-ride="carousel">
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>
                    
    <div class="carousel-inner">
        <ol class="carousel-indicators">
            <?php 
                $i=0; 
            ?>
             @foreach($slides as $sl)
                <li data-target="#carouselExampleIndicators" data-slide-to="{{$i}}" @if($i == 0) class="active">
                     @endif  
                    </li>
                        <?php 
                            $i++;
                         ?>
                        @endforeach
         </ol>
     <div class="carousel-inner">
        <?php 
            $i=0 
        ?>
         @foreach($slides as $slide)  
             @if ($slide->slide_image)
                 <?php
                     $slide->slide_image = str_replace("public/", "", $slide->slide_image);
                ?>
                 <div @if($i == 0) class="carousel-item active" @else class="carousel-item"      @endif>
                     <?php 
                         $i++; 
                     ?>      
                         <img class="d-block w-100" style="height:300px" src='{{asset("/storage/$slide->slide_image")}}'>   
                         <div class="carousel-caption">
                             <h3 class="text-primary">FreshFood</h3>
                             <p class="text-body">Organic vegetables with delivery straight to your door</p>
                        </div>      
             @endif
                 </div>
	     @endforeach

            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                     <span class="carousel-control-prev-icon"></span>
            </a>
             <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
            </a>
                          
         </div>
                    
     </div>