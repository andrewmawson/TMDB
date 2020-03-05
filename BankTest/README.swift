/*

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

As a User I want to be able to click on a specific movie in the "latest movies" so that I can see additional information about that movie (please use the endpoint /movie/{movie_id}).

Requirements
Please make any assumptions regarding the additional information screen.
Please feel free to use any frameworks.
For Android role please use Kotlin or Java and for iOS it must be Swift.
Can be built and deployed on an emulator/simulator/device running the latest Android/iOS version.
Movie DB API
https://www.themoviedb.org/documentation/api
https://developers.themoviedb.org/3/getting-started/search-and-query-for-details

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
