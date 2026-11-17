API keys
==================================
Not all API’s are as “open” as GitHub’s. For example, if you ran the code for the first example above exactly as it was written (and didn’t change the GitHub username), you would have gotten information about the repos in janeeverydaydoe’s GitHub account. Because it is a fully-open API, you’re able to retrieve information about not only your GitHub account, but also other users’ public GitHub activity. This makes good sense because sharing code among public repositories is an important part of GitHub.

Alternatively, while Google also has an API (or rather, many API’s), they aren’t quite as open. 
This makes good sense. There is no reason why one should have access to the files on someone else’s Google Drive account. Controlling whose files one can access through Google’s API is an important privacy feature.

In these cases, what is known as a key is required to gain access to the API. API keys are obtained from the website’s API site (ie, for Google’s APIs, you would start here). 
Once acquired, these keys should never be shared on the Internet. There is a reason they’re required, after all. So, be sure to never push a key to GitHub or share it publicly. (If you do ever accidentally share a key on the Internet, return to the API and disable the key immediately.)

For example, to access the Twitter API, you would obtain your key and necessary tokens from Twitter’s API and replace the text in the key, secret, token, and token_secret arguments below. 
This would authenticate you to use Twitter’s API to acquire information about your home timeline.

<pre><code>
myapp = oauth_app("twitter",
                   key = "yourConsumerKeyHere",
                   secret = "yourConsumerSecretHere")
sig = sign_oauth1.0(myapp,
                    token = "yourTokenHere",
                    token_secret = "yourTokenSecretHere")
homeTL = GET("https://api.twitter.com/1.1/statuses/home_timeline.json", sig)
</code></pre>