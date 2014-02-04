class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
        "/albumList"(controller: "album", action: "list")
        "/albumShow"(controller: "album", action: "show")
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
