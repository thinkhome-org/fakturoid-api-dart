<h1 id="api-v3">API v3</h1>

<hr />

<h2 id="request-formalities">Request formalities</h2>

<ul>
<li>All requests must be made via <strong>HTTPS</strong>.</li>
<li>All endpoint URLs begin with <code>https://app.fakturoid.cz/api/v3</code>.</li>
</ul>

<p>Most endpoints require Fakturoid account name as part of the request URL as a <code>slug</code> parameter.</p>

<pre><code class="text">https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices.json</code></pre>

<p>For example if the account name is <code>applecorp</code>, the URL will look like this:</p>

<pre><code class="text">https://app.fakturoid.cz/api/v3/accounts/applecorp/invoices.json</code></pre>

<p>List of all accounts for the current user can be obtained via <a href="https://www.fakturoid.cz/api/v3/users#current-user">current user endpoint</a>.</p>

<h3 id="identification">Identification</h3>

<p>All requests must have the <code>User-Agent</code> header with the information about the name of your application and a technical contact email so we can contact you in case something goes rogue with your API integration.</p>

<pre><code class="text">User-Agent: YourAppName (administrative@contact.com)</code></pre>

<p>Requests without this header will receive <code>400 Bad Request</code> error.</p>

<h3 id="json">JSON</h3>

<p>Unless stated otherwise, data (payload) is sent inside the request/response body as an UTF-8 encoded JSON string. Requests that send JSON payload need to have a header <code>Content-Type: application/json</code>.</p>

<p>Requests requesting a different type of response will receive <code>415 Unsupported Media Type</code> error.</p>

<h2 id="authorization">Authorization</h2>

<p>Fakturoid supports <a href="https://www.fakturoid.cz/api/v3/authorization">OAuth 2 protocol</a> for authorization.</p>

<h2 id="pagination">Pagination</h2>

<ul>
<li>Pagination is used on all endpoints that return a collection of records.</li>
<li>There are 40 records per page.</li>
<li>Next page can be requested by using the <code>page</code> query parameter.</li>
</ul>

<h2 id="error-handling">Error handling</h2>

<p>Aside from <code>2xx</code> success HTTP status codes, the API may also return <code>4xx</code> client and <code>5xx</code> server error responses. In case of an error response body always contains a JSON with the description of the error.</p>

<p>Error response body can have two formats. The first one is always used for <code>422 Unprocessable Content</code> responses for invalid data and occasionally for other errors as well:</p>

<pre><code class="json">{
  "errors": {
    "name": ["can't be blank"]
  }
}</code></pre>

<p>It contains <code>errors</code> key with a map of fields an their errors. The second format is used for all other errors and always contains <code>error</code> key with a string code of the error and <code>error_description</code> with a human readable description of the error:</p>

<pre><code class="json">{
  "error": "invalid_request",
  "error_description": "Required header \"User-Agent\" is missing"
}</code></pre>

<h3 id="read-only-mode">Read-only mode</h3>

<p>In case of maintenance, Fakturoid API will respond with status code <code>503 Temporarily Unavailable</code>. Certain search endpoints may return the same status code when they are busy.</p>

<h3 id="defensive-implementation-of-the-api">Defensive implementation of the API</h3>

<p>Your application should always handle errors returned by the API. In cases of a maintenance or a <code>5xx</code> server error, your application should retry the request later as Fakturoid does not store the requests for the later processing.</p>

<p>In case of <code>4xx</code> client error, your application should display the error message to the user or your integration should be updated in a way to fix the error.</p>

<h2 id="rate-limiting">Rate-limiting</h2>

<p>Fakturoid implements rate limit headers based on <a href="https://www.ietf.org/archive/id/draft-ietf-httpapi-ratelimit-headers-08.html">RFC Draft</a>:</p>

<pre><code class="text">X-RateLimit-Policy: default;q=400;w=60
X-RateLimit: default;r=398;t=55</code></pre>

<ul>
<li><code>X-RateLimit-Policy</code> header contains the policy name, maximum number of requests (<code>q</code> parameter) and the time window in seconds (<code>w</code> parameter).</li>
<li><code>X-RateLimit</code> header contains the policy name, remaining number of requests (<code>r</code> parameter) and the remaining time in seconds until the reset (<code>t</code> parameter).</li>
</ul>

<p>The current rate limit quota is always defined in the rate limit headers. If the rate limit is exceeded, the server will respond with status code <code>429 Too Many Requests</code>. Wait until the rate limit resets and then retry the request.</p>

<h2 id="blocked-account">Blocked account</h2>

<p>If the Fakturoid account is blocked due to an overdue invoice from Fakturoid, the server will respond with status code <code>402 Payment Required</code> and the response body will contain the list of unpaid invoices.</p>
