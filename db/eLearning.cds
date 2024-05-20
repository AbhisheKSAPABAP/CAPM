namespace app.elearning;

using {
    Language,     
    managed
} from '@sap/cds/common';

type String50  : String(50);
type String100 : String(100);
type string10  : String(10);


entity Categories {
    key id          : UUID;
        name        : String50;
        description : String100;
        courses     : Association to many Courses
                          on courses.category = $self;
}

entity Courses : managed {
    key category    : Association to Categories;
    key course_id   : UUID;
        course_name : String50;
        price       : string10;
        language    : Language
}
