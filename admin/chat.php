<?php
    // Check if a message is sent
    if(isset($_POST['message'])){
        $message = $_POST['message'];
        
        // Save the message to a file
        $file = fopen("chat.txt", "a");
        fwrite($file, $message . PHP_EOL);
        fclose($file);
    }
?>

<!DOCTYPE html>
<html>
<head>
    <title>Chat Server</title>
</head>
<body>
    <h2>Chat Server</h2>
    <div id="chatbox">
        <?php
            // Display the chat history
            if(file_exists("chat.txt")){
                $chatContent = file_get_contents("chat.txt");
                $messages = explode(PHP_EOL, $chatContent);
                
                foreach($messages as $message){
                    echo "<p>" . $message . "</p>";
                }
            }
        ?>
    </div>
    <script>
        // Auto-refresh the chatbox every 2 seconds
        setInterval(function(){
            location.reload();
        }, 2000);
    </script>
</body>
</html>