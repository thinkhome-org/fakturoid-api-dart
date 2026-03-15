<h1 id="authorization">Authorization</h1>

<hr />

<p>Authorization is provided via OAuth 2.0. Fakturoid supports<br/>
<a href="#authorization-code-flow">Authorization Code Flow</a> and<br/>
<a href="#client-credentials-flow">Client Credentials Flow</a>.</p>

<p>Authorization Code Flow should be used for multi-tenant applications (e.g. Shopify) where you need to provide access for multiple users to their accounts.</p>

<p>Client Credentials Flow can be used for the cases of creating either scripts without server component or if you want your own service to access just your Fakturoid account. Using Client Credential Flow for multi-tenant applications is not recommended and can lead to removal of access to your integration.</p>

<p>For development purposes, we recommend configuring your <code>hosts</code> file to point any custom domain to your <code>localhost</code>. You can then use this custom domain at your &ldquo;URL for redirect&rdquo;. This method serves as one of the possible workarounds of usual development needs, as we do not permit the direct use of <code>localhost</code> as the &ldquo;URL for redirect&rdquo; for security reasons.</p>

<h2 id="authorization-code-flow">Authorization Code Flow</h2>

<p>Before you can use Authorization Code Flow you need to create an integration in Fakturoid. If you don&rsquo;t already have an account, <a href="https://app.fakturoid.cz/pub/accounts/new">create a new one</a>. In your account, go to Settings → Connect other apps → OAuth 2 for app developers and create a new integration.</p>

<p>After creating the integration you will receive Client ID and Client Secret which you will need to use in the communication with API.</p>

<p>We recommend you to create at least two integrations once for testing and second for production. This way you can test your integration without affecting your production data.</p>

<p>You can find complete description of Authorization Code Flow in <a href="https://datatracker.ietf.org/doc/html/rfc6749#section-4.1">RFC 6749</a>.</p>

<h3 id="obtaining-an-authorization-code">Obtaining an authorization code</h3>

<p>Redirect the user from your application to the following URL with query parameters:</p>

<h4 id="url">URL</h4>

<pre><code class="text">https://app.fakturoid.cz/api/v3/oauth</code></pre>


<h4 id="query-parameters">Query Parameters</h4>

<table>
<thead>
<tr>
<th>            </th>
<th> Name            </th>
<th> Type         </th>
<th> Description                                                                                                  </th>
<th> Example                            </th>
</tr>
</thead>
<tbody>
<tr>
<td> <em>Required</em> </td>
<td> <code>client_id</code>     </td>
<td> <code>String(40)</code> </td>
<td> Integration Client ID. Copy from integration settings                                                        </td>
<td> <code>9ae1…f3d8</code> (truncated)            </td>
</tr>
<tr>
<td> <em>Required</em> </td>
<td> <code>redirect_uri</code>  </td>
<td> <code>String</code>     </td>
<td> Integration &ldquo;URL for redirect&rdquo; (must match the one from Fakturoid integration settings)                     </td>
<td> <code>https://www.example.org/redirect</code> </td>
</tr>
<tr>
<td> <em>Required</em> </td>
<td> <code>response_type</code> </td>
<td> <code>String</code>     </td>
<td> Tell server we want an authorization code. Value must be set to <code>"code"</code>                                    </td>
<td> <code>code</code>                             </td>
</tr>
<tr>
<td>            </td>
<td> <code>state</code>         </td>
<td> <code>String</code>     </td>
<td> Custom value to maintain between request and callback (for user identification and CSRF prevention)          </td>
<td> <code>abcd1234</code>                         </td>
</tr>
</tbody>
</table>


<p>If user is already logged into Fakturoid a confirmation page will be shown where he can allow the integration access the his account.<br/>
Logged-out user will be presented with a log-in form with an option to create an account if he doesn&rsquo;t have one.</p>

<p>After the user allows the access Fakturoid will redirect the user to the Redirect URL specified in the integration settings with authorization code passed via query parameters (see below).</p>

<h4 id="query-parameters">Query Parameters</h4>

<table>
<thead>
<tr>
<th>            </th>
<th> Name    </th>
<th> Type         </th>
<th> Description                                                                                                  </th>
<th> Example                 </th>
</tr>
</thead>
<tbody>
<tr>
<td> <em>Required</em> </td>
<td> <code>code</code>  </td>
<td> <code>String(80)</code> </td>
<td> Authorization code, expires after 5 minutes                                                                  </td>
<td> <code>1d4e…981d</code> (truncated) </td>
</tr>
<tr>
<td>            </td>
<td> <code>state</code> </td>
<td> <code>String</code>     </td>
<td> Custom value to maintain between request and callback (for user identification and CSRF prevention)          </td>
<td> <code>abcd1234</code>              </td>
</tr>
</tbody>
</table>


