let rec print_byte x = print_char x in
let rec write_header _ =
  print_byte 80;                (* P *)
  print_byte (48+3);            (* +6 if binary *)
  print_byte 10;                (* new line *)
  print_int 32;
  print_byte 32;                (* space *)
  print_int 32;
  print_byte 32;                (* space *)
  print_int 255;                (* 0~255 *)
  print_byte 10                 (* new line *)
in
let rgb = create_array 3 0 in
let rec write_rgb x =
  if x <= 3 then
    (rgb.(0)<-255 ;rgb.(1)<-  0 ;rgb.(2)<-   0)
  else if x<=4 then
    (rgb.(0)<-255 ;rgb.(1)<-127 ;rgb.(2)<-   0)
  else if x<=5 then
    (rgb.(0)<-255 ;rgb.(1)<-255 ;rgb.(2)<-   0)
  else if x<=7 then
    (rgb.(0)<-127 ;rgb.(1)<-255 ;rgb.(2)<-   0)
  else if x<=9 then
    (rgb.(0)<-  0 ;rgb.(1)<-255 ;rgb.(2)<-   0)
  else if x<=12 then
    (rgb.(0)<-  0 ;rgb.(1)<-255 ;rgb.(2)<- 127)
  else if x<=15 then
    (rgb.(0)<-  0 ;rgb.(1)<-255 ;rgb.(2)<- 255)
  else if x<=20 then
    (rgb.(0)<-  0 ;rgb.(1)<-127 ;rgb.(2)<- 255)
  else if x<=25 then
    (rgb.(0)<-  0 ;rgb.(1)<-  0 ;rgb.(2)<- 255)
  else if x<=35 then
    (rgb.(0)<-127 ;rgb.(1)<-  0 ;rgb.(2)<- 255)
  else if x<=45 then
    (rgb.(0)<-255 ;rgb.(1)<-  0 ;rgb.(2)<- 255)
  else if x<=60 then
    (rgb.(0)<-255 ;rgb.(1)<-  0 ;rgb.(2)<- 127)
  else
    (rgb.(0)<-0 ;rgb.(1)<-0 ;rgb.(2)<- 0);
  print_byte 32;                (* space *)
  print_int rgb.(0);
  print_byte 32;                (* space *)
  print_int rgb.(1);
  print_byte 32;                (* space *)
  print_int rgb.(2);
  print_char 10
in
let rec yloop y =
  if y >= 32 then () else
    let rec xloop x y =
      if x >= 32 then () else
        let fx = float_of_int x in
        let fy = float_of_int y in
        let cr = fx /. 16.0 -. 1.5 in
        let ci = fy /. 16.0 -. 1.0 in
        let rec iloop i zr zi cr ci=
          if i >= 256 then write_rgb 256 else
            let nr = zr *. zr -. zi *. zi +. cr in
            let ni = 2.0 *. zr *. zi +. ci in
            if zr *. zr +. zi *. zi > 2.0 *. 2.0 then
              write_rgb i
            else
              iloop (i+1) nr ni cr ci in
        iloop 0 0.0 0.0 cr ci;
        xloop (x+1) y in
    xloop 0 y;
    yloop (y+1)
in
write_header ();
yloop 0
