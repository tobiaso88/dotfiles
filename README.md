# Install homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

# Bundle brew
```
brew bundle
```

# Setup config
```
rake
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

# Dnsmasq
## 1
```
echo 'address=/.local/127.0.0.1' > /usr/local/etc/dnsmasq.conf
```
## 2
```
sudo brew services start dnsmasq
```
## 3
```
sudo mkdir -v /etc/resolver
sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/local'
```

Now you can test it out by pinging some bogus .test name:
```
ping bogus.local
PING bogus.local (127.0.0.1): 56 data bytes
64 bytes from 127.0.0.1: icmp_seq=0 ttl=64 time=0.044 ms
64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.118 ms
64 bytes from 127.0.0.1: icmp_seq=2 ttl=64 time=0.045 ms
```