<h3 id="obtain-access-and-refresh-token">Obtain Access and Refresh Token</h3>

<p>Make sure to call this endpoint within 5 minutes after obtaining the authorization code.<br/>
Failure to do so will require the user to allow integration access again.</p>

<p>POST</p>

<p><code>/oauth/token</code></p>

<h4 id="request">Request</h4>

<p>POST</p>

<p><code>https://app.fakturoid.cz/api/v3/oauth/token</code></p>

<h5 id="headers">Headers</h5>

<table>
<thead>
<tr>
<th> Name            </th>
<th> Value </th>
</tr>
</thead>
<tbody>
<tr>
<td> <code>User-Agent</code>    </td>
<td> Please set your user agent in the format of <code>YourApplicationName (your.email@example.org)</code> </td>
</tr>
<tr>
<td> <code>Content-Type</code>  </td>
<td> <code>application/json</code> or <code>application/x-www-form-urlencoded</code> </td>
</tr>
<tr>
<td> <code>Accept</code>        </td>
<td> <code>application/json</code> </td>
</tr>
<tr>
<td> <code>Authorization</code> </td>
<td> HTTP Basic authentication. Example: <code>Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ=</code> where <code>Y2xp…ZXQ=</code> is urlsafe Base64-encoded string of <code>client_id:client_secret</code> (replace both <code>client_id</code> and <code>client_secret</code> with tokens obtained from your integration settings in Fakturoid). </td>
</tr>
</tbody>
</table>


<h5 id="body-attributes">Body Attributes</h5>

<table>
<thead>
<tr>
<th>            </th>
<th> Name           </th>
<th> Type         </th>
<th> Description </th>
</tr>
</thead>
<tbody>
<tr>
<td> <em>Required</em> </td>
<td> <code>grant_type</code>   </td>
<td> <code>String</code>     </td>
<td> We are authorizing with the authorization code. Value must be set to <code>"authorization_code"</code> </td>
</tr>
<tr>
<td> <em>Required</em> </td>
<td> <code>code</code>         </td>
<td> <code>String(80)</code> </td>
<td> Pass the value from request query parameter <code>code</code> </td>
</tr>
<tr>
<td> <em>Required</em> </td>
<td> <code>redirect_uri</code> </td>
<td> <code>String</code>     </td>
<td> Integration &ldquo;URL for redirect&rdquo; (must match the one from Fakturoid integration settings) </td>
</tr>
</tbody>
</table>


<h5 id="body">Body</h5>

<pre><code class="json">{
  &quot;grant_type&quot;: &quot;authorization_code&quot;,
  &quot;code&quot;: &quot;1d4e…981d&quot;,
  &quot;redirect_uri&quot;: &quot;https://www.example.org/redirect&quot;
}</code></pre>


<h4 id="response">Response</h4>

<h5 id="headers">Headers</h5>

<table>
<thead>
<tr>
<th> Name           </th>
<th> Value              </th>
</tr>
</thead>
<tbody>
<tr>
<td> <code>Content-Type</code> </td>
<td> <code>application/json</code> </td>
</tr>
</tbody>
</table>


<h5 id="status">Status</h5>

<p><code>200 OK</code></p>

<h5 id="body">Body</h5>

<pre><code class="json">{
  &quot;access_token&quot;: &quot;26e53aa3244b4c0aed56cb54a0223484e9c4aea49b09a03e4600ba995811b6af06428afc223c4c0c&quot;,
  &quot;token_type&quot;: &quot;Bearer&quot;,
  &quot;expires_in&quot;: 7200,
  &quot;refresh_token&quot;: &quot;55cfe5cc5e38e8da9646395958d4d681dd9385597f1c346aa6495ebd5b922024cd180b9b61077861&quot;
}</code></pre>


<p>Refresh token doesn&rsquo;t have an expiry date but can be deleted via revoke endpoint.</p>

<h3 id="refresh-access-token">Refresh Access Token</h3>

<p>Access token expires after 2 hours and will need to be refreshed. Refreshing doesn&rsquo;t require the user to allow integration access again.</p>

<p>POST</p>

<p><code>/oauth/token</code></p>

<h4 id="request">Request</h4>

<p>POST</p>

