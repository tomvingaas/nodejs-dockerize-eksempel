# eksempel på å dockerize en enkel node.js app

## bygg image fra dockerfile:
docker build . -t tomvingaas/node-web

## kjør opp docker-image'et:
docker run -p 4545:8080 -d  tomvingaas/node-web

## test at ting kjører ved å gå i nettleseren og gå til denne url'en:
http://localhost:4545/