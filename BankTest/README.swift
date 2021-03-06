/*
Andrew Mawson
Overview notes and improvements:
1) No 3rd Party libs are used, I try to avoid using them. Perhaps with the exception of using well supported libs like AFNetworking or Alomofire.
2) I've used VIP / Clean Swift templates for the two views, MovieList & MovieDetails. I have a script for creating these 6 files and boilerplate code.
3) The API call is made using a simple no frills URLSession, I did this because of time constaints and to keep it simple.
4) The suggested API end point "/movie/latest" appears to be obsolete and was returning just one item. So, I used the discover endpoint.
5) The API uses a date range of the last seven days. This could be changed to an enum to allow fixed choices, for example 1 day, 1 week, 1 month, 1 year.
6) The movies are not sorted, displaying the latest at the top would be better
7) Only 20 movies are shown, adding paging to automatically load the next 20 when the user scrolls to the bottom of the table view would give a better UX.
8) Some JSON responses for Movie details contain Null values, this causes the Codeable protocol to fail to create the ViewModel. This can be remedied with optionals (e.g. backdrop_path or genres in MovieDetailsViewModel )
9) Add more JSON with null values to the test cases, make the two existing JSON unit test more detailed and check more values are correct.
10) It would be nice to download movie images or show thumbnails. Although there are atleast two choice poster or backdrop. These could be downloaded and cached.
11) The UI is basic :)
12) There is no error handling for network calls.
13) No UI tests, time ran out.

*/





/*
Test Instructions:

Code quality: is the code simple, easy to understand, and maintainable? Does object-oriented code follow principles such as the single responsibility principle? Is the coding style consistent with the language's guidelines? Is it consistent throughout the codebase?

Clarity: does the README clearly and concisely explains the problem and solution? Are technical trade-offs explained?

Correctness: does the application do what was asked? If there is anything missing, does the README explain why it is missing?

Security: are there any obvious vulnerability?

Testing: how thorough are the automated tests? Will they be difficult to change if the requirements of the application were to change? Are there some unit and some integration tests? We're not looking for full coverage (given time constraint) but just trying to get a feel for your testing skills.
Architecture: if appropriate how clean is the separation between the front-end and the back-end?

UX: if the solution includes a web interface is it understandable and pleasing to use?
Technical choices: do choices of libraries, databases, architecture etc. seem appropriate for the chosen application?


Code Challenge
Please create a mobile app that interacts with the movie DB API based on the following user stories:

As a User I want to see the latest movies so that I can get some idea on the latest movies to watch (please use the /movie/latest API for this purpose).
https://api.themoviedb.org/3/movie/latest?api_key=9c220d81a06bb0d860b74cdfa7223e98

As a User I want to be able to click on a specific movie in the "latest movies" so that I can see additional information about that movie (please use the endpoint /movie/{movie_id}).

Requirements
Please make any assumptions regarding the additional information screen.
Please feel free to use any frameworks.
For Android role please use Kotlin or Java and for iOS it must be Swift.
Can be built and deployed on an emulator/simulator/device running the latest Android/iOS version.
Movie DB API
https://www.themoviedb.org/documentation/api
https://developers.themoviedb.org/3/getting-started/search-and-query-for-details
*/



/*
API signup confirmation:
Hi kryten42,

Your request for an API key has been approved. You can start using this key immediately.

API Key: 9c220d81a06bb0d860b74cdfa7223e98

An example request looks like:
https://api.themoviedb.org/3/discover/movie?primary_release_date.gte=2014-09-15&primary_release_date.lte=2020-03-05&api_key=9c220d81a06bb0d860b74cdfa7223e98

https://api.themoviedb.org/3/movie/550?api_key=9c220d81a06bb0d860b74cdfa7223e98
We recently launched our TV API and would love some feedback if you have a chance to check it out.

Useful Links

Documentation: https://www.themoviedb.org/documentation/api
Support forum: https://www.themoviedb.org/talk/category/5047958519c29526b50017d6
Wrappers & libraries: https://www.themoviedb.org/documentation/api/wrappers-libraries
If you have any questions, feel free to create a new discussion in our support forum.

*/
