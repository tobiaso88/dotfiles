To install run rake

# Install homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

# Fix permissions for apache logs
```
chown -R tobias:staff /usr/local/var/log/httpd
```

# Add php settings
```
cat ~/dotfiles/php/5.6/php-fpm.conf >> /usr/local/etc/php/5.6/php-fpm.conf
cat ~/dotfiles/php/7/php.ini >> /usr/local/etc/php/7.1/php.ini
cat ~/dotfiles/php/7/php.ini >> /usr/local/etc/php/7.2/php.ini
cat ~/dotfiles/php/7/php.ini >> /usr/local/etc/php/7.3/php.ini
cat ~/dotfiles/php/7/php.ini >> /usr/local/etc/php/7.4/php.ini
```