<p><code>https://app.fakturoid.cz/api/v3/oauth/token</code></p>

<h5 id="headers">Headers</h5>

<table>
<thead>
<tr>
<th> Name            </th>
<th> Value </th>
</tr>
</thead>
<tbody>
<tr>
<td> <code>User-Agent</code>    </td>
<td> Please set your user agent in the format of <code>YourApplicationName (your.email@example.org)</code> </td>
</tr>
<tr>
<td> <code>Content-Type</code>  </td>
<td> <code>application/json</code> or <code>application/x-www-form-urlencoded</code> </td>
</tr>
<tr>
<td> <code>Accept</code>        </td>
<td> <code>application/json</code> </td>
</tr>
<tr>
<td> <code>Authorization</code> </td>
<td> HTTP Basic authentication. Example: <code>Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ=</code> where <code>Y2xp…ZXQ=</code> is urlsafe Base64-encoded string of <code>client_id:client_secret</code> (replace both <code>client_id</code> and <code>client_secret</code> with tokens obtained from your integration settings in Fakturoid). </td>
</tr>
</tbody>
</table>


<h5 id="body-attributes">Body Attributes</h5>

<table>
<thead>
<tr>
<th>            </th>
<th> Name            </th>
<th> Type         </th>
<th> Description </th>
</tr>
</thead>
<tbody>
<tr>
<td> <em>Required</em> </td>
<td> <code>grant_type</code>    </td>
<td> <code>String</code>     </td>
<td> We are authorizing with the refresh token. Value must be set to <code>"refresh_token"</code> </td>
</tr>
<tr>
<td> <em>Required</em> </td>
<td> <code>refresh_token</code> </td>
<td> <code>String(80)</code> </td>
<td> Refresh token </td>
</tr>
</tbody>
</table>


<h5 id="body">Body</h5>

<pre><code class="json">{
  &quot;grant_type&quot;: &quot;refresh_token&quot;,
  &quot;refresh_token&quot;: &quot;55cf…7861&quot;
}</code></pre>


<h4 id="response">Response</h4>

<h5 id="headers">Headers</h5>

<table>
<thead>
<tr>
<th> Name           </th>
<th> Value              </th>
</tr>
</thead>
<tbody>
<tr>
<td> <code>Content-Type</code> </td>
<td> <code>application/json</code> </td>
</tr>
</tbody>
</table>


<h5 id="status">Status</h5>

<p><code>200 OK</code></p>

<h5 id="body">Body</h5>

<pre><code class="json">{
  &quot;access_token&quot;: &quot;63cfcf07492268ab0e3c58e9fa48096dc5bf0a9b7bbd2f6f45e0a6fa9fc2074a4523af3538f0df5c&quot;,
  &quot;token_type&quot;: &quot;Bearer&quot;,
  &quot;expires_in&quot;: 7200
}</code></pre>


<h3 id="revoke-access">Revoke access</h3>

<p>Revoking deletes both access and refresh tokens (the user will need to allow integration access again if needed).</p>

<p>POST</p>

<p><code>/oauth/revoke</code></p>

<h4 id="request">Request</h4>

<p>POST</p>

<p><code>https://app.fakturoid.cz/api/v3/oauth/revoke</code></p>

<h5 id="headers">Headers</h5>

<table>
<thead>
<tr>
<th> Name            </th>
<th> Value </th>
</tr>
</thead>
<tbody>
<tr>
<td> <code>User-Agent</code>    </td>
<td> Please set your user agent in the format of <code>YourApplicationName (your.email@example.org)</code> </td>
</tr>
<tr>
<td> <code>Content-Type</code>  </td>
<td> <code>application/json</code> or <code>application/x-www-form-urlencoded</code> </td>
</tr>
<tr>
<td> <code>Accept</code>        </td>
<td> <code>application/json</code> </td>
</tr>
<tr>
<td> <code>Authorization</code> </td>
<td> HTTP Basic authentication. Example: <code>Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ=</code> where <code>Y2xp…ZXQ=</code> is urlsafe Base64-encoded string of <code>client_id:client_secret</code> (replace both <code>client_id</code> and <code>client_secret</code> with tokens obtained from your integration settings in Fakturoid). </td>
</tr>
</tbody>
</table>


<h5 id="body-attributes">Body Attributes</h5>

<table>
<thead>
<tr>
<th>            </th>
<th> Name    </th>
<th> Type         </th>
<th> Description   </th>
</tr>
</thead>
<tbody>
<tr>
<td> <em>Required</em> </td>
<td> <code>token</code> </td>
<td> <code>String(80)</code> </td>
<td> Refresh token </td>
</tr>
</tbody>
</table>


