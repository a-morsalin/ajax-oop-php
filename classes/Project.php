<?php
$filepath = realpath(dirname(__FILE__));
include_once ($filepath.'/../lib/Database.php');

class Project{
    private $db;
    public function __construct(){
        $this->db = new Database();
    }

    public  function  checkUserName($username){

        $query = "SELECT * FROM tbl_user WHERE username='$username'";
        $getUser = $this->db->select($query);

        if($username ==''){
            echo "<span class='error'>Please enter username</span>";
            exit();
        }elseif ($getUser){
            echo "<span class='error'>$username not available!</span>";
            exit();
        }else{
            echo "<span class='success'>$username  available!</span>";
            exit();
        }

    }

    public function checkSkill($skill){
        $query = "SELECT * FROM tbl_skill WHERE skill LIKE '%$skill%'";
        $getSkill = $this->db->select($query);

        $result = '';
        $result .='<div class="skill"><ul>';

        if($getSkill){
            while($data= $getSkill->fetch_assoc()){
                $result .='<li>'.$data['skill'].'</li>';
            }
        }else{
            $result = '<li>No Result Found.</li>';
        }
        $result .='</ul></div>';

        echo $result;

    }

    public function liveSearch($search){
        $query = "SELECT * FROM tbl_search WHERE name LIKE '%$search%'";
        $getData = $this->db->select($query);

        if($getData){
            $result = '';
            $result .='<table class="tblone"><tr>
                        <th>Username</th>
                        <th>Name</th>
                        <th>Email</th>                        
                        </tr>';
            while($data= $getData->fetch_assoc()){
                $result .='<tr>
                                <td>'.$data["name"].'</td>
                                <td>'.$data["address"].'</td>
                                <td>'.$data["gender"].'</td>
                           </tr>';
            }
            echo $result;

        }else{
            echo "No Result Found.";
        }
    }

    public function autoRefresh($body){
        $query = "INSERT into tbl_refresh(body) VALUES ('$body')";
        $data = $this->db->insert($query);

    }


    public function getDataWithoutRefresh(){
        $query = "SELECT * FROM tbl_refresh ORDER BY id DESC ";
        $getData = $this->db->select($query);
        $result = '';
        $result .='<div class="data"><ul>';
        if($getData){
            while($data= $getData->fetch_assoc()){
                $result .='<li>'.$data['body'].'</li>';
            }
        }else{
            $result  .='<li>No Result Found</li>';
        }
        $result .='</ul></div>';
        echo $result;
    }

}
?>