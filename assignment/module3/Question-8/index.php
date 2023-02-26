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
            margin-top: 30px;
        }
    </style>
</head>

<body>
    <center>
        <div class="container">
            <div class="heading">
                <h1>Compound Interest Calculater</h1>
            </div>
            <form action="" method="post">
                <b class="font1">Entre Principle:</b> <input class="RAD" type="number" name="p"
                    placeholder="Enter Principle">
                      <b class="font1">Enter Time:</b> <input class="RAD" type="number" name="t"
                    placeholder="Enter Time">
                    <b class="font1">Enter Interest Rate:</b> <input class="RAD" type="number" name="i"
                    placeholder="Enter Interest Rate">
                     
                <input class="btn1" type="submit" name="chk" value="submit">
            </form>
            <div class="hg">
            <?php
            if(isset($_POST["chk"]))
            {
                $p =$_POST["p"]; 
                $t =$_POST["t"]; 
                $r =$_POST["i"];
                $CI = NULL;
                
                // p = principle
                // t = time
                // r = rate
                // CI = compound interest
                
                // Calculate compound interest
                $CI = $p * (pow((1 + $r / 100), $t));
                
                // Output
                echo "Compound Interest = " . $CI;
            } 
           ?>
        </div>
        </div>
    </center>
</body>

</html>