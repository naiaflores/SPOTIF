#2. Con el paquete spotidy realiza una consulta para seleccionar 
#los 10 artistas que han hecho las colaboraciones más populares con Rosalía. 
#De dichos artistas, selecciona las canciones en las que no colaboran con ningún 
#artista adicional y quédate con la de publicación más reciente


library(spotidy)
library(dplyr)

SPOTIFY_CLIENT_ID <-"79ba4f46f96048509889804d6ae01f8c"
SPOTIFY_CLIENT_SECRET <- "840aa37dd39a4b01a3d388f4d61ec931"
my_token <- get_spotify_api_token(SPOTIFY_CLIENT_ID, SPOTIFY_CLIENT_SECRET)

#comprueblo cual es el id de rosalia
Rosalia_artists<-search_artists(
  "ROSALÍA",
  output = c("tidy", "raw", "id"),
  limit = 20,
  offset = 0,
  token = my_token
)

#artistas relacionados con rosalia
ROSALIA<-get_artist_related_artists(
  "7ltDVBr6mKbRvohxheJ9h1",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
ROSALIA<-ROSALIA%>%arrange(desc(popularity))
ROSALIA<-ROSALIA[1:10,]

#top rosalia
cTangana<-get_artist_top_tracks(
  "5TYxZTjIPqKM8K8NuP9woO",
  country="US",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
cTangana<-cTangana%>%arrange(desc(popularity))%>%filter(!artist_name=="C. Tangana")

Nathy<-get_artist_top_tracks(
  "3VHAySZQPlfGlNLslzXYpN",
  country="US",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
Nathy<-Nathy%>%arrange(desc(popularity))%>%filter(!artist_name=="Nathy Peluso")

Cruzzi<-get_artist_top_tracks(
  "0jeYkqwckGJoHQhhXwgzk3",
  country="US",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

Kidkeo<-get_artist_top_tracks(
  "0VZrPa7mWAYXH4CwmYk8Km
",
  country="US",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

badgyal<-get_artist_top_tracks(
  "4F4pp8NUW08JuXwnoxglpN
",
  country="US",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

alvarodiaz<-get_artist_top_tracks(
  "5J7rXWjtn5HzUkJ4Jet8Fr",
  country="US",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

lolaindigo<-get_artist_top_tracks(
  "3bvfu2KAve4lPHrhEFDZna",
  country="US",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

lolaindigo<-get_artist_top_tracks(
  "4bJh7sMPcVRiqe5jlnsWQV",
  country="US",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

lolaindigo<-get_artist_top_tracks(
  "1rTUwYS38LkQTlT2fhikch",
  country="US",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

lelepons<-get_artist_top_tracks(
  "6i3DxIlAqnDkwELLw4aVrx",
  country="US",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)


rosalia<-rosalia%>%arrange(desc(popularity))%>%filter(!artist_name=="ROSALÍA")
rosalia_top<-rosalia[1,]

