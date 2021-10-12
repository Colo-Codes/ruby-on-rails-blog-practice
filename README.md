# Practice Ruby on Rails project

This code was made in relation to the following awesome Ruby on Rails tutorial: https://guides.rubyonrails.org/getting_started.html

---

For convenience, I'm reproducing the tutorial content here, which is valid as of 12 of October 2021:

### [1 Guide Assumptions](https://guides.rubyonrails.org/getting_started.html#guide-assumptions)

This guide is designed for beginners who want to get started with a Rails
application from scratch. It does not assume that you have any prior experience
with Rails.

Rails is a web application framework running on the Ruby programming language.
If you have no prior experience with Ruby, you will find a very steep learning
curve diving straight into Rails. There are several curated lists of online resources
for learning Ruby:

* [Official Ruby Programming Language website](https://www.ruby-lang.org/en/documentation/)
* [List of Free Programming Books](https://github.com/EbookFoundation/free-programming-books/blob/master/books/free-programming-books.md#ruby)

Be aware that some resources, while still excellent, cover older versions of
Ruby, and may not include some syntax that you will see in day-to-day
development with Rails.

### [2 What is Rails?](https://guides.rubyonrails.org/getting_started.html#what-is-rails-questionmark)

Rails is a web application development framework written in the Ruby programming language.
It is designed to make programming web applications easier by making assumptions
about what every developer needs to get started. It allows you to write less
code while accomplishing more than many other languages and frameworks.
Experienced Rails developers also report that it makes web application
development more fun.

Rails is opinionated software. It makes the assumption that there is a "best"
way to do things, and it's designed to encourage that way - and in some cases to
discourage alternatives. If you learn "The Rails Way" you'll probably discover a
tremendous increase in productivity. If you persist in bringing old habits from
other languages to your Rails development, and trying to use patterns you
learned elsewhere, you may have a less happy experience.

The Rails philosophy includes two major guiding principles:

* **Don't Repeat Yourself:** DRY is a principle of software development which
    states that "Every piece of knowledge must have a single, unambiguous, authoritative
    representation within a system". By not writing the same information over and over
    again, our code is more maintainable, more extensible, and less buggy.
* **Convention Over Configuration:** Rails has opinions about the best way to do many
    things in a web application, and defaults to this set of conventions, rather than
    require that you specify minutiae through endless configuration files.

### [3 Creating a New Rails Project](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project)

The best way to read this guide is to follow it step by step. All steps are
essential to run this example application and no additional code or steps are
needed.

By following along with this guide, you'll create a Rails project called
`blog`, a (very) simple weblog. Before you can start building the application,
you need to make sure that you have Rails itself installed.

The examples below use `$` to represent your terminal prompt in a UNIX-like OS,
though it may have been customized to appear differently. If you are using Windows,
your prompt will look something like `C:\source_code>`.

#### [3.1 Installing Rails](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails)

Before you install Rails, you should check to make sure that your system has the
proper prerequisites installed. These include:

* Ruby
* SQLite3
* Node.js
* Yarn

##### [3.1.1 Installing Ruby](https://guides.rubyonrails.org/getting_started.html#installing-ruby)

Open up a command line prompt. On macOS open Terminal.app; on Windows choose
"Run" from your Start menu and type `cmd.exe`. Any commands prefaced with a
dollar sign `$` should be run in the command line. Verify that you have a
current version of Ruby installed:

```highlight
$ ruby --version
ruby 2.5.0
```

<textarea class="clipboard-content" id="clipboard-3e62b523b2277b7748e45ccd3be28c79">ruby --version
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-3e62b523b2277b7748e45ccd3be28c79">Copy</button>

Rails requires Ruby version 2.5.0 or later. If the version number returned is
less than that number (such as 2.3.7, or 1.8.7), you'll need to install a fresh copy of Ruby.

To install Rails on Windows, you'll first need to install [Ruby Installer](https://rubyinstaller.org/).

For more installation methods for most Operating Systems take a look at
[ruby-lang.org](https://www.ruby-lang.org/en/documentation/installation/).

##### [3.1.2 Installing SQLite3](https://guides.rubyonrails.org/getting_started.html#installing-sqlite3)

You will also need an installation of the SQLite3 database.
Many popular UNIX-like OSes ship with an acceptable version of SQLite3.
Others can find installation instructions at the [SQLite3 website](https://www.sqlite.org/).

Verify that it is correctly installed and in your load `PATH`:

```highlight
$ sqlite3 --version
```

<textarea class="clipboard-content" id="clipboard-83ed5ae6f47bc2ca5b9a512e92fab0a5">sqlite3 --version
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-83ed5ae6f47bc2ca5b9a512e92fab0a5">Copy</button>

The program should report its version.

##### [3.1.3 Installing Node.js and Yarn](https://guides.rubyonrails.org/getting_started.html#installing-node-js-and-yarn)

Finally, you'll need Node.js and Yarn installed to manage your application's JavaScript.

Find the installation instructions at the [Node.js website](https://nodejs.org/en/download/) and
verify it's installed correctly with the following command:

```highlight
$ node --version
```

<textarea class="clipboard-content" id="clipboard-fb32d61ced17d8ff89af015052d1fb36">node --version
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-fb32d61ced17d8ff89af015052d1fb36">Copy</button>

The version of your Node.js runtime should be printed out. Make sure it's greater
than 8.16.0.

To install Yarn, follow the installation
instructions at the [Yarn website](https://classic.yarnpkg.com/en/docs/install).

Running this command should print out Yarn version:

```highlight
$ yarn --version
```

<textarea class="clipboard-content" id="clipboard-3f2f3ca2c0300464208c0dde425a8d8a">yarn --version
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-3f2f3ca2c0300464208c0dde425a8d8a">Copy</button>

If it says something like "1.22.0", Yarn has been installed correctly.

##### [3.1.4 Installing Rails](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails-installing-rails)

To install Rails, use the `gem install` command provided by RubyGems:

```highlight
$ gem install rails
```

<textarea class="clipboard-content" id="clipboard-921f8c93d58df116fb18b800e1133688">gem install rails
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-921f8c93d58df116fb18b800e1133688">Copy</button>

To verify that you have everything installed correctly, you should be able to
run the following:

```highlight
$ rails --version
```

<textarea class="clipboard-content" id="clipboard-9ecb6c97ae556df134093d24e79ad6cc">rails --version
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-9ecb6c97ae556df134093d24e79ad6cc">Copy</button>

If it says something like "Rails 6.0.0", you are ready to continue.

#### [3.2 Creating the Blog Application](https://guides.rubyonrails.org/getting_started.html#creating-the-blog-application)

Rails comes with a number of scripts called generators that are designed to make
your development life easier by creating everything that's necessary to start
working on a particular task. One of these is the new application generator,
which will provide you with the foundation of a fresh Rails application so that
you don't have to write it yourself.

To use this generator, open a terminal, navigate to a directory where you have
rights to create files, and run:

```highlight
$ rails new blog
```

<textarea class="clipboard-content" id="clipboard-c24888aedd445defbaa4935e13a99cb6">rails new blog
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-c24888aedd445defbaa4935e13a99cb6">Copy</button>

This will create a Rails application called Blog in a `blog` directory and
install the gem dependencies that are already mentioned in `Gemfile` using
`bundle install`.

If you're using Windows Subsystem for Linux then there are currently some
limitations on file system notifications that mean you should disable the `spring`
and `listen` gems which you can do by running `rails new blog --skip-spring --skip-listen`
instead.

You can see all of the command line options that the Rails application
generator accepts by running `rails new --help`.

After you create the blog application, switch to its folder:

```highlight
$ cd blog
```

<textarea class="clipboard-content" id="clipboard-fd93d22c1d1ddd9a3392b765a215bf24">cd blog
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-fd93d22c1d1ddd9a3392b765a215bf24">Copy</button>

The `blog` directory will have a number of generated files and folders that make
up the structure of a Rails application. Most of the work in this tutorial will
happen in the `app` folder, but here's a basic rundown on the function of each
of the files and folders that Rails creates by default:

File/Folder            | Purpose                                                                                                                                                                                                                                                                       
---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
app/                   | Contains the controllers, models, views, helpers, mailers, channels, jobs, and assets for your application. You'll focus on this folder for the remainder of this guide.                                                                                                      
bin/                   | Contains the `rails` script that starts your app and can contain other scripts you use to set up, update, deploy, or run your application.                                                                                                                                    
config/                | Contains configuration for your application's routes, database, and more. This is covered in more detail in [Configuring Rails Applications](https://guides.rubyonrails.org/configuring.html).                                                                                
config.ru              | Rack configuration for Rack-based servers used to start the application. For more information about Rack, see the [Rack website](https://rack.github.io/).                                                                                                                    
db/                    | Contains your current database schema, as well as the database migrations.                                                                                                                                                                                                    
Gemfile  
Gemfile.lock | These files allow you to specify what gem dependencies are needed for your Rails application. These files are used by the Bundler gem. For more information about Bundler, see the [Bundler website](https://bundler.io/).                                                    
lib/                   | Extended modules for your application.                                                                                                                                                                                                                                        
log/                   | Application log files.                                                                                                                                                                                                                                                        
package.json           | This file allows you to specify what npm dependencies are needed for your Rails application. This file is used by Yarn. For more information about Yarn, see the [Yarn website](https://yarnpkg.com/lang/en/).                                                                
public/                | Contains static files and compiled assets. When your app is running, this directory will be exposed as-is.                                                                                                                                                                    
Rakefile               | This file locates and loads tasks that can be run from the command line. The task definitions are defined throughout the components of Rails. Rather than changing `Rakefile`, you should add your own tasks by adding files to the `lib/tasks` directory of your application.
README.md              | This is a brief instruction manual for your application. You should edit this file to tell others what your application does, how to set it up, and so on.                                                                                                                    
storage/               | Active Storage files for Disk Service. This is covered in [Active Storage Overview](https://guides.rubyonrails.org/active_storage_overview.html).                                                                                                                             
test/                  | Unit tests, fixtures, and other test apparatus. These are covered in [Testing Rails Applications](https://guides.rubyonrails.org/testing.html).                                                                                                                               
tmp/                   | Temporary files (like cache and pid files).                                                                                                                                                                                                                                   
vendor/                | A place for all third-party code. In a typical Rails application this includes vendored gems.                                                                                                                                                                                 
.gitignore             | This file tells git which files (or patterns) it should ignore. See [GitHub - Ignoring files](https://help.github.com/articles/ignoring-files) for more info about ignoring files.                                                                                            
.ruby-version          | This file contains the default Ruby version.                                                                                                                                                                                                                                  

### [4 Hello, Rails!](https://guides.rubyonrails.org/getting_started.html#hello-rails-bang)

To begin with, let's get some text up on screen quickly. To do this, you need to
get your Rails application server running.

#### [4.1 Starting up the Web Server](https://guides.rubyonrails.org/getting_started.html#starting-up-the-web-server)

You actually have a functional Rails application already. To see it, you need to
start a web server on your development machine. You can do this by running the
following command in the `blog` directory:

```highlight
$ bin/rails server
```

<textarea class="clipboard-content" id="clipboard-85173f414ab5ae9174293601357771e1">bin/rails server
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-85173f414ab5ae9174293601357771e1">Copy</button>

If you are using Windows, you have to pass the scripts under the `bin`
folder directly to the Ruby interpreter e.g. `ruby bin\rails server`.

JavaScript asset compression requires you
have a JavaScript runtime available on your system, in the absence
of a runtime you will see an `execjs` error during asset compression.
Usually macOS and Windows come with a JavaScript runtime installed.
`therubyrhino` is the recommended runtime for JRuby users and is added by
default to the `Gemfile` in apps generated under JRuby. You can investigate
all the supported runtimes at [ExecJS](https://github.com/rails/execjs#readme).

This will start up Puma, a web server distributed with Rails by default. To see
your application in action, open a browser window and navigate to
[http://localhost:3000](http://localhost:3000/). You should see the Rails default information page:

![Yay! You're on Rails! screenshot](https://guides.rubyonrails.org/images/getting_started/rails_welcome.png)

When you want to stop the web server, hit Ctrl+C in the terminal window where
it's running. In the development environment, Rails does not generally
require you to restart the server; changes you make in files will be
automatically picked up by the server.

The "Yay! You're on Rails!" page is the _smoke test_ for a new Rails
application: it makes sure that you have your software configured correctly
enough to serve a page.

#### [4.2 Say "Hello", Rails](https://guides.rubyonrails.org/getting_started.html#say-hello-rails)

To get Rails saying "Hello", you need to create at minimum a _route_, a
_controller_ with an _action_, and a _view_. A route maps a request to a
controller action. A controller action performs the necessary work to handle the
request, and prepares any data for the view. A view displays data in a desired
format.

In terms of implementation: Routes are rules written in a Ruby [DSL
(Domain-Specific Language)](https://en.wikipedia.org/wiki/Domain-specific_language).
Controllers are Ruby classes, and their public methods are actions. And views
are templates, usually written in a mixture of HTML and Ruby.

Let's start by adding a route to our routes file, `config/routes.rb`, at the
top of the `Rails.application.routes.draw` block:

```highlight
Rails.application.routes.draw do
  get "/articles", to: "articles#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
```

<textarea class="clipboard-content" id="clipboard-d8e738cf1c97d3531b78bc37acd1a1fc">Rails.application.routes.draw do
  get "/articles", to: "articles#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-d8e738cf1c97d3531b78bc37acd1a1fc">Copy</button>

The route above declares that `GET /articles` requests are mapped to the `index`
action of `ArticlesController`.

To create `ArticlesController` and its `index` action, we'll run the controller
generator (with the `--skip-routes` option because we already have an
appropriate route):

```highlight
$ bin/rails generate controller Articles index --skip-routes
```

<textarea class="clipboard-content" id="clipboard-ff2663c4dedd8ad4cf7dd0a0019ef81e">bin/rails generate controller Articles index --skip-routes
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-ff2663c4dedd8ad4cf7dd0a0019ef81e">Copy</button>

Rails will create several files for you:

```highlight
create  app/controllers/articles_controller.rb
invoke  erb
create    app/views/articles
create    app/views/articles/index.html.erb
invoke  test_unit
create    test/controllers/articles_controller_test.rb
invoke  helper
create    app/helpers/articles_helper.rb
invoke    test_unit
invoke  assets
invoke    scss
create      app/assets/stylesheets/articles.scss
```

<textarea class="clipboard-content" id="clipboard-eb47f9822d80fe2659a606565e6de626">create  app/controllers/articles_controller.rb
invoke  erb
create    app/views/articles
create    app/views/articles/index.html.erb
invoke  test_unit
create    test/controllers/articles_controller_test.rb
invoke  helper
create    app/helpers/articles_helper.rb
invoke    test_unit
invoke  assets
invoke    scss
create      app/assets/stylesheets/articles.scss
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-eb47f9822d80fe2659a606565e6de626">Copy</button>

The most important of these is the controller file,
`app/controllers/articles_controller.rb`. Let's take a look at it:

```highlight
class ArticlesController < ApplicationController
  def index
  end
end
```

<textarea class="clipboard-content" id="clipboard-0eeba45e7f966270704183be0a6fa114">class ArticlesController &lt; ApplicationController
  def index
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-0eeba45e7f966270704183be0a6fa114">Copy</button>

The `index` action is empty. When an action does not explicitly render a view
(or otherwise trigger an HTTP response), Rails will automatically render a view
that matches the name of the controller and action. Convention Over
Configuration! Views are located in the `app/views` directory. So the `index`
action will render `app/views/articles/index.html.erb` by default.

Let's open `app/views/articles/index.html.erb`, and replace its contents with:

```highlight
<h1>Hello, Rails!</h1>
```

<textarea class="clipboard-content" id="clipboard-fd1567447f1442a4914365d56f20a17d">&lt;h1&gt;Hello, Rails!&lt;/h1&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-fd1567447f1442a4914365d56f20a17d">Copy</button>

If you previously stopped the web server to run the controller generator,
restart it with `bin/rails server`. Now visit http://localhost:3000/articles,
and see our text displayed!

#### [4.3 Setting the Application Home Page](https://guides.rubyonrails.org/getting_started.html#setting-the-application-home-page)

At the moment, [http://localhost:3000](http://localhost:3000/) still displays "Yay! You're on Rails!".
Let's display our "Hello, Rails!" text at [http://localhost:3000](http://localhost:3000/) as well. To do
so, we will add a route that maps the _root path_ of our application to the
appropriate controller and action.

Let's open `config/routes.rb`, and add the following `root` route to the top of
the `Rails.application.routes.draw` block:

```highlight
Rails.application.routes.draw do
  root "articles#index"

  get "/articles", to: "articles#index"
end
```

<textarea class="clipboard-content" id="clipboard-24b68e598c8036bfbc77b352fbd83b3f">Rails.application.routes.draw do
  root "articles#index"

  get "/articles", to: "articles#index"
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-24b68e598c8036bfbc77b352fbd83b3f">Copy</button>

Now we can see our "Hello, Rails!" text when we visit [http://localhost:3000](http://localhost:3000/),
confirming that the `root` route is also mapped to the `index` action of
`ArticlesController`.

To learn more about routing, see [Rails Routing from the Outside In](https://guides.rubyonrails.org/routing.html).

### [5 MVC and You](https://guides.rubyonrails.org/getting_started.html#mvc-and-you)

So far, we've discussed routes, controllers, actions, and views. All of these
are typical pieces of a web application that follows the [MVC (Model-View-Controller)](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) pattern.
MVC is a design pattern that divides the responsibilities of an application to
make it easier to reason about. Rails follows this design pattern by convention.

Since we have a controller and a view to work with, let's generate the next
piece: a model.

#### [5.1 Generating a Model](https://guides.rubyonrails.org/getting_started.html#mvc-and-you-generating-a-model)

A _model_ is a Ruby class that is used to represent data. Additionally, models
can interact with the application's database through a feature of Rails called
_Active Record_.

To define a model, we will use the model generator:

```highlight
$ bin/rails generate model Article title:string body:text
```

<textarea class="clipboard-content" id="clipboard-2d37aa8f86ad967ab33baf2273c5ec51">bin/rails generate model Article title:string body:text
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-2d37aa8f86ad967ab33baf2273c5ec51">Copy</button>

Model names are **singular**, because an instantiated model represents a
single data record. To help remember this convention, think of how you would
call the model's constructor: we want to write `Article.new(...)`, **not**
`Articles.new(...)`.

This will create several files:

```highlight
invoke  active_record
create    db/migrate/<timestamp>_create_articles.rb
create    app/models/article.rb
invoke    test_unit
create      test/models/article_test.rb
create      test/fixtures/articles.yml
```

<textarea class="clipboard-content" id="clipboard-efc6a3eeadd0af2e38b9aaeeb7da6750">invoke  active_record
create    db/migrate/&lt;timestamp&gt;_create_articles.rb
create    app/models/article.rb
invoke    test_unit
create      test/models/article_test.rb
create      test/fixtures/articles.yml
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-efc6a3eeadd0af2e38b9aaeeb7da6750">Copy</button>

The two files we'll focus on are the migration file
(`db/migrate/<timestamp>_create_articles.rb`) and the model file
(`app/models/article.rb`).

#### [5.2 Database Migrations](https://guides.rubyonrails.org/getting_started.html#database-migrations)

_Migrations_ are used to alter the structure of an application's database. In
Rails applications, migrations are written in Ruby so that they can be
database-agnostic.

Let's take a look at the contents of our new migration file:

```highlight
class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
```

<textarea class="clipboard-content" id="clipboard-6953ebee6fdbd6847f17777f63adf3b4">class CreateArticles &lt; ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-6953ebee6fdbd6847f17777f63adf3b4">Copy</button>

The call to `create_table` specifies how the `articles` table should be
constructed. By default, the `create_table` method adds an `id` column as an
auto-incrementing primary key. So the first record in the table will have an
`id` of 1, the next record will have an `id` of 2, and so on.

Inside the block for `create_table`, two columns are defined: `title` and
`body`. These were added by the generator because we included them in our
generate command (`bin/rails generate model Article title:string body:text`).

On the last line of the block is a call to `t.timestamps`. This method defines
two additional columns named `created_at` and `updated_at`. As we will see,
Rails will manage these for us, setting the values when we create or update a
model object.

Let's run our migration with the following command:

```highlight
$ bin/rails db:migrate
```

<textarea class="clipboard-content" id="clipboard-9098fc46db2fc8b21a5f9045816e0e2f">bin/rails db:migrate
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-9098fc46db2fc8b21a5f9045816e0e2f">Copy</button>

The command will display output indicating that the table was created:

```highlight
==  CreateArticles: migrating ===================================
-- create_table(:articles)
   -> 0.0018s
==  CreateArticles: migrated (0.0018s) ==========================
```

<textarea class="clipboard-content" id="clipboard-029cdffb9324aa8aa374294f6b108e23">==  CreateArticles: migrating ===================================
-- create_table(:articles)
   -&gt; 0.0018s
==  CreateArticles: migrated (0.0018s) ==========================
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-029cdffb9324aa8aa374294f6b108e23">Copy</button>

To learn more about migrations, see [Active Record Migrations](https://guides.rubyonrails.org/active_record_migrations.html).

Now we can interact with the table using our model.

#### [5.3 Using a Model to Interact with the Database](https://guides.rubyonrails.org/getting_started.html#using-a-model-to-interact-with-the-database)

To play with our model a bit, we're going to use a feature of Rails called the
_console_. The console is an interactive coding environment just like `irb`, but
it also automatically loads Rails and our application code.

Let's launch the console with this command:

```highlight
$ bin/rails console
```

<textarea class="clipboard-content" id="clipboard-51cd30d8b36e26c941d5fb6cb6511248">bin/rails console
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-51cd30d8b36e26c941d5fb6cb6511248">Copy</button>

You should see an `irb` prompt like:

```highlight
Loading development environment (Rails 6.0.2.1)
irb(main):001:0>
```

<textarea class="clipboard-content" id="clipboard-c21497d125fe51d11ec629aae86d54a9"></textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-c21497d125fe51d11ec629aae86d54a9">Copy</button>

At this prompt, we can initialize a new `Article` object:

```highlight
irb> article = Article.new(title: "Hello Rails", body: "I am on Rails!")
```

<textarea class="clipboard-content" id="clipboard-b88a7e8503d5ed4a97290954981514cd">article = Article.new(title: "Hello Rails", body: "I am on Rails!")
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-b88a7e8503d5ed4a97290954981514cd">Copy</button>

It's important to note that we have only _initialized_ this object. This object
is not saved to the database at all. It's only available in the console at the
moment. To save the object to the database, we must call [`save`](https://api.rubyonrails.org/v6.1.4/classes/ActiveRecord/Persistence.html#method-i-save):

```highlight
irb> article.save
(0.1ms)  begin transaction
Article Create (0.4ms)  INSERT INTO "articles" ("title", "body", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "Hello Rails"], ["body", "I am on Rails!"], ["created_at", "2020-01-18 23:47:30.734416"], ["updated_at", "2020-01-18 23:47:30.734416"]]
(0.9ms)  commit transaction
=> true
```

<textarea class="clipboard-content" id="clipboard-9f032615a5b57075ae17179f164ee656">article.save
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-9f032615a5b57075ae17179f164ee656">Copy</button>

The above output shows an `INSERT INTO "articles" ...` database query. This
indicates that the article has been inserted into our table. And if we take a
look at the `article` object again, we see something interesting has happened:

```highlight
irb> article
=> #<Article id: 1, title: "Hello Rails", body: "I am on Rails!", created_at: "2020-01-18 23:47:30", updated_at: "2020-01-18 23:47:30">
```

<textarea class="clipboard-content" id="clipboard-a13efc1398a8c017d960ce675b978e91">article
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-a13efc1398a8c017d960ce675b978e91">Copy</button>

The `id`, `created_at`, and `updated_at` attributes of the object are now set.
Rails did this for us when we saved the object.

When we want to fetch this article from the database, we can call [`find`](https://api.rubyonrails.org/v6.1.4/classes/ActiveRecord/FinderMethods.html#method-i-find)
on the model and pass the `id` as an argument:

```highlight
irb> Article.find(1)
=> #<Article id: 1, title: "Hello Rails", body: "I am on Rails!", created_at: "2020-01-18 23:47:30", updated_at: "2020-01-18 23:47:30">
```

<textarea class="clipboard-content" id="clipboard-99f64c5b4905cc1ce86b887e27536bdc">Article.find(1)
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-99f64c5b4905cc1ce86b887e27536bdc">Copy</button>

And when we want to fetch all articles from the database, we can call [`all`](https://api.rubyonrails.org/v6.1.4/classes/ActiveRecord/Scoping/Named/ClassMethods.html#method-i-all)
on the model:

```highlight
irb> Article.all
=> #<ActiveRecord::Relation [#<Article id: 1, title: "Hello Rails", body: "I am on Rails!", created_at: "2020-01-18 23:47:30", updated_at: "2020-01-18 23:47:30">]>
```

<textarea class="clipboard-content" id="clipboard-b8b2a6412d6d2ed1717dd2a3c942cf87">Article.all
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-b8b2a6412d6d2ed1717dd2a3c942cf87">Copy</button>

This method returns an [`ActiveRecord::Relation`](https://api.rubyonrails.org/v6.1.4/classes/ActiveRecord/Relation.html) object, which
you can think of as a super-powered array.

To learn more about models, see [Active Record Basics](https://guides.rubyonrails.org/active_record_basics.html) and [Active Record Query Interface](https://guides.rubyonrails.org/active_record_querying.html).

Models are the final piece of the MVC puzzle. Next, we will connect all of the
pieces together.

#### [5.4 Showing a List of Articles](https://guides.rubyonrails.org/getting_started.html#showing-a-list-of-articles)

Let's go back to our controller in `app/controllers/articles_controller.rb`, and
change the `index` action to fetch all articles from the database:

```highlight
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
end
```

<textarea class="clipboard-content" id="clipboard-2b416495b115af604a68bf5935629cfe">class ArticlesController &lt; ApplicationController
  def index
    @articles = Article.all
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-2b416495b115af604a68bf5935629cfe">Copy</button>

Controller instance variables can be accessed by the view. That means we can
reference `@articles` in `app/views/articles/index.html.erb`. Let's open that
file, and replace its contents with:

```highlight
<h1>Articles</h1>

<ul>
  <% @articles.each do |article| %>
    <li>
      <%= article.title %>
    </li>
  <% end %>
</ul>
```

<textarea class="clipboard-content" id="clipboard-b2ed25395e4fc5b36a8c38a73352e29a">&lt;h1&gt;Articles&lt;/h1&gt;

&lt;ul&gt;
  &lt;% @articles.each do |article| %&gt;
    &lt;li&gt;
      &lt;%= article.title %&gt;
    &lt;/li&gt;
  &lt;% end %&gt;
&lt;/ul&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-b2ed25395e4fc5b36a8c38a73352e29a">Copy</button>

The above code is a mixture of HTML and _ERB_. ERB is a templating system that
evaluates Ruby code embedded in a document. Here, we can see two types of ERB
tags: `<% %>` and `<%= %>`. The `<% %>` tag means "evaluate the enclosed Ruby
code." The `<%= %>` tag means "evaluate the enclosed Ruby code, and output the
value it returns." Anything you could write in a regular Ruby program can go
inside these ERB tags, though it's usually best to keep the contents of ERB tags
short, for readability.

Since we don't want to output the value returned by `@articles.each`, we've
enclosed that code in `<% %>`. But, since we _do_ want to output the value
returned by `article.title` (for each article), we've enclosed that code in
`<%= %>`.

We can see the final result by visiting [http://localhost:3000](http://localhost:3000/). (Remember that
`bin/rails server` must be running!) Here's what happens when we do that:

1.  The browser makes a request: `GET http://localhost:3000`.
2.  Our Rails application receives this request.
3.  The Rails router maps the root route to the `index` action of `ArticlesController`.
4.  The `index` action uses the `Article` model to fetch all articles in the database.
5.  Rails automatically renders the `app/views/articles/index.html.erb` view.
6.  The ERB code in the view is evaluated to output HTML.
7.  The server sends a response containing the HTML back to the browser.

We've connected all the MVC pieces together, and we have our first controller
action! Next, we'll move on to the second action.

### [6 CRUDit Where CRUDit Is Due](https://guides.rubyonrails.org/getting_started.html#crudit-where-crudit-is-due)

Almost all web applications involve [CRUD (Create, Read, Update, and Delete)](https://en.wikipedia.org/wiki/Create,_read,_update,_and_delete) operations. You
may even find that the majority of the work your application does is CRUD. Rails
acknowledges this, and provides many features to help simplify code doing CRUD.

Let's begin exploring these features by adding more functionality to our
application.

#### [6.1 Showing a Single Article](https://guides.rubyonrails.org/getting_started.html#showing-a-single-article)

We currently have a view that lists all articles in our database. Let's add a
new view that shows the title and body of a single article.

We start by adding a new route that maps to a new controller action (which we
will add next). Open `config/routes.rb`, and insert the last route shown here:

```highlight
Rails.application.routes.draw do
  root "articles#index"

  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
end
```

<textarea class="clipboard-content" id="clipboard-92903c5a4b0c3053e3546e1752b766fb">Rails.application.routes.draw do
  root "articles#index"

  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-92903c5a4b0c3053e3546e1752b766fb">Copy</button>

The new route is another `get` route, but it has something extra in its path:
`:id`. This designates a route _parameter_. A route parameter captures a segment
of the request's path, and puts that value into the `params` Hash, which is
accessible by the controller action. For example, when handling a request like
`GET http://localhost:3000/articles/1`, `1` would be captured as the value for
`:id`, which would then be accessible as `params[:id]` in the `show` action of
`ArticlesController`.

Let's add that `show` action now, below the `index` action in
`app/controllers/articles_controller.rb`:

```highlight
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
end
```

<textarea class="clipboard-content" id="clipboard-37174f91ca3b850966a18e79c3386822">class ArticlesController &lt; ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-37174f91ca3b850966a18e79c3386822">Copy</button>

The `show` action calls `Article.find` ([mentioned
previously](https://guides.rubyonrails.org/getting_started.html#using-a-model-to-interact-with-the-database)) with the ID captured
by the route parameter. The returned article is stored in the `@article`
instance variable, so it is accessible by the view. By default, the `show`
action will render `app/views/articles/show.html.erb`.

Let's create `app/views/articles/show.html.erb`, with the following contents:

```highlight
<h1><%= @article.title %></h1>

<p><%= @article.body %></p>
```

<textarea class="clipboard-content" id="clipboard-67c4e5b960178e565bfc7ffd3c46d55d">&lt;h1&gt;&lt;%= @article.title %&gt;&lt;/h1&gt;

&lt;p&gt;&lt;%= @article.body %&gt;&lt;/p&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-67c4e5b960178e565bfc7ffd3c46d55d">Copy</button>

Now we can see the article when we visit http://localhost:3000/articles/1!

To finish up, let's add a convenient way to get to an article's page. We'll link
each article's title in `app/views/articles/index.html.erb` to its page:

```highlight
<h1>Articles</h1>

<ul>
  <% @articles.each do |article| %>
    <li>
      <a href="/articles/<%= article.id %>">
        <%= article.title %>
      </a>
    </li>
  <% end %>
</ul>
```

<textarea class="clipboard-content" id="clipboard-72b23095b69fbde03354217de0671c62">&lt;h1&gt;Articles&lt;/h1&gt;

&lt;ul&gt;
  &lt;% @articles.each do |article| %&gt;
    &lt;li&gt;
      &lt;a href="/articles/&lt;%= article.id %&gt;"&gt;
        &lt;%= article.title %&gt;
      &lt;/a&gt;
    &lt;/li&gt;
  &lt;% end %&gt;
&lt;/ul&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-72b23095b69fbde03354217de0671c62">Copy</button>

#### [6.2 Resourceful Routing](https://guides.rubyonrails.org/getting_started.html#resourceful-routing)

So far, we've covered the "R" (Read) of CRUD. We will eventually cover the "C"
(Create), "U" (Update), and "D" (Delete). As you might have guessed, we will do
so by adding new routes, controller actions, and views. Whenever we have such a
combination of routes, controller actions, and views that work together to
perform CRUD operations on an entity, we call that entity a _resource_. For
example, in our application, we would say an article is a resource.

Rails provides a routes method named [`resources`](https://api.rubyonrails.org/v6.1.4/classes/ActionDispatch/Routing/Mapper/Resources.html#method-i-resources)
that maps all of the conventional routes for a collection of resources, such as
articles. So before we proceed to the "C", "U", and "D" sections, let's replace
the two `get` routes in `config/routes.rb` with `resources`:

```highlight
Rails.application.routes.draw do
  root "articles#index"

  resources :articles
end
```

<textarea class="clipboard-content" id="clipboard-7c29f5c218eb069fd29344a0caaf231a">Rails.application.routes.draw do
  root "articles#index"

  resources :articles
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-7c29f5c218eb069fd29344a0caaf231a">Copy</button>

We can inspect what routes are mapped by running the `bin/rails routes` command:

```highlight
$ bin/rails routes
      Prefix Verb   URI Pattern                  Controller#Action
        root GET    /                            articles#index
    articles GET    /articles(.:format)          articles#index
 new_article GET    /articles/new(.:format)      articles#new
     article GET    /articles/:id(.:format)      articles#show
             POST   /articles(.:format)          articles#create
edit_article GET    /articles/:id/edit(.:format) articles#edit
             PATCH  /articles/:id(.:format)      articles#update
             DELETE /articles/:id(.:format)      articles#destroy
```

<textarea class="clipboard-content" id="clipboard-4ec5e821d45e566086c3a80c8750aeac">bin/rails routes
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-4ec5e821d45e566086c3a80c8750aeac">Copy</button>

The `resources` method also sets up URL and path helper methods that we can use
to keep our code from depending on a specific route configuration. The values
in the "Prefix" column above plus a suffix of `_url` or `_path` form the names
of these helpers. For example, the `article_path` helper returns
`"/articles/#{article.id}"` when given an article. We can use it to tidy up our
links in `app/views/articles/index.html.erb`:

```highlight
<h1>Articles</h1>

<ul>
  <% @articles.each do |article| %>
    <li>
      <a href="<%= article_path(article) %>">
        <%= article.title %>
      </a>
    </li>
  <% end %>
</ul>
```

<textarea class="clipboard-content" id="clipboard-5cd011eb057e62820e980f932d7ee6d2">&lt;h1&gt;Articles&lt;/h1&gt;

&lt;ul&gt;
  &lt;% @articles.each do |article| %&gt;
    &lt;li&gt;
      &lt;a href="&lt;%= article_path(article) %&gt;"&gt;
        &lt;%= article.title %&gt;
      &lt;/a&gt;
    &lt;/li&gt;
  &lt;% end %&gt;
&lt;/ul&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-5cd011eb057e62820e980f932d7ee6d2">Copy</button>

However, we will take this one step further by using the [`link_to`](https://api.rubyonrails.org/v6.1.4/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to)
helper. The `link_to` helper renders a link with its first argument as the
link's text and its second argument as the link's destination. If we pass a
model object as the second argument, `link_to` will call the appropriate path
helper to convert the object to a path. For example, if we pass an article,
`link_to` will call `article_path`. So `app/views/articles/index.html.erb`
becomes:

```highlight
<h1>Articles</h1>

<ul>
  <% @articles.each do |article| %>
    <li>
      <%= link_to article.title, article %>
    </li>
  <% end %>
</ul>
```

<textarea class="clipboard-content" id="clipboard-b43d99db357a47b11f6ff168cbe5b177">&lt;h1&gt;Articles&lt;/h1&gt;

&lt;ul&gt;
  &lt;% @articles.each do |article| %&gt;
    &lt;li&gt;
      &lt;%= link_to article.title, article %&gt;
    &lt;/li&gt;
  &lt;% end %&gt;
&lt;/ul&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-b43d99db357a47b11f6ff168cbe5b177">Copy</button>

Nice!

To learn more about routing, see [Rails Routing from the Outside In](https://guides.rubyonrails.org/routing.html).

#### [6.3 Creating a New Article](https://guides.rubyonrails.org/getting_started.html#creating-a-new-article)

Now we move on to the "C" (Create) of CRUD. Typically, in web applications,
creating a new resource is a multi-step process. First, the user requests a form
to fill out. Then, the user submits the form. If there are no errors, then the
resource is created and some kind of confirmation is displayed. Else, the form
is redisplayed with error messages, and the process is repeated.

In a Rails application, these steps are conventionally handled by a controller's
`new` and `create` actions. Let's add a typical implementation of these actions
to `app/controllers/articles_controller.rb`, below the `show` action:

```highlight
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: "...", body: "...")

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
end
```

<textarea class="clipboard-content" id="clipboard-0af946ea7e4745ea840757b380e0e1f8">class ArticlesController &lt; ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: "...", body: "...")

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-0af946ea7e4745ea840757b380e0e1f8">Copy</button>

The `new` action instantiates a new article, but does not save it. This article
will be used in the view when building the form. By default, the `new` action
will render `app/views/articles/new.html.erb`, which we will create next.

The `create` action instantiates a new article with values for the title and
body, and attempts to save it. If the article is saved successfully, the action
redirects the browser to the article's page at `"http://localhost:3000/articles/#{@article.id}"`.
Else, the action redisplays the form by rendering `app/views/articles/new.html.erb`.
The title and body here are dummy values. After we create the form, we will come
back and change these.

[`redirect_to`](https://api.rubyonrails.org/v6.1.4/classes/ActionController/Redirecting.html#method-i-redirect_to)
will cause the browser to make a new request,
whereas [`render`](https://api.rubyonrails.org/v6.1.4/classes/AbstractController/Rendering.html#method-i-render)
renders the specified view for the current request.
It is important to use `redirect_to` after mutating the database or application state.
Otherwise, if the user refreshes the page, the browser will make the same request, and the mutation will be repeated.

##### [6.3.1 Using a Form Builder](https://guides.rubyonrails.org/getting_started.html#using-a-form-builder)

We will use a feature of Rails called a _form builder_ to create our form. Using
a form builder, we can write a minimal amount of code to output a form that is
fully configured and follows Rails conventions.

Let's create `app/views/articles/new.html.erb` with the following contents:

```highlight
<h1>New Article</h1>

<%= form_with model: @article do |form| %>
  <div>
    <%= form.label :title %><br>
    <%= form.text_field :title %>
  </div>

  <div>
    <%= form.label :body %><br>
    <%= form.text_area :body %>
  </div>

  <div>
    <%= form.submit %>
  </div>
<% end %>
```

<textarea class="clipboard-content" id="clipboard-8c6bbb071f20cefa01da44425191407f">&lt;h1&gt;New Article&lt;/h1&gt;

&lt;%= form_with model: @article do |form| %&gt;
  &lt;div&gt;
    &lt;%= form.label :title %&gt;&lt;br&gt;
    &lt;%= form.text_field :title %&gt;
  &lt;/div&gt;

  &lt;div&gt;
    &lt;%= form.label :body %&gt;&lt;br&gt;
    &lt;%= form.text_area :body %&gt;
  &lt;/div&gt;

  &lt;div&gt;
    &lt;%= form.submit %&gt;
  &lt;/div&gt;
&lt;% end %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-8c6bbb071f20cefa01da44425191407f">Copy</button>

The [`form_with`](https://api.rubyonrails.org/v6.1.4/classes/ActionView/Helpers/FormHelper.html#method-i-form_with)
helper method instantiates a form builder. In the `form_with` block we call
methods like [`label`](https://api.rubyonrails.org/v6.1.4/classes/ActionView/Helpers/FormBuilder.html#method-i-label)
and [`text_field`](https://api.rubyonrails.org/v6.1.4/classes/ActionView/Helpers/FormBuilder.html#method-i-text_field)
on the form builder to output the appropriate form elements.

The resulting output from our `form_with` call will look like:

```highlight
<form action="/articles" accept-charset="UTF-8" method="post">
  <input type="hidden" name="authenticity_token" value="...">

  <div>
    <label for="article_title">Title</label><br>
    <input type="text" name="article[title]" id="article_title">
  </div>

  <div>
    <label for="article_body">Body</label><br>
    <textarea name="article[body]" id="article_body"></textarea>
  </div>

  <div>
    <input type="submit" name="commit" value="Create Article" data-disable-with="Create Article">
  </div>
</form>
```

<textarea class="clipboard-content" id="clipboard-9e2d64ebc91a1284057cb9d7481b111f">&lt;form action="/articles" accept-charset="UTF-8" method="post"&gt;
  &lt;input type="hidden" name="authenticity_token" value="..."&gt;

  &lt;div&gt;
    &lt;label for="article_title"&gt;Title&lt;/label&gt;&lt;br&gt;
    &lt;input type="text" name="article[title]" id="article_title"&gt;
  &lt;/div&gt;

  &lt;div&gt;
    &lt;label for="article_body"&gt;Body&lt;/label&gt;&lt;br&gt;
    &lt;textarea name="article[body]" id="article_body"&gt;&lt;/textarea&gt;
  &lt;/div&gt;

  &lt;div&gt;
    &lt;input type="submit" name="commit" value="Create Article" data-disable-with="Create Article"&gt;
  &lt;/div&gt;
&lt;/form&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-9e2d64ebc91a1284057cb9d7481b111f">Copy</button>

To learn more about form builders, see [Action View Form Helpers](https://guides.rubyonrails.org/form_helpers.html).

##### [6.3.2 Using Strong Parameters](https://guides.rubyonrails.org/getting_started.html#using-strong-parameters)

Submitted form data is put into the `params` Hash, alongside captured route
parameters. Thus, the `create` action can access the submitted title via
`params[:article][:title]` and the submitted body via `params[:article][:body]`.
We could pass these values individually to `Article.new`, but that would be
verbose and possibly error-prone. And it would become worse as we add more
fields.

Instead, we will pass a single Hash that contains the values. However, we must
still specify what values are allowed in that Hash. Otherwise, a malicious user
could potentially submit extra form fields and overwrite private data. In fact,
if we pass the unfiltered `params[:article]` Hash directly to `Article.new`,
Rails will raise a `ForbiddenAttributesError` to alert us about the problem.
So we will use a feature of Rails called _Strong Parameters_ to filter `params`.
Think of it as [strong typing](https://en.wikipedia.org/wiki/Strong_and_weak_typing)
for `params`.

Let's add a private method to the bottom of `app/controllers/articles_controller.rb`
named `article_params` that filters `params`. And let's change `create` to use
it:

```highlight
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
```

<textarea class="clipboard-content" id="clipboard-db6270f169f6ca6c5344acd11da58cf6">class ArticlesController &lt; ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-db6270f169f6ca6c5344acd11da58cf6">Copy</button>

To learn more about Strong Parameters, see [Action Controller Overview §
Strong Parameters](https://guides.rubyonrails.org/action_controller_overview.html#strong-parameters).

##### [6.3.3 Validations and Displaying Error Messages](https://guides.rubyonrails.org/getting_started.html#validations-and-displaying-error-messages)

As we have seen, creating a resource is a multi-step process. Handling invalid
user input is another step of that process. Rails provides a feature called
_validations_ to help us deal with invalid user input. Validations are rules
that are checked before a model object is saved. If any of the checks fail, the
save will be aborted, and appropriate error messages will be added to the
`errors` attribute of the model object.

Let's add some validations to our model in `app/models/article.rb`:

```highlight
class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
```

<textarea class="clipboard-content" id="clipboard-2339f7441e5d8b27af15018ff14f38b4">class Article &lt; ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-2339f7441e5d8b27af15018ff14f38b4">Copy</button>

The first validation declares that a `title` value must be present. Because
`title` is a string, this means that the `title` value must contain at least one
non-whitespace character.

The second validation declares that a `body` value must also be present.
Additionally, it declares that the `body` value must be at least 10 characters
long.

You may be wondering where the `title` and `body` attributes are defined.
Active Record automatically defines model attributes for every table column, so
you don't have to declare those attributes in your model file.

With our validations in place, let's modify `app/views/articles/new.html.erb` to
display any error messages for `title` and `body`:

```highlight
<h1>New Article</h1>

<%= form_with model: @article do |form| %>
  <div>
    <%= form.label :title %><br>
    <%= form.text_field :title %>
    <% @article.errors.full_messages_for(:title).each do |message| %>
      <div><%= message %></div>
    <% end %>
  </div>

  <div>
    <%= form.label :body %><br>
    <%= form.text_area :body %><br>
    <% @article.errors.full_messages_for(:body).each do |message| %>
      <div><%= message %></div>
    <% end %>
  </div>

  <div>
    <%= form.submit %>
  </div>
<% end %>
```

<textarea class="clipboard-content" id="clipboard-f82e534653c15273b4c687e74ef8ce0c">&lt;h1&gt;New Article&lt;/h1&gt;

&lt;%= form_with model: @article do |form| %&gt;
  &lt;div&gt;
    &lt;%= form.label :title %&gt;&lt;br&gt;
    &lt;%= form.text_field :title %&gt;
    &lt;% @article.errors.full_messages_for(:title).each do |message| %&gt;
      &lt;div&gt;&lt;%= message %&gt;&lt;/div&gt;
    &lt;% end %&gt;
  &lt;/div&gt;

  &lt;div&gt;
    &lt;%= form.label :body %&gt;&lt;br&gt;
    &lt;%= form.text_area :body %&gt;&lt;br&gt;
    &lt;% @article.errors.full_messages_for(:body).each do |message| %&gt;
      &lt;div&gt;&lt;%= message %&gt;&lt;/div&gt;
    &lt;% end %&gt;
  &lt;/div&gt;

  &lt;div&gt;
    &lt;%= form.submit %&gt;
  &lt;/div&gt;
&lt;% end %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-f82e534653c15273b4c687e74ef8ce0c">Copy</button>

The [`full_messages_for`](https://api.rubyonrails.org/v6.1.4/classes/ActiveModel/Errors.html#method-i-full_messages_for)
method returns an array of user-friendly error messages for a specified
attribute. If there are no errors for that attribute, the array will be empty.

To understand how all of this works together, let's take another look at the
`new` and `create` controller actions:

```highlight
def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
```

<textarea class="clipboard-content" id="clipboard-4c95736b42ccac54c3322e139fbf7e55">  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-4c95736b42ccac54c3322e139fbf7e55">Copy</button>

When we visit http://localhost:3000/articles/new, the `GET /articles/new`
request is mapped to the `new` action. The `new` action does not attempt to save
`@article`. Therefore, validations are not checked, and there will be no error
messages.

When we submit the form, the `POST /articles` request is mapped to the `create`
action. The `create` action _does_ attempt to save `@article`. Therefore,
validations _are_ checked. If any validation fails, `@article` will not be
saved, and `app/views/articles/new.html.erb` will be rendered with error
messages.

To learn more about validations, see [Active Record Validations](https://guides.rubyonrails.org/active_record_validations.html). To learn more about validation error messages,
see [Active Record Validations § Working with Validation Errors](https://guides.rubyonrails.org/active_record_validations.html#working-with-validation-errors).

##### [6.3.4 Finishing Up](https://guides.rubyonrails.org/getting_started.html#creating-a-new-article-finishing-up)

We can now create an article by visiting http://localhost:3000/articles/new.
To finish up, let's link to that page from the bottom of
`app/views/articles/index.html.erb`:

```highlight
<h1>Articles</h1>

<ul>
  <% @articles.each do |article| %>
    <li>
      <%= link_to article.title, article %>
    </li>
  <% end %>
</ul>

<%= link_to "New Article", new_article_path %>
```

<textarea class="clipboard-content" id="clipboard-ac92b9967eb5a1f0053a9d7242b26738">&lt;h1&gt;Articles&lt;/h1&gt;

&lt;ul&gt;
  &lt;% @articles.each do |article| %&gt;
    &lt;li&gt;
      &lt;%= link_to article.title, article %&gt;
    &lt;/li&gt;
  &lt;% end %&gt;
&lt;/ul&gt;

&lt;%= link_to "New Article", new_article_path %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-ac92b9967eb5a1f0053a9d7242b26738">Copy</button>

#### [6.4 Updating an Article](https://guides.rubyonrails.org/getting_started.html#updating-an-article)

We've covered the "CR" of CRUD. Now let's move on to the "U" (Update). Updating
a resource is very similar to creating a resource. They are both multi-step
processes. First, the user requests a form to edit the data. Then, the user
submits the form. If there are no errors, then the resource is updated. Else,
the form is redisplayed with error messages, and the process is repeated.

These steps are conventionally handled by a controller's `edit` and `update`
actions. Let's add a typical implementation of these actions to
`app/controllers/articles_controller.rb`, below the `create` action:

```highlight
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
```

<textarea class="clipboard-content" id="clipboard-4f4ebdce8367dcb79ffd6c9810017c96">class ArticlesController &lt; ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-4f4ebdce8367dcb79ffd6c9810017c96">Copy</button>

Notice how the `edit` and `update` actions resemble the `new` and `create`
actions.

The `edit` action fetches the article from the database, and stores it in
`@article` so that it can be used when building the form. By default, the `edit`
action will render `app/views/articles/edit.html.erb`.

The `update` action (re-)fetches the article from the database, and attempts
to update it with the submitted form data filtered by `article_params`. If no
validations fail and the update is successful, the action redirects the browser
to the article's page. Else, the action redisplays the form, with error
messages, by rendering `app/views/articles/edit.html.erb`.

##### [6.4.1 Using Partials to Share View Code](https://guides.rubyonrails.org/getting_started.html#using-partials-to-share-view-code)

Our `edit` form will look the same as our `new` form. Even the code will be the
same, thanks to the Rails form builder and resourceful routing. The form builder
automatically configures the form to make the appropriate kind of request, based
on whether the model object has been previously saved.

Because the code will be the same, we're going to factor it out into a shared
view called a _partial_. Let's create `app/views/articles/_form.html.erb` with
the following contents:

```highlight
<%= form_with model: article do |form| %>
  <div>
    <%= form.label :title %><br>
    <%= form.text_field :title %>
    <% article.errors.full_messages_for(:title).each do |message| %>
      <div><%= message %></div>
    <% end %>
  </div>

  <div>
    <%= form.label :body %><br>
    <%= form.text_area :body %><br>
    <% article.errors.full_messages_for(:body).each do |message| %>
      <div><%= message %></div>
    <% end %>
  </div>

  <div>
    <%= form.submit %>
  </div>
<% end %>
```

<textarea class="clipboard-content" id="clipboard-25ef3aa791ee44184cffba5683c77ca7">&lt;%= form_with model: article do |form| %&gt;
  &lt;div&gt;
    &lt;%= form.label :title %&gt;&lt;br&gt;
    &lt;%= form.text_field :title %&gt;
    &lt;% article.errors.full_messages_for(:title).each do |message| %&gt;
      &lt;div&gt;&lt;%= message %&gt;&lt;/div&gt;
    &lt;% end %&gt;
  &lt;/div&gt;

  &lt;div&gt;
    &lt;%= form.label :body %&gt;&lt;br&gt;
    &lt;%= form.text_area :body %&gt;&lt;br&gt;
    &lt;% article.errors.full_messages_for(:body).each do |message| %&gt;
      &lt;div&gt;&lt;%= message %&gt;&lt;/div&gt;
    &lt;% end %&gt;
  &lt;/div&gt;

  &lt;div&gt;
    &lt;%= form.submit %&gt;
  &lt;/div&gt;
&lt;% end %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-25ef3aa791ee44184cffba5683c77ca7">Copy</button>

The above code is the same as our form in `app/views/articles/new.html.erb`,
except that all occurrences of `@article` have been replaced with `article`.
Because partials are shared code, it is best practice that they do not depend on
specific instance variables set by a controller action. Instead, we will pass
the article to the partial as a local variable.

Let's update `app/views/articles/new.html.erb` to use the partial via [`render`](https://api.rubyonrails.org/v6.1.4/classes/ActionView/Helpers/RenderingHelper.html#method-i-render):

```highlight
<h1>New Article</h1>

<%= render "form", article: @article %>
```

<textarea class="clipboard-content" id="clipboard-6e455d6c2d66848ee180e7ca677547d4">&lt;h1&gt;New Article&lt;/h1&gt;

&lt;%= render "form", article: @article %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-6e455d6c2d66848ee180e7ca677547d4">Copy</button>

A partial's filename must be prefixed **with** an underscore, e.g.
`_form.html.erb`. But when rendering, it is referenced **without** the
underscore, e.g. `render "form"`.

And now, let's create a very similar `app/views/articles/edit.html.erb`:

```highlight
<h1>Edit Article</h1>

<%= render "form", article: @article %>
```

<textarea class="clipboard-content" id="clipboard-0203084b3ba10706c8484b92716d59aa">&lt;h1&gt;Edit Article&lt;/h1&gt;

&lt;%= render "form", article: @article %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-0203084b3ba10706c8484b92716d59aa">Copy</button>

To learn more about partials, see [Layouts and Rendering in Rails § Using
Partials](https://guides.rubyonrails.org/layouts_and_rendering.html#using-partials).

##### [6.4.2 Finishing Up](https://guides.rubyonrails.org/getting_started.html#updating-an-article-finishing-up)

We can now update an article by visiting its edit page, e.g.
http://localhost:3000/articles/1/edit. To finish up, let's link to the edit
page from the bottom of `app/views/articles/show.html.erb`:

```highlight
<h1><%= @article.title %></h1>

<p><%= @article.body %></p>

<ul>
  <li><%= link_to "Edit", edit_article_path(@article) %></li>
</ul>
```

<textarea class="clipboard-content" id="clipboard-778b13535c817dde7743da8e1f23ae63">&lt;h1&gt;&lt;%= @article.title %&gt;&lt;/h1&gt;

&lt;p&gt;&lt;%= @article.body %&gt;&lt;/p&gt;

&lt;ul&gt;
  &lt;li&gt;&lt;%= link_to "Edit", edit_article_path(@article) %&gt;&lt;/li&gt;
&lt;/ul&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-778b13535c817dde7743da8e1f23ae63">Copy</button>

#### [6.5 Deleting an Article](https://guides.rubyonrails.org/getting_started.html#deleting-an-article)

Finally, we arrive at the "D" (Delete) of CRUD. Deleting a resource is a simpler
process than creating or updating. It only requires a route and a controller
action. And our resourceful routing (`resources :articles`) already provides the
route, which maps `DELETE /articles/:id` requests to the `destroy` action of
`ArticlesController`.

So, let's add a typical `destroy` action to `app/controllers/articles_controller.rb`,
below the `update` action:

```highlight
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
```

<textarea class="clipboard-content" id="clipboard-089921f3b6d5133101bb35013769c0d2">class ArticlesController &lt; ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-089921f3b6d5133101bb35013769c0d2">Copy</button>

The `destroy` action fetches the article from the database, and calls [`destroy`](https://api.rubyonrails.org/v6.1.4/classes/ActiveRecord/Persistence.html#method-i-destroy)
on it. Then, it redirects the browser to the root path.

We have chosen to redirect to the root path because that is our main access
point for articles. But, in other circumstances, you might choose to redirect to
e.g. `articles_path`.

Now let's add a link at the bottom of `app/views/articles/show.html.erb` so that
we can delete an article from its own page:

```highlight
<h1><%= @article.title %></h1>

<p><%= @article.body %></p>

<ul>
  <li><%= link_to "Edit", edit_article_path(@article) %></li>
  <li><%= link_to "Destroy", article_path(@article),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %></li>
</ul>
```

<textarea class="clipboard-content" id="clipboard-825b2dc6aac2d81b5893674e1d264896">&lt;h1&gt;&lt;%= @article.title %&gt;&lt;/h1&gt;

&lt;p&gt;&lt;%= @article.body %&gt;&lt;/p&gt;

&lt;ul&gt;
  &lt;li&gt;&lt;%= link_to "Edit", edit_article_path(@article) %&gt;&lt;/li&gt;
  &lt;li&gt;&lt;%= link_to "Destroy", article_path(@article),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %&gt;&lt;/li&gt;
&lt;/ul&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-825b2dc6aac2d81b5893674e1d264896">Copy</button>

In the above code, we're passing a few additional options to `link_to`. The
`method: :delete` option causes the link to make a `DELETE` request instead of a
`GET` request. The `data: { confirm: "Are you sure?" }` option causes a
confirmation dialog to appear when the link is clicked. If the user cancels the
dialog, the request is aborted. Both of these options are powered by a feature
of Rails called _Unobtrusive JavaScript_ (UJS). The JavaScript file that
implements these behaviors is included by default in fresh Rails applications.

To learn more about Unobtrusive JavaScript, see [Working With JavaScript in
Rails](https://guides.rubyonrails.org/working_with_javascript_in_rails.html).

And that's it! We can now list, show, create, update, and delete articles!
InCRUDable!

### [7 Adding a Second Model](https://guides.rubyonrails.org/getting_started.html#adding-a-second-model)

It's time to add a second model to the application. The second model will handle
comments on articles.

#### [7.1 Generating a Model](https://guides.rubyonrails.org/getting_started.html#adding-a-second-model-generating-a-model)

We're going to see the same generator that we used before when creating
the `Article` model. This time we'll create a `Comment` model to hold a
reference to an article. Run this command in your terminal:

```highlight
$ bin/rails generate model Comment commenter:string body:text article:references
```

<textarea class="clipboard-content" id="clipboard-3b915dc86e89021b236f635ad8ddf06c">bin/rails generate model Comment commenter:string body:text article:references
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-3b915dc86e89021b236f635ad8ddf06c">Copy</button>

This command will generate four files:

File                                         | Purpose                                                                                               
-------------------------------------------- | ------------------------------------------------------------------------------------------------------
db/migrate/20140120201010_create_comments.rb | Migration to create the comments table in your database (your name will include a different timestamp)
app/models/comment.rb                        | The Comment model                                                                                     
test/models/comment_test.rb                  | Testing harness for the comment model                                                                 
test/fixtures/comments.yml                   | Sample comments for use in testing                                                                    

First, take a look at `app/models/comment.rb`:

```highlight
class Comment < ApplicationRecord
  belongs_to :article
end
```

<textarea class="clipboard-content" id="clipboard-0a327f2c93922097e4ecf9ee0856911a">class Comment &lt; ApplicationRecord
  belongs_to :article
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-0a327f2c93922097e4ecf9ee0856911a">Copy</button>

This is very similar to the `Article` model that you saw earlier. The difference
is the line `belongs_to :article`, which sets up an Active Record _association_.
You'll learn a little about associations in the next section of this guide.

The (`:references`) keyword used in the bash command is a special data type for models.
It creates a new column on your database table with the provided model name appended with an `_id`
that can hold integer values. To get a better understanding, analyze the
`db/schema.rb` file after running the migration.

In addition to the model, Rails has also made a migration to create the
corresponding database table:

```highlight
class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
```

<textarea class="clipboard-content" id="clipboard-307c6be89739913c9ce28690e62c92e3">class CreateComments &lt; ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-307c6be89739913c9ce28690e62c92e3">Copy</button>

The `t.references` line creates an integer column called `article_id`, an index
for it, and a foreign key constraint that points to the `id` column of the `articles`
table. Go ahead and run the migration:

```highlight
$ bin/rails db:migrate
```

<textarea class="clipboard-content" id="clipboard-b029f68b160a2b5cb7d3fb5473c1a23b">bin/rails db:migrate
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-b029f68b160a2b5cb7d3fb5473c1a23b">Copy</button>

Rails is smart enough to only execute the migrations that have not already been
run against the current database, so in this case you will just see:

```highlight
==  CreateComments: migrating =================================================
-- create_table(:comments)
   -> 0.0115s
==  CreateComments: migrated (0.0119s) ========================================
```

<textarea class="clipboard-content" id="clipboard-1c2a4be058a7564d1dae819fbacfbced">==  CreateComments: migrating =================================================
-- create_table(:comments)
   -&gt; 0.0115s
==  CreateComments: migrated (0.0119s) ========================================
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-1c2a4be058a7564d1dae819fbacfbced">Copy</button>

#### [7.2 Associating Models](https://guides.rubyonrails.org/getting_started.html#associating-models)

Active Record associations let you easily declare the relationship between two
models. In the case of comments and articles, you could write out the
relationships this way:

* Each comment belongs to one article.
* One article can have many comments.

In fact, this is very close to the syntax that Rails uses to declare this
association. You've already seen the line of code inside the `Comment` model
(app/models/comment.rb) that makes each comment belong to an Article:

```highlight
class Comment < ApplicationRecord
  belongs_to :article
end
```

<textarea class="clipboard-content" id="clipboard-94cb95a84a895a78c1bde7666676d57e">class Comment &lt; ApplicationRecord
  belongs_to :article
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-94cb95a84a895a78c1bde7666676d57e">Copy</button>

You'll need to edit `app/models/article.rb` to add the other side of the
association:

```highlight
class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
```

<textarea class="clipboard-content" id="clipboard-4c4db7cee4b673e67b5fede9fa732a5c">class Article &lt; ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-4c4db7cee4b673e67b5fede9fa732a5c">Copy</button>

These two declarations enable a good bit of automatic behavior. For example, if
you have an instance variable `@article` containing an article, you can retrieve
all the comments belonging to that article as an array using
`@article.comments`.

For more information on Active Record associations, see the [Active Record
Associations](https://guides.rubyonrails.org/association_basics.html) guide.

#### [7.3 Adding a Route for Comments](https://guides.rubyonrails.org/getting_started.html#adding-a-route-for-comments)

As with the `welcome` controller, we will need to add a route so that Rails
knows where we would like to navigate to see `comments`. Open up the
`config/routes.rb` file again, and edit it as follows:

```highlight
Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end
end
```

<textarea class="clipboard-content" id="clipboard-f85e0e7a67c0bfd11406e8b9474054f4">Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-f85e0e7a67c0bfd11406e8b9474054f4">Copy</button>

This creates `comments` as a _nested resource_ within `articles`. This is
another part of capturing the hierarchical relationship that exists between
articles and comments.

For more information on routing, see the [Rails Routing](https://guides.rubyonrails.org/routing.html)
guide.

#### [7.4 Generating a Controller](https://guides.rubyonrails.org/getting_started.html#generating-a-controller)

With the model in hand, you can turn your attention to creating a matching
controller. Again, we'll use the same generator we used before:

```highlight
$ bin/rails generate controller Comments
```

<textarea class="clipboard-content" id="clipboard-1c3e9b9c5e324d26547ec311cbb6b5ab">bin/rails generate controller Comments
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-1c3e9b9c5e324d26547ec311cbb6b5ab">Copy</button>

This creates four files and one empty directory:

File/Directory                               | Purpose                                 
-------------------------------------------- | ----------------------------------------
app/controllers/comments_controller.rb       | The Comments controller                 
app/views/comments/                          | Views of the controller are stored here 
test/controllers/comments_controller_test.rb | The test for the controller             
app/helpers/comments_helper.rb               | A view helper file                      
app/assets/stylesheets/comments.scss         | Cascading style sheet for the controller

Like with any blog, our readers will create their comments directly after
reading the article, and once they have added their comment, will be sent back
to the article show page to see their comment now listed. Due to this, our
`CommentsController` is there to provide a method to create comments and delete
spam comments when they arrive.

So first, we'll wire up the Article show template
(`app/views/articles/show.html.erb`) to let us make a new comment:

```highlight
<h1><%= @article.title %></h1>

<p><%= @article.body %></p>

<ul>
  <li><%= link_to "Edit", edit_article_path(@article) %></li>
  <li><%= link_to "Destroy", article_path(@article),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %></li>
</ul>

<h2>Add a comment:</h2>
<%= form_with model: [ @article, @article.comments.build ] do |form| %>
  <p>
    <%= form.label :commenter %><br>
    <%= form.text_field :commenter %>
  </p>
  <p>
    <%= form.label :body %><br>
    <%= form.text_area :body %>
  </p>
  <p>
    <%= form.submit %>
  </p>
<% end %>
```

<textarea class="clipboard-content" id="clipboard-3308987e16770a909dfdc5a4323e9744">&lt;h1&gt;&lt;%= @article.title %&gt;&lt;/h1&gt;

&lt;p&gt;&lt;%= @article.body %&gt;&lt;/p&gt;

&lt;ul&gt;
  &lt;li&gt;&lt;%= link_to "Edit", edit_article_path(@article) %&gt;&lt;/li&gt;
  &lt;li&gt;&lt;%= link_to "Destroy", article_path(@article),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;Add a comment:&lt;/h2&gt;
&lt;%= form_with model: [ @article, @article.comments.build ] do |form| %&gt;
  &lt;p&gt;
    &lt;%= form.label :commenter %&gt;&lt;br&gt;
    &lt;%= form.text_field :commenter %&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;%= form.label :body %&gt;&lt;br&gt;
    &lt;%= form.text_area :body %&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;%= form.submit %&gt;
  &lt;/p&gt;
&lt;% end %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-3308987e16770a909dfdc5a4323e9744">Copy</button>

This adds a form on the `Article` show page that creates a new comment by
calling the `CommentsController` `create` action. The `form_with` call here uses
an array, which will build a nested route, such as `/articles/1/comments`.

Let's wire up the `create` in `app/controllers/comments_controller.rb`:

```highlight
class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
```

<textarea class="clipboard-content" id="clipboard-fa053094d035c76b6a45864b0b3ffde9">class CommentsController &lt; ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-fa053094d035c76b6a45864b0b3ffde9">Copy</button>

You'll see a bit more complexity here than you did in the controller for
articles. That's a side-effect of the nesting that you've set up. Each request
for a comment has to keep track of the article to which the comment is attached,
thus the initial call to the `find` method of the `Article` model to get the
article in question.

In addition, the code takes advantage of some of the methods available for an
association. We use the `create` method on `@article.comments` to create and
save the comment. This will automatically link the comment so that it belongs to
that particular article.

Once we have made the new comment, we send the user back to the original article
using the `article_path(@article)` helper. As we have already seen, this calls
the `show` action of the `ArticlesController` which in turn renders the
`show.html.erb` template. This is where we want the comment to show, so let's
add that to the `app/views/articles/show.html.erb`.

```highlight
<h1><%= @article.title %></h1>

<p><%= @article.body %></p>

<ul>
  <li><%= link_to "Edit", edit_article_path(@article) %></li>
  <li><%= link_to "Destroy", article_path(@article),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %></li>
</ul>

<h2>Comments</h2>
<% @article.comments.each do |comment| %>
  <p>
    <strong>Commenter:</strong>
    <%= comment.commenter %>
  </p>

  <p>
    <strong>Comment:</strong>
    <%= comment.body %>
  </p>
<% end %>

<h2>Add a comment:</h2>
<%= form_with model: [ @article, @article.comments.build ] do |form| %>
  <p>
    <%= form.label :commenter %><br>
    <%= form.text_field :commenter %>
  </p>
  <p>
    <%= form.label :body %><br>
    <%= form.text_area :body %>
  </p>
  <p>
    <%= form.submit %>
  </p>
<% end %>
```

<textarea class="clipboard-content" id="clipboard-f7fe09618a567eb577925cfec23a6553">&lt;h1&gt;&lt;%= @article.title %&gt;&lt;/h1&gt;

&lt;p&gt;&lt;%= @article.body %&gt;&lt;/p&gt;

&lt;ul&gt;
  &lt;li&gt;&lt;%= link_to "Edit", edit_article_path(@article) %&gt;&lt;/li&gt;
  &lt;li&gt;&lt;%= link_to "Destroy", article_path(@article),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;Comments&lt;/h2&gt;
&lt;% @article.comments.each do |comment| %&gt;
  &lt;p&gt;
    &lt;strong&gt;Commenter:&lt;/strong&gt;
    &lt;%= comment.commenter %&gt;
  &lt;/p&gt;

  &lt;p&gt;
    &lt;strong&gt;Comment:&lt;/strong&gt;
    &lt;%= comment.body %&gt;
  &lt;/p&gt;
&lt;% end %&gt;

&lt;h2&gt;Add a comment:&lt;/h2&gt;
&lt;%= form_with model: [ @article, @article.comments.build ] do |form| %&gt;
  &lt;p&gt;
    &lt;%= form.label :commenter %&gt;&lt;br&gt;
    &lt;%= form.text_field :commenter %&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;%= form.label :body %&gt;&lt;br&gt;
    &lt;%= form.text_area :body %&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;%= form.submit %&gt;
  &lt;/p&gt;
&lt;% end %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-f7fe09618a567eb577925cfec23a6553">Copy</button>

Now you can add articles and comments to your blog and have them show up in the
right places.

![Article with Comments](https://guides.rubyonrails.org/images/getting_started/article_with_comments.png)

### [8 Refactoring](https://guides.rubyonrails.org/getting_started.html#refactoring)

Now that we have articles and comments working, take a look at the
`app/views/articles/show.html.erb` template. It is getting long and awkward. We
can use partials to clean it up.

#### [8.1 Rendering Partial Collections](https://guides.rubyonrails.org/getting_started.html#rendering-partial-collections)

First, we will make a comment partial to extract showing all the comments for
the article. Create the file `app/views/comments/_comment.html.erb` and put the
following into it:

```highlight
<p>
  <strong>Commenter:</strong>
  <%= comment.commenter %>
</p>

<p>
  <strong>Comment:</strong>
  <%= comment.body %>
</p>
```

<textarea class="clipboard-content" id="clipboard-862d2637b3183848431216d04ce507f2">&lt;p&gt;
  &lt;strong&gt;Commenter:&lt;/strong&gt;
  &lt;%= comment.commenter %&gt;
&lt;/p&gt;

&lt;p&gt;
  &lt;strong&gt;Comment:&lt;/strong&gt;
  &lt;%= comment.body %&gt;
&lt;/p&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-862d2637b3183848431216d04ce507f2">Copy</button>

Then you can change `app/views/articles/show.html.erb` to look like the
following:

```highlight
<h1><%= @article.title %></h1>

<p><%= @article.body %></p>

<ul>
  <li><%= link_to "Edit", edit_article_path(@article) %></li>
  <li><%= link_to "Destroy", article_path(@article),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %></li>
</ul>

<h2>Comments</h2>
<%= render @article.comments %>

<h2>Add a comment:</h2>
<%= form_with model: [ @article, @article.comments.build ] do |form| %>
  <p>
    <%= form.label :commenter %><br>
    <%= form.text_field :commenter %>
  </p>
  <p>
    <%= form.label :body %><br>
    <%= form.text_area :body %>
  </p>
  <p>
    <%= form.submit %>
  </p>
<% end %>
```

<textarea class="clipboard-content" id="clipboard-003010f6a98723d2c0e91bfca0705f2d">&lt;h1&gt;&lt;%= @article.title %&gt;&lt;/h1&gt;

&lt;p&gt;&lt;%= @article.body %&gt;&lt;/p&gt;

&lt;ul&gt;
  &lt;li&gt;&lt;%= link_to "Edit", edit_article_path(@article) %&gt;&lt;/li&gt;
  &lt;li&gt;&lt;%= link_to "Destroy", article_path(@article),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;Comments&lt;/h2&gt;
&lt;%= render @article.comments %&gt;

&lt;h2&gt;Add a comment:&lt;/h2&gt;
&lt;%= form_with model: [ @article, @article.comments.build ] do |form| %&gt;
  &lt;p&gt;
    &lt;%= form.label :commenter %&gt;&lt;br&gt;
    &lt;%= form.text_field :commenter %&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;%= form.label :body %&gt;&lt;br&gt;
    &lt;%= form.text_area :body %&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;%= form.submit %&gt;
  &lt;/p&gt;
&lt;% end %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-003010f6a98723d2c0e91bfca0705f2d">Copy</button>

This will now render the partial in `app/views/comments/_comment.html.erb` once
for each comment that is in the `@article.comments` collection. As the `render`
method iterates over the `@article.comments` collection, it assigns each
comment to a local variable named the same as the partial, in this case
`comment`, which is then available in the partial for us to show.

#### [8.2 Rendering a Partial Form](https://guides.rubyonrails.org/getting_started.html#rendering-a-partial-form)

Let us also move that new comment section out to its own partial. Again, you
create a file `app/views/comments/_form.html.erb` containing:

```highlight
<%= form_with model: [ @article, @article.comments.build ] do |form| %>
  <p>
    <%= form.label :commenter %><br>
    <%= form.text_field :commenter %>
  </p>
  <p>
    <%= form.label :body %><br>
    <%= form.text_area :body %>
  </p>
  <p>
    <%= form.submit %>
  </p>
<% end %>
```

<textarea class="clipboard-content" id="clipboard-f10303a213fea63c377f322dc299fdb6">&lt;%= form_with model: [ @article, @article.comments.build ] do |form| %&gt;
  &lt;p&gt;
    &lt;%= form.label :commenter %&gt;&lt;br&gt;
    &lt;%= form.text_field :commenter %&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;%= form.label :body %&gt;&lt;br&gt;
    &lt;%= form.text_area :body %&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;%= form.submit %&gt;
  &lt;/p&gt;
&lt;% end %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-f10303a213fea63c377f322dc299fdb6">Copy</button>

Then you make the `app/views/articles/show.html.erb` look like the following:

```highlight
<h1><%= @article.title %></h1>

<p><%= @article.body %></p>

<ul>
  <li><%= link_to "Edit", edit_article_path(@article) %></li>
  <li><%= link_to "Destroy", article_path(@article),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %></li>
</ul>

<h2>Comments</h2>
<%= render @article.comments %>

<h2>Add a comment:</h2>
<%= render 'comments/form' %>
```

<textarea class="clipboard-content" id="clipboard-d8e5c19963c34b346b4aee60eac0d2bb">&lt;h1&gt;&lt;%= @article.title %&gt;&lt;/h1&gt;

&lt;p&gt;&lt;%= @article.body %&gt;&lt;/p&gt;

&lt;ul&gt;
  &lt;li&gt;&lt;%= link_to "Edit", edit_article_path(@article) %&gt;&lt;/li&gt;
  &lt;li&gt;&lt;%= link_to "Destroy", article_path(@article),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;Comments&lt;/h2&gt;
&lt;%= render @article.comments %&gt;

&lt;h2&gt;Add a comment:&lt;/h2&gt;
&lt;%= render 'comments/form' %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-d8e5c19963c34b346b4aee60eac0d2bb">Copy</button>

The second render just defines the partial template we want to render,
`comments/form`. Rails is smart enough to spot the forward slash in that
string and realize that you want to render the `_form.html.erb` file in
the `app/views/comments` directory.

The `@article` object is available to any partials rendered in the view because
we defined it as an instance variable.

#### [8.3 Using Concerns](https://guides.rubyonrails.org/getting_started.html#using-concerns)

Concerns are a way to make large controllers or models easier to understand and manage. This also has the advantage of reusability when multiple models (or controllers) share the same concerns. Concerns are implemented using modules that contain methods representing a well-defined slice of the functionality that a model or controller is responsible for. In other languages, modules are often known as mixins.

You can use concerns in your controller or model the same way you would use any module. When you first created your app with `rails new blog`, two folders were created within `app/` along with the rest:

```highlight
app/controllers/concerns
app/models/concerns
```

<textarea class="clipboard-content" id="clipboard-bbde2231ca8e936bf5e33e1a060a820d">app/controllers/concerns
app/models/concerns
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-bbde2231ca8e936bf5e33e1a060a820d">Copy</button>

A given blog article might have various statuses - for instance, it might be visible to everyone (i.e. `public`), or only visible to the author (i.e. `private`). It may also be hidden to all but still retrievable (i.e. `archived`). Comments may similarly be hidden or visible. This could be represented using a `status` column in each model.

Within the `article` model, after running a migration to add a `status` column, you might add:

```highlight
class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
```

<textarea class="clipboard-content" id="clipboard-220423ac32c0191c491a6811125d2f1f">class Article &lt; ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-220423ac32c0191c491a6811125d2f1f">Copy</button>

and in the `Comment` model:

```highlight
class Comment < ApplicationRecord
  belongs_to :article

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
```

<textarea class="clipboard-content" id="clipboard-070c7921613bcf953edc07f8bb29b4fe">class Comment &lt; ApplicationRecord
  belongs_to :article

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-070c7921613bcf953edc07f8bb29b4fe">Copy</button>

Then, in our `index` action template (`app/views/articles/index.html.erb`) we would use the `archived?` method to avoid displaying any article that is archived:

```highlight
<h1>Articles</h1>

<ul>
  <% @articles.each do |article| %>
    <% unless article.archived? %>
      <li>
        <%= link_to article.title, article %>
      </li>
    <% end %>
  <% end %>
</ul>

<%= link_to "New Article", new_article_path %>
```

<textarea class="clipboard-content" id="clipboard-8f7cc130237422e0bbf6001e2e502ed9">&lt;h1&gt;Articles&lt;/h1&gt;

&lt;ul&gt;
  &lt;% @articles.each do |article| %&gt;
    &lt;% unless article.archived? %&gt;
      &lt;li&gt;
        &lt;%= link_to article.title, article %&gt;
      &lt;/li&gt;
    &lt;% end %&gt;
  &lt;% end %&gt;
&lt;/ul&gt;

&lt;%= link_to "New Article", new_article_path %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-8f7cc130237422e0bbf6001e2e502ed9">Copy</button>

However, if you look again at our models now, you can see that the logic is duplicated. If in the future we increase the functionality of our blog - to include private messages, for instance -  we might find ourselves duplicating the logic yet again. This is where concerns come in handy.

A concern is only responsible for a focused subset of the model's responsibility; the methods in our concern will all be related to the visibility of a model. Let's call our new concern (module) `Visible`. We can create a new file inside `app/models/concerns` called `visible.rb` , and store all of the status methods that were duplicated in the models.

`app/models/concerns/visible.rb`

```highlight
module Visible
  def archived?
    status == 'archived'
  end
end
```

<textarea class="clipboard-content" id="clipboard-6f081ab164382ca475b023905856aafd">module Visible
  def archived?
    status == 'archived'
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-6f081ab164382ca475b023905856aafd">Copy</button>

We can add our status validation to the concern, but this is slightly more complex as validations are methods called at the class level. The `ActiveSupport::Concern` ([API Guide](https://api.rubyonrails.org/v6.1.4/classes/ActiveSupport/Concern.html)) gives us a simpler way to include them:

```highlight
module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  def archived?
    status == 'archived'
  end
end
```

<textarea class="clipboard-content" id="clipboard-479ab6e9308d24a93eb4b1e23155a1a0">module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  def archived?
    status == 'archived'
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-479ab6e9308d24a93eb4b1e23155a1a0">Copy</button>

Now, we can remove the duplicated logic from each model and instead include our new `Visible` module:

In `app/models/article.rb`:

```highlight
class Article < ApplicationRecord
  include Visible
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
```

<textarea class="clipboard-content" id="clipboard-e9105d7ecdab1b211f6c2fe36efe2a60">class Article &lt; ApplicationRecord
  include Visible
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-e9105d7ecdab1b211f6c2fe36efe2a60">Copy</button>

and in `app/models/comment.rb`:

```highlight
class Comment < ApplicationRecord
  include Visible
  belongs_to :article
end
```

<textarea class="clipboard-content" id="clipboard-71fc3dce6ed58e40fb55778757da0689">class Comment &lt; ApplicationRecord
  include Visible
  belongs_to :article
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-71fc3dce6ed58e40fb55778757da0689">Copy</button>

Class methods can also be added to concerns. If we want a count of public articles or comments to display on our main page, we might add a class method to Visible as follows:

```highlight
module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def public_count
      where(status: 'public').count
    end
  end

  def archived?
    status == 'archived'
  end
end
```

<textarea class="clipboard-content" id="clipboard-c7ede0eebbb46cbda54a71711fd6487d">module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def public_count
      where(status: 'public').count
    end
  end

  def archived?
    status == 'archived'
  end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-c7ede0eebbb46cbda54a71711fd6487d">Copy</button>

Then in the view, you can call it like any class method:

```highlight
<h1>Articles</h1>

Our blog has <%= Article.public_count %> articles and counting!

<ul>
  <% @articles.each do |article| %>
    <li>
      <%= link_to article.title, article %>
    </li>
  <% end %>
</ul>

<%= link_to "New Article", new_article_path %>
```

<textarea class="clipboard-content" id="clipboard-c10bf10c5c3d3b62f12a189ec9ebd7db">&lt;h1&gt;Articles&lt;/h1&gt;

Our blog has &lt;%= Article.public_count %&gt; articles and counting!

&lt;ul&gt;
  &lt;% @articles.each do |article| %&gt;
    &lt;li&gt;
      &lt;%= link_to article.title, article %&gt;
    &lt;/li&gt;
  &lt;% end %&gt;
&lt;/ul&gt;

&lt;%= link_to "New Article", new_article_path %&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-c10bf10c5c3d3b62f12a189ec9ebd7db">Copy</button>

There are a few more steps to be carried out before our application works with the addition of `status` column. First, let's run the following migrations to add `status` to `Articles` and `Comments`:

```highlight
$ bin/rails generate migration AddStatusToArticles status:string
$ bin/rails generate migration AddStatusToComments status:string
```

<textarea class="clipboard-content" id="clipboard-f859a7857541f46941c65914a135d26b">bin/rails generate migration AddStatusToArticles status:string
bin/rails generate migration AddStatusToComments status:string
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-f859a7857541f46941c65914a135d26b">Copy</button>

To learn more about migrations, see [Active Record Migrations](https://guides.rubyonrails.org/active_record_migrations.html).

We also have to permit the `:status` key as part of the strong parameter, in `app/controllers/articles_controller.rb`:

```highlight
private
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end
```

<textarea class="clipboard-content" id="clipboard-7086765351cae41091cee9fb33b33fa7">private
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-7086765351cae41091cee9fb33b33fa7">Copy</button>

and in `app/controllers/comments_controller.rb`:

```highlight
private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
```

<textarea class="clipboard-content" id="clipboard-08f139a55b34a0d0adca668832fabc6f">private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-08f139a55b34a0d0adca668832fabc6f">Copy</button>

To finish up, we will add a select box to the forms, and let the user select the status when they create a new article or post a new comment. We can also specify the default status as `public`. In `app/views/articles/_form.html.erb`, we can add:

```highlight
<div>
  <%= form.label :status %><br>
  <%= form.select :status, ['public', 'private', 'archived'], selected: 'public' %>
</div>
```

<textarea class="clipboard-content" id="clipboard-e93753ce07a2678268da697d772ad0b2">&lt;div&gt;
  &lt;%= form.label :status %&gt;&lt;br&gt;
  &lt;%= form.select :status, ['public', 'private', 'archived'], selected: 'public' %&gt;
&lt;/div&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-e93753ce07a2678268da697d772ad0b2">Copy</button>

and in `app/views/comments/_form.html.erb`:

```highlight
<p>
  <%= form.label :status %><br>
  <%= form.select :status, ['public', 'private', 'archived'], selected: 'public' %>
</p>
```

<textarea class="clipboard-content" id="clipboard-912f7c4485cb3aa6881a646770599559">&lt;p&gt;
  &lt;%= form.label :status %&gt;&lt;br&gt;
  &lt;%= form.select :status, ['public', 'private', 'archived'], selected: 'public' %&gt;
&lt;/p&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-912f7c4485cb3aa6881a646770599559">Copy</button>

### [9 Deleting Comments](https://guides.rubyonrails.org/getting_started.html#deleting-comments)

Another important feature of a blog is being able to delete spam comments. To do
this, we need to implement a link of some sort in the view and a `destroy`
action in the `CommentsController`.

So first, let's add the delete link in the
`app/views/comments/_comment.html.erb` partial:

```highlight
<p>
  <strong>Commenter:</strong>
  <%= comment.commenter %>
</p>

<p>
  <strong>Comment:</strong>
  <%= comment.body %>
</p>

<p>
  <%= link_to 'Destroy Comment', [comment.article, comment],
              method: :delete,
              data: { confirm: "Are you sure?" } %>
</p>
```

<textarea class="clipboard-content" id="clipboard-1ede29781189893b42a6dcaba5157807">&lt;p&gt;
  &lt;strong&gt;Commenter:&lt;/strong&gt;
  &lt;%= comment.commenter %&gt;
&lt;/p&gt;

&lt;p&gt;
  &lt;strong&gt;Comment:&lt;/strong&gt;
  &lt;%= comment.body %&gt;
&lt;/p&gt;

&lt;p&gt;
  &lt;%= link_to 'Destroy Comment', [comment.article, comment],
              method: :delete,
              data: { confirm: "Are you sure?" } %&gt;
&lt;/p&gt;
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-1ede29781189893b42a6dcaba5157807">Copy</button>

Clicking this new "Destroy Comment" link will fire off a `DELETE
/articles/:article_id/comments/:id` to our `CommentsController`, which can then
use this to find the comment we want to delete, so let's add a `destroy` action
to our controller (`app/controllers/comments_controller.rb`):

```highlight
class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
```

<textarea class="clipboard-content" id="clipboard-709f1d0f2c05f48640be82861de6c06a">class CommentsController &lt; ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-709f1d0f2c05f48640be82861de6c06a">Copy</button>

The `destroy` action will find the article we are looking at, locate the comment
within the `@article.comments` collection, and then remove it from the
database and send us back to the show action for the article.

#### [9.1 Deleting Associated Objects](https://guides.rubyonrails.org/getting_started.html#deleting-associated-objects)

If you delete an article, its associated comments will also need to be
deleted, otherwise they would simply occupy space in the database. Rails allows
you to use the `dependent` option of an association to achieve this. Modify the
Article model, `app/models/article.rb`, as follows:

```highlight
class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
```

<textarea class="clipboard-content" id="clipboard-21887870aab14025af4f8f9f78bb6038">class Article &lt; ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-21887870aab14025af4f8f9f78bb6038">Copy</button>

### [10 Security](https://guides.rubyonrails.org/getting_started.html#security)

#### [10.1 Basic Authentication](https://guides.rubyonrails.org/getting_started.html#basic-authentication)

If you were to publish your blog online, anyone would be able to add, edit and
delete articles or delete comments.

Rails provides an HTTP authentication system that will work nicely in
this situation.

In the `ArticlesController` we need to have a way to block access to the
various actions if the person is not authenticated. Here we can use the Rails
`http_basic_authenticate_with` method, which allows access to the requested
action if that method allows it.

To use the authentication system, we specify it at the top of our
`ArticlesController` in `app/controllers/articles_controller.rb`. In our case,
we want the user to be authenticated on every action except `index` and `show`,
so we write that:

```highlight
class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  # snippet for brevity
```

<textarea class="clipboard-content" id="clipboard-28dae37a59610369bc6c991461bc881e">class ArticlesController &lt; ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  # snippet for brevity
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-28dae37a59610369bc6c991461bc881e">Copy</button>

We also want to allow only authenticated users to delete comments, so in the
`CommentsController` (`app/controllers/comments_controller.rb`) we write:

```highlight
class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @article = Article.find(params[:article_id])
    # ...
  end

  # snippet for brevity
```

<textarea class="clipboard-content" id="clipboard-8f35f73b202d3acd5fa89d42baf8cea1">class CommentsController &lt; ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @article = Article.find(params[:article_id])
    # ...
  end

  # snippet for brevity
</textarea>

<button class="clipboard-button" data-clipboard-target="#clipboard-8f35f73b202d3acd5fa89d42baf8cea1">Copy</button>

Now if you try to create a new article, you will be greeted with a basic HTTP
Authentication challenge:

![Basic HTTP Authentication Challenge](https://guides.rubyonrails.org/images/getting_started/challenge.png)

Other authentication methods are available for Rails applications. Two popular
authentication add-ons for Rails are the
[Devise](https://github.com/plataformatec/devise) rails engine and
the [Authlogic](https://github.com/binarylogic/authlogic) gem,
along with a number of others.

#### [10.2 Other Security Considerations](https://guides.rubyonrails.org/getting_started.html#other-security-considerations)

Security, especially in web applications, is a broad and detailed area. Security
in your Rails application is covered in more depth in
the [Ruby on Rails Security Guide](https://guides.rubyonrails.org/security.html).

### [11 What's Next?](https://guides.rubyonrails.org/getting_started.html#what-s-next-questionmark)

Now that you've seen your first Rails application, you should feel free to
update it and experiment on your own.

Remember, you don't have to do everything without help. As you need assistance
getting up and running with Rails, feel free to consult these support
resources:

* The [Ruby on Rails Guides](https://guides.rubyonrails.org/index.html)
* The [Ruby on Rails mailing list](https://discuss.rubyonrails.org/c/rubyonrails-talk)
* The [\#rubyonrails](irc://irc.freenode.net/#rubyonrails) channel on irc.freenode.net

### [12 Configuration Gotchas](https://guides.rubyonrails.org/getting_started.html#configuration-gotchas)

The easiest way to work with Rails is to store all external data as UTF-8. If
you don't, Ruby libraries and Rails will often be able to convert your native
data into UTF-8, but this doesn't always work reliably, so you're better off
ensuring that all external data is UTF-8.

If you have made a mistake in this area, the most common symptom is a black
diamond with a question mark inside appearing in the browser. Another common
symptom is characters like "Ã¼" appearing instead of "ü". Rails takes a number
of internal steps to mitigate common causes of these problems that can be
automatically detected and corrected. However, if you have external data that is
not stored as UTF-8, it can occasionally result in these kinds of issues that
cannot be automatically detected by Rails and corrected.

Two very common sources of data that are not UTF-8:

* Your text editor: Most text editors (such as TextMate), default to saving
    files as UTF-8. If your text editor does not, this can result in special
    characters that you enter in your templates (such as é) to appear as a diamond
    with a question mark inside in the browser. This also applies to your i18n
    translation files. Most editors that do not already default to UTF-8 (such as
    some versions of Dreamweaver) offer a way to change the default to UTF-8. Do
    so.
* Your database: Rails defaults to converting data from your database into UTF-8
    at the boundary. However, if your database is not using UTF-8 internally, it
    may not be able to store all characters that your users enter. For instance,
    if your database is using Latin-1 internally, and your user enters a Russian,
    Hebrew, or Japanese character, the data will be lost forever once it enters
    the database. If possible, use UTF-8 as the internal storage of your database.

### Feedback

You're encouraged to help improve the quality of this guide.

Please contribute if you see any typos or factual errors.
To get started, you can read our [documentation contributions](https://edgeguides.rubyonrails.org/contributing_to_ruby_on_rails.html#contributing-to-the-rails-documentation) section.

You may also find incomplete content or stuff that is not up to date.
Please do add any missing documentation for main. Make sure to check
[Edge Guides](https://edgeguides.rubyonrails.org/) first to verify
if the issues are already fixed or not on the main branch.
Check the [Ruby on Rails Guides Guidelines](https://guides.rubyonrails.org/ruby_on_rails_guides_guidelines.html)
for style and conventions.

If for whatever reason you spot something to fix but cannot patch it yourself, please
[open an issue](https://github.com/rails/rails/issues).

And last but not least, any kind of discussion regarding Ruby on Rails
documentation is very welcome on the [rubyonrails-docs mailing list](https://discuss.rubyonrails.org/c/rubyonrails-docs).