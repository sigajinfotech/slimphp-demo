<?php 
class UsersMapper extends Mapper{
	public function getUsers(){
		$sql = "SELECT final.user_id, u.first_name, u.last_name, GROUP_CONCAT(t.name SEPARATOR ',') AS team_names FROM (
					SELECT 
						user_id, GROUP_CONCAT(team_id SEPARATOR ',') AS team_ids, COUNT(team_id) AS team_count 
					FROM teams_users
					GROUP BY user_id 
					ORDER BY team_count DESC 
				) AS final 
				INNER JOIN teams t ON FIND_IN_SET(t.id,final.team_ids) 
				INNER JOIN users u ON final.user_id=u.id 
				GROUP BY final.user_id";
		$stmt = $this->db->query($sql);
        $results = [];
        while($row = $stmt->fetch()) {
            $results[] = $row;
        }
        return $results;
	}
}