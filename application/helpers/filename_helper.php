<?php

if ( ! function_exists('fileName'))
{ 
  function fileName($type, $prefix, $additional_name, $length) {
      $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      $randomString = '';
      for ($i = 0; $i < $length; $i++) {
          $randomString .= $characters[rand(0, strlen($characters) - 1)];
      }

      switch ($type) {
          case 0: 
          return $prefix."_".$slug."_".date('Ymdhis');
          break;

          case 1:  
          return $prefix."_".$randomString."_".date('Ymdhis');
          break;
          
          default:
          return $prefix."_".$additional_name."_".date('Ymdhis');
          break;
      }
  }
} 