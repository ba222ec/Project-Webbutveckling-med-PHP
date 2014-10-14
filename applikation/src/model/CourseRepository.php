<?php

namespace model;

require_once dirname(__FILE__) . '/Course.php';
require_once dirname(__FILE__) . '/UserRepository.php';

class CourseRepository extends Repository {

    private static $relationTable = 'courseparticipation';
    private static $courseKey = 'course';
    private static $userKey = 'user';

    private static $tableName = 'course';
    private static $id = 'id';
    private static $name = 'name';
    private static $description = 'description';

    public function getCoursesWithParticipationBy($userId) {
        try {
            $connection = $this -> getConnection();

            $sql = "SELECT " . self::$tableName . "." . self::$id . ", " . self::$tableName . "." . self::$name . ", " . self::$tableName . "." . self::$description . 
                   " FROM " . self::$relationTable . 
                       " INNER JOIN " . UserRepository::$tableName . " ON " . self::$relationTable . "." . self::$userKey . " = " . UserRepository::$tableName . "." . UserRepository::$id .
                       " INNER JOIN " . self::$tableName . " ON " . self::$relationTable . "." . self::$courseKey . " = " . self::$tableName . "." . self::$id .
                   " WHERE " . UserRepository::$tableName . "." . UserRepository::$id . " = ?";
            $param = array($userId);

            $query = $connection -> prepare($sql);
            $query -> execute($param);
            
            return $this -> makeToCourseObjects($query -> fetchAll());

        } catch (\Exception $e) {
            throw new \Exception($e -> getMessage(), -1);
        }
    }

    public function getAllCourses() {
        try {
            $connection = $this -> getConnection();
            
            $sql = "SELECT * FROM " . self::$tableName;
            $param = array();

            $query = $connection -> prepare($sql);
            $query -> execute($param);

            return $this -> makeToCourseObjects($query -> fetchAll());

        } catch (\Exception $e) {
            throw new \Exception($e -> getMessage(), -1);
        }
    }
    
    private function makeToCourseObjects($results) {
        $ret = null;
        if ($results != null) {
            $ret = array();
            
            foreach ($results as $result) {
                $ret[] = new Course($result[self::$id], $result[self::$name], $result[self::$description]);
            }
        }
        
        return $ret;
    }

}