<h5 id="body">Body</h5>

<pre><code class="json">{
  &quot;token&quot;: &quot;55cf…7861&quot;
}</code></pre>


<h4 id="response">Response</h4>

<h5 id="status">Status</h5>

<p><code>200 OK</code></p>

<h2 id="client-credentials-flow">Client Credentials Flow</h2>

<p>Before you start, go to your Fakturoid account and download your Client ID and Client Secret from your user screen Settings → User account. You can generate multiple credentials in your account and use them for authorization.</p>

<p>You can find a complete description of Client Credentials Flow in <a href="https://datatracker.ietf.org/doc/html/rfc6749#section-4.4">RFC 6749</a>.</p>

<h3 id="obtain-access-token">Obtain Access Token</h3>

<p>Access token expires after 2 hours after which needs to be obtained again (there is no refresh endpoint).</p>

<p>POST</p>

<p><code>/oauth/token</code></p>

<h4 id="request">Request</h4>

<p>POST</p>

<p><code>https://app.fakturoid.cz/api/v3/oauth/token</code></p>

<h5 id="headers">Headers</h5>

<table>
<thead>
<tr>
<th> Name            </th>
<th> Value </th>
</tr>
</thead>
<tbody>
<tr>
<td> <code>User-Agent</code>    </td>
<td> Please set your user agent in the format of <code>YourApplicationName (your.email@example.org)</code> </td>
</tr>
<tr>
<td> <code>Content-Type</code>  </td>
<td> <code>application/json</code> or <code>application/x-www-form-urlencoded</code> </td>
</tr>
<tr>
<td> <code>Accept</code>        </td>
<td> <code>application/json</code> </td>
</tr>
<tr>
<td> <code>Authorization</code> </td>
<td> HTTP Basic authentication. Example: <code>Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ=</code> where <code>Y2xp…ZXQ=</code> is urlsafe Base64-encoded string of <code>client_id:client_secret</code> (replace both <code>client_id</code> and <code>client_secret</code> with tokens obtained from your user settings in Fakturoid). </td>
</tr>
</tbody>
</table>


<h5 id="body-attributes">Body Attributes</h5>

<table>
<thead>
<tr>
<th>            </th>
<th> Name         </th>
<th> Type     </th>
<th> Description                                   </th>
</tr>
</thead>
<tbody>
<tr>
<td> <em>Required</em> </td>
<td> <code>grant_type</code> </td>
<td> <code>String</code> </td>
<td> Value must be set to <code>"client_credentials"</code>   </td>
</tr>
</tbody>
</table>


<h5 id="body">Body</h5>

<pre><code class="json">{
  &quot;grant_type&quot;: &quot;client_credentials&quot;
}</code></pre>


<h4 id="response">Response</h4>

<h5 id="headers">Headers</h5>

<table>
<thead>
<tr>
<th> Name           </th>
<th> Value              </th>
</tr>
</thead>
<tbody>
<tr>
<td> <code>Content-Type</code> </td>
<td> <code>application/json</code> </td>
</tr>
</tbody>
</table>


<h5 id="status">Status</h5>

<p><code>200 OK</code></p>

<h5 id="body">Body</h5>

<pre><code class="json">{
  &quot;access_token&quot;: &quot;26e53aa3244b4c0aed56cb54a0223484e9c4aea49b09a03e4600ba995811b6af06428afc223c4c0c&quot;,
  &quot;token_type&quot;: &quot;Bearer&quot;,
  &quot;expires_in&quot;: 7200
}</code></pre>


<h2 id="how-to-use-access-token">How to use access token</h2>

<p>All requests to Fakturoid API must include the access token in the Authorization header in the following format:</p>

<pre><code class="text">Authorization: token_type access_token</code></pre>


<p>For example when you receive the access token from the token endpoint:</p>

<pre><code class="json">{
  &quot;access_token&quot;: &quot;26e53aa3244b4c0aed56cb54a0223484e9c4aea49b09a03e4600ba995811b6af06428afc223c4c0c&quot;,
  &quot;token_type&quot;: &quot;Bearer&quot;,
  &quot;expires_in&quot;: 7200
}</code></pre>


<p>You will use it in the Authorization header like this:</p>

<pre><code class="text">Authorization: Bearer 26e53aa3244b4c0aed56cb54a0223484e9c4aea49b09a03e4600ba995811b6af06428afc223c4c0c</code></pre>
