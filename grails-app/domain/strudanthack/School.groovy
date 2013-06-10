package strudanthack

/**
 * School
 * A domain class describes the data object and it's mapping to the database
 */
class School {
    String schoolName
    String address
    String district

    /* Default (injected) attributes of GORM */
//	Long	id
//	Long	version

    /* Automatic timestamping of GORM */
//	Date	dateCreated
//	Date	lastUpdated

//	static belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
	static hasMany		= [teachers:Teacher, students:Student, schoolClasses:SchoolClass]
//	static mappedBy		= []	// specifies which property should be used in a mapping 

    static mapping = {
    }

    static constraints = {
        schoolName(blank: false)
        district(blank: false)
    }

    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${schoolName}";
	}
}
