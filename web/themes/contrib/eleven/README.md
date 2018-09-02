# eleven: A Drupal 8 administration theme

> this one goes to 11 —mortendk
An Admin theme that is build to make Drupal Prettier to look at for content editors, sitebuilders & developers.


## Slack 
Find us at drupal.slack.com `#eleven`
https://drupal.slack.com/messages/C78T43P34

## Installation

### Dependencies
There is a dependency on the core help module

### Drush
```
drush dl eleven
drush en eleven -y
drush config-set system.theme admin eleven -y
```

### Drupal Console
```
drupal theme:install eleven
drupal config:override system.theme admin eleven
```

### Composer
```
composer config repositories.eleven vcs https://github.com/thememachine/eleven
composer require thememachine/eleven
```

### Manually
Download latest release from  [Drupal.org](https://www.drupal.org/project/eleven)
Go to the apparence page in your drupal site `/admin/appearance` 

Afterwards enable modules as usual.

## Uninstall

### drush 
```
drush pm-uninstall eleven elevenfeat -y
```

### Drupal Consule
```
drupal theme uninstall eleven
```
## Demo

Visit [Eleven Theme](http://eleventheme.com/) for the demo and screenshots.


## Keep in touch 
https://twitter.com/hashtag/eleventheme?src=hash
