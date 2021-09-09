<?php

$sql_agent = "SELECT * FROM tbl_house_agents WHERE agent_id ORDER BY agent_id ASC;";
    $result_agent = mysqli_query($conn, $sql_agent);
