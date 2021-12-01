#!/bin/bash

echo "
<html>
  <head>
    <title>knx-uf-icons _Overview</title>
    <style>
      body {
        background-color: #000000;
        color: #FFFFFF;
      }
      .box {
        float: left;
        text-align: center;
        margin: 15px;
        padding: 5px;
      }
      img {
        width: 100px;
      }
    </style>
  </head>
  <body>" > overview.html

for IMG in `ls -1 raw_svg/`; do
  NAME=`echo $IMG | cut -d . -f 1`

  echo "<div class='box'>
          <img src='raw_svg/$IMG'>
          <br>
          $NAME
        </div>" >> overview.html
done

echo "</body></html>" >> overview.html
