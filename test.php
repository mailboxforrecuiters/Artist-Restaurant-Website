 <?php 


function SimplePassword($str) {
 $pattern = "/\bpassword\w*/i";
 if (   
        ( preg_match("/[=+*\/\-]/",$str) || preg_match("/[.?!:,;]/",$str) ) &&
        !preg_match("/\bpassword\w*/i",$str) &&           
         preg_match("/\d/", $str)  && 
         preg_match("/[A-Z]/",$str) && 
         preg_match("/[a-z]/", $str) && 
         strlen(trim($str)) >7  && 
         strlen(trim($str) <31 )   ){
   $check = "true";
 }else{
   $check = "false";
 }
  // code goes here
  return $check;

}
echo  SimplePassword("turkey90AAA=");

  ?>
