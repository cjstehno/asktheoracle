# asktheoracle

A solo RPG oracle roller based on the one described by Chris McDowall in
https://www.bastionland.com/2020/12/ask-stars-minimal-solo-rpg.html. I have no association or permission, this is 
just an app for personal use, based on a public blog entry.

## Building
To make a release build:

    flutter build web --base-href=/oracle/

## Production

To publish the working version to the site, you need to have the `app` branch checked out as a separate clone. Build
the application (as above), then run:

    rsync -r build/web/* <path_to_app_clone>

where `<path_to_app_clone>` is the path to the separate clone of the `app` branch.

Then, in the "app clone" commit and push the changes to deploy the site.

## License

This is just a fun free project.