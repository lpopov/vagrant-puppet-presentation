# Virtualized Development Environments with Vagrant and Puppet

## Directory structure

```
presentation/   # reveal.js presentation
public/         # public viewable directory for the demo
puppet/         # puppet scripts
sql/            # mysql db data
README.md       # readme file
Vagrantfile     # Vagrant configuration
```

## How to see the presentation?

1. Clone the repository
2. Open `presentation/index.html` with a browser

## How to run the demo?

1. Install <a href='http://www.vagrantup.com/'>Vagrant</a> and <a href='https://www.virtualbox.org/'>VirtualBox</a>
2. Add `10.0.1.10 vagrant` to your `hosts` file
3. Change to the directory `Vagrantfile` is in
4. Run `vagrant up` and wait for it to finish (you need to have Internet connection, for everything to install correctly)
5. Open <a href='http://vagrant/'>http://vagrant/</a> in a browser
