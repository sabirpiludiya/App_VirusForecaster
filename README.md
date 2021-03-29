# Dash App for Covid-19 Forecast

https://virusforecaster.herokuapp.com/




## INSTALLING PM2 for running app in background
PM2 depends on Node.js. To install Node it’s pretty straightforward:

```
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
```

Now to install PM2 type:
```
sudo npm install pm2 -g
```

## Nginx configuration

```
  server_name {DNS_NAME};

        location / {
                proxy_pass http://localhost:5000;

                proxy_http_version 1.1;
                proxy_set_header Upgrade $http_upgrade;
                proxy_set_header Connection 'upgrade';
                proxy_set_header Host $host;
                proxy_cache_bypass $http_upgrade;
        }
```
