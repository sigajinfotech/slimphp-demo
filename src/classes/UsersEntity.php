<?php
class UserEntity
{
    protected $id;
    protected $name;
    protected $team_names;

    /**
     * Accept an array of data matching properties of this class
     * and create the class
     *
     * @param array $data The data to use to create
     */
    public function __construct(array $data) {
        $this->id = $data['user_id'];
        $this->name = $data['first_name']." ".$data['last_name'];
        $this->team_names = $data['team_names'];
    }
}
?>