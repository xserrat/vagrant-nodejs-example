# Steps:

1. Clone repository: `git clone ` 
2. Execute `vagrant up` on the root of the project
3. Then, execute `vagrant ssh` and type `node -v`. You should see: `v10.16.1`.

# PM2

PM2 process manager is already installed. To use in this nodejs app example you need to execute `pm2 start /var/www/app/app.js`.
Then go to your browser and type: `192.168.33.10:3000` to show the hello world app running.

Now we got our application running in background using the PM2 process manager.

Then, to run ensure that the app is always running even if the server is rebooted, we have to configure PM2 to initialise it when the server starts.
To do that we execute:

`pm2 startup`

The previous command will print a command that configures PM2 to be initialised on every reboot.
After execute it, we have to run the app through PM2 if we haven't done it previously (`pm2 start app.js`)

Then, we only need to save the current process list of PM2:
 
 `pm2 save`
 
Finally, we can check that the PM2 will be started after a reboot!