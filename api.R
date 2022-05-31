#*@apiName Canciones
#*@apiTitle Canciones
#*@apiDescription Esta API devuelve las canciones 
#*mas populares

#* @param nombre Indica nombre del artista
#* @get /canciones

cantante<-function(nombre){
  library(spotidy)
  library(dplyr)
  SPOTIFY_CLIENT_ID <-"79ba4f46f96048509889804d6ae01f8c"
  SPOTIFY_CLIENT_SECRET <- "840aa37dd39a4b01a3d388f4d61ec931"
  my_token <- get_spotify_api_token(SPOTIFY_CLIENT_ID, SPOTIFY_CLIENT_SECRET)
  
  id_artista<-search_artists(
    "nombre",
    output = c("tidy", "raw", "id"),
    limit = 20,
    offset = 0,
    token = my_token
  )
  
  ARTIST_2<-get_artist_top_tracks(
    "id_artista",
    country="ES",
    output = c("tidy", "raw"),
    limit = 20,
    offset = 0,
    token = my_token)
  
  TRACK<-artista%>%select(name)
  POULARIDAD<-artista%>%select(popularity)
  
  
  print(paste(" La canción", TRACK," del cantante", ARTIST_2, "tiene una popularidad de", POPULARIDAD,". Este artista se hizo muy famoso por colaborar con ",ARTIST_1,))
}


