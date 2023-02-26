<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .container {
            width: 500px;
            height: 500px;
            background-color: aquamarine;
            border: 2px solid black;
            border-radius: 23px;
            font-size: 20px;
        }

        .RAD {
            width: 90%;
            height: 30px;
            border: 2px solid black;
            border-radius: 20px;
        }

        .font1 {
            font-size: 25px;

        }

        .btn1 {
            width: 30%;
            height: 40px;
            margin-top: 20px;
            font-size: 25px;
            background-color: rgb(138, 214, 213);
            border: 3px solid black;
            padding: 2px;
            border-radius: 23px;
        }

        .btn1:hover {
            background-color: rgb(84, 86, 89);
        }
        .hg
        {
            font-size: 25px;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <center>
        <div class="container">
            <div class="heading">
                <h1>Find Area Of Triangle</h1>
            </div>
            <form action="" method="post">
                <b class="font1">Enter base Of Triangle:</b> <input class="RAD" type="number" name="BASE"
                    placeholder="Enter Base">
                    <b class="font1">Enter height Of Triangle:</b> <input class="RAD" type="number" name="HEIGHT"
                    placeholder="Enter Height">
                <input class="btn1" type="submit" name="chk" value="submit">
            </form>
            <?php
            if(isset($_POST["chk"]))
            {
                 $base=$_POST["BASE"];
                  $height=$_POST["HEIGHT"];
                 $area=$base*$height/2;
                echo "<h1> Area of Square is :.$area </h1>";
            }
           ?>

        </div>
    </center>
</body>

</html>