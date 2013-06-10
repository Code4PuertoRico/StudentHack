package strudanthack

/**
 * Student
 * A domain class describes the data object and it's mapping to the database
 */
class Student {
    String name
    String address
    boolean present = false;

    /* Default (injected) attributes of GORM */
//	Long	id
//	Long	version

    /* Automatic timestamping of GORM */
//	Date	dateCreated
//	Date	lastUpdated

	static belongsTo	= [parents: Parent, school: School]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
	static hasOne		= [school:School]	// tells GORM to associate another domain object as an owner in a 1-1 mapping
	static hasMany		= [parents:Parent]	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static mappedBy		= []	// specifies which property should be used in a mapping 

    static mapping = {
    }

    static constraints = {
        name(blank: false)
    }

    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
    public String toString() {
        return "${name}";
    }
}
