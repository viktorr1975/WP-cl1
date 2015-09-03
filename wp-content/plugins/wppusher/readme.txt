=== WP Pusher ===
Tags: git, deploy, deployment, github, workflow
Requires at least: 3.9
Tested up to: 4.2
Stable tag: 2.0.0
License: GPLv2
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Deploy directly from GitHub and never again copy files over FTP. It works everywhere - even on cheap shared hosting!

== Description ==

= Features =

* Install and update your WordPress themes and plugins directly from GitHub
* BitBucket and GitLab support
* Easy version control of your clients code
* Works everywhere because it hooks in to the WordPress core auto updater
* No Git or SSH needed on the server
* **Push-to-deploy** can automatically trigger updates when whenever you push to GitHub
* Support for branches

[Learn more about pricing](http://wppusher.com/#licenses)

= Get started =

If you already use Git for your projects and your themes and plugins are in their own repositories on GitHub, getting started with WP Pusher is simple and easy. Just go to "New plugin" or "New theme" in the WP Pusher menu and type in the repository for the package: github-username/repository-name

If any of your plugins or themes are in private repositories on GitHub, WP Pusher will need a token to access them. You can read GitHub's guide to application tokens [here](https://help.github.com/articles/creating-an-access-token-for-command-line-use/). Paste in the token at WP Pusher settings page.

= Conventions =

* Theme stylesheets _must_ be named the same as the repository
* Plugin directories _must_ be named the same as the repository
* GitHub version tags _must_ be numeric, such as '1.0' or '1.0.1', with an optional preceding 'v', such as 'v1.0.1'
* WordPress version tags _must_ be numeric, such as '1.0' or '1.0.1'

= Git workflow =

The way WP Pusher works, packages (themes and plugins) need to be in their own repositories. If your packages are in their own repositories already, you can safely skip this section. Some developers prefer having their whole WordPress installation under Git, which potentially makes things a bit more complicated. By having all packages in their own repositories, you can easily share code across clients / projects. Since you shouldn’t be editing the core WordPress code, in most cases having the whole project under Git shouldn’t be necessary. However, if for some reason your project require that you have one Git repository for the whole project, you will have to use Git submodules, so that you can still have every package in its own (sub) repository.

== Installation ==

= Uploading in WordPress Dashboard =

1. Navigate to the 'Add New' in the plugins dashboard
2. Navigate to the 'Upload' area
3. Select `wp-pusher.zip` from your computer
4. Click 'Install Now'
5. Activate the plugin in the Plugin dashboard

= Using FTP =

1. Download `wp-pusher.zip`
2. Extract the `wppusher` directory to your computer
3. Upload the `wppusher` directory to the `/wp-content/plugins/` directory
4. Activate the plugin in the Plugin dashboard

== Screenshots ==

1. Plugins installed and managed with WP Pusher
2. The WP Pusher dashboard
3. Manage themes and plugins from the dashboard

== Changelog ==

= 2.0.0 =

Breaking changes:

* Push-to-Deploy: The webhook url now works on a plugin/theme basis, meaning that each plugin and theme has its own unique URL. Please update your webhooks on GitHub and Bitbucket.
* The Pusherfile has been removed from WP Pusher. It's main purpose was to support Composer, and I'm working on an extension instead to provide this functionality.

Bugfixes:

* Licenses are revoked on uninstall
* Error messages have been improved

New Features:

* The UI has been improved
* Behind the scene, most code have been refactored to show better error messages etc.

New extensions:

* WP Pusher Slack Notifications: https://github.com/wppusher/wppusher-slack

= 1.1.8 =

Bugfixes:

* Update plugin to handle changes in Bitbucket webhooks

= 1.1.7 =

* Issues with database table prefixes in network installations

= 1.1.6 =

Bugfixes:

* Exclude WP Pusher plugins and themes from w.org update checks

New stuff:

* Install plugins and themes from subdirectories (like wp-content/themes/Awesome-Theme)
* Friendly welcome hero unit after install

= 1.1.5 =

Bugfixes:

* 2 options not being deleted on uninstall
* Bug using multiple networks plugin
* Small fix to licenses

= 1.1.4 =

Bugfixes:

* Failing SQL query on Multisite installations in plugin overview
* Add index.php files to all directories and make sure no template files are directly accessible

New stuff:

* Add link to documentation in footer (documentation updates coming soon)

= 1.1.3 =

Bugfixes:

* Make sure we don't get stuck in maintenance mode if installation fails
* Plugins were accidentally reactivated for the network, even if they were only activated for one site

= 1.1.2 =

Bugfixes:

* Push-to-Deploy not showing on edit package pages

= 1.1.1 =

Bugfixes:

* Settings API bug: Updating license key could result in reset Push-to-Deploy token (if you experience this, you need to copy the new web hook URL from the dashboard to GitHub / Bitbucket / GitLab. Sorry!!)

New stuff:

* New UI on plugins and themes overview
* Unlink packages from WP Pusher (connect them again with "dry run")
* WP 4.2 style spinning wheels on update buttons
* Dedicated pages to edit packages

= 1.1.0 =

* New licensing model
* Free version now supports Push-to-Deploy and branches
* Private repositories will from now on require a license

= 1.0.9 =

* Logger: Enable / disable logging for debug purposes
* Use HTTPS for WP Pusher logo

= 1.0.8 =

* Push-to-Deploy for GitLab repositories
* Remove 'manage' links on multisite
* DB cleanup of delete plugins

= 1.0.7 =

* Bug when installing and updating themes

= 1.0.6 =

* Support for including a wppusher.php file to run commands on installation and updating: https://gist.github.com/petersuhm/9b7f4e4886519fc3a8a8
* Actions after packages are installed or updated
* Support for GitLab

= 1.0.5 =

* Add dry run feature in order to set up already installed plugins

= 1.0.4 =

* Auto updates

= 1.0.3 =

* Bugfix: Make sure plugin is reactivated after update
* Activation links on multisite
* Support for dots in repository names

= 1.0.2 =

* Added support for multisite setups

= 1.0.1 =
* Add support for branches in Pro version

= 1.0.0 =
* No more beta
* Release of WP Pusher Pro

= 0.1.2 =
* Minor bugfixes

= 0.1.1 =
* Bitbucket support for public and private repositories
* Activate repositories directly after installation
* Better house keeping after plugin deletion

= 0.1.0 =
* Public BETA release
