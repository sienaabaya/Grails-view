package gtunes

class StoreController {

    def index() {
        render 'Welcome to the gTunes store!'
    }

    def genre() {
        def max = Math.min(params.int('max') ?: 10, 100)
        def offset = params.int('offset') ?: 0
        def total = Album.countByGenre(params.name)
        def albumList = Album.withCriteria {
            eq 'genre', params.name
            projections {
                artist {
                    order 'name'
                }
            }
            maxResults max
            firstResult offset
        }
        return [albums:albumList,
                totalAlbums:total,
                genre:params.name]
    }

}
