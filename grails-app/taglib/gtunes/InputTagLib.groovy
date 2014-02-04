package gtunes

class InputTagLib {

    static namespace = "gtunes"

    def hello = { attrs, body ->

        out << "Hello " + attrs?.name +" age " + attrs?.age
    }


}
