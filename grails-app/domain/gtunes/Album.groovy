package gtunes

class Album {

    String title
    static hasMany = [songs:Song]
    int yearOfRelease
    String producer

    static constraints = {
        title blank: false
        yearOfRelease null: true
        producer nullable: true
    }
}
