docker ps
docker kill $(docker ps)
docker rm $(docker ps -a)
docker rmi $(docker images)
docker build -t colour_sequence_image ./games/colour_sequence_game
docker run -itd --name colour_sequence_cont -p 1000:80 colour_sequence_image
docker build -t find_pairs_image ./games/find_pairs_game
docker run -itd --name find_pairs_cont -p 1001:80 find_pairs_image
docker build -t tic_tac_toe_image ./games/tic_tac_toe_game
docker run -itd --name tic_tac_toe_cont -p 1002:80 tic_tac_toe_image
docker build -t dashboard_image ./games
docker run -itd --name dashboard_cont -p 1005:80 dashboard_image
