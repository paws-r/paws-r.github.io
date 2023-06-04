<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_confirm_sign_up</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Confirms registration of a new user

### Description

Confirms registration of a new user.

### Usage

    cognitoidentityprovider_confirm_sign_up(ClientId, SecretHash, Username,
      ConfirmationCode, ForceAliasCreation, AnalyticsMetadata,
      UserContextData, ClientMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_confirm_sign_up_:_ClientId">ClientId</code></td>
<td><p>[required] The ID of the app client associated with the user
pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_confirm_sign_up_:_SecretHash">SecretHash</code></td>
<td><p>A keyed-hash message authentication code (HMAC) calculated using
the secret key of a user pool client and username plus the client ID in
the message.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_confirm_sign_up_:_Username">Username</code></td>
<td><p>[required] The user name of the user whose registration you want
to confirm.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_confirm_sign_up_:_ConfirmationCode">ConfirmationCode</code></td>
<td><p>[required] The confirmation code sent by a user's request to
confirm registration.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_confirm_sign_up_:_ForceAliasCreation">ForceAliasCreation</code></td>
<td><p>Boolean to be specified to force user confirmation irrespective
of existing alias. By default set to <code>False</code>. If this
parameter is set to <code>True</code> and the phone number/email used
for sign up confirmation already exists as an alias with a different
user, the API call will migrate the alias from the previous user to the
newly created user being confirmed. If set to <code>False</code>, the
API will throw an <strong>AliasExistsException</strong> error.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_confirm_sign_up_:_AnalyticsMetadata">AnalyticsMetadata</code></td>
<td><p>The Amazon Pinpoint analytics metadata for collecting metrics for
<code>confirm_sign_up</code> calls.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_confirm_sign_up_:_UserContextData">UserContextData</code></td>
<td><p>Contextual data about your user session, such as the device
fingerprint, IP address, or location. Amazon Cognito advanced security
evaluates the risk of an authentication event based on the context that
your app generates and passes to Amazon Cognito when it makes API
requests.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_confirm_sign_up_:_ClientMetadata">ClientMetadata</code></td>
<td><p>A map of custom key-value pairs that you can provide as input for
any custom workflows that this action triggers.</p>
<p>You create custom workflows by assigning Lambda functions to user
pool triggers. When you use the ConfirmSignUp API action, Amazon Cognito
invokes the function that is assigned to the <em>post confirmation</em>
trigger. When Amazon Cognito invokes this function, it passes a JSON
payload, which the function receives as input. This payload contains a
<code>clientMetadata</code> attribute, which provides the data that you
assigned to the ClientMetadata parameter in your ConfirmSignUp request.
In your function code in Lambda, you can process the
<code>clientMetadata</code> value to enhance your workflow for your
specific needs.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">Customizing
user pool Workflows with Lambda Triggers</a> in the <em>Amazon Cognito
Developer Guide</em>.</p>
<p>When you use the ClientMetadata parameter, remember that Amazon
Cognito won't do the following:</p>
<ul>
<li><p>Store the ClientMetadata value. This data is available only to
Lambda triggers that are assigned to a user pool to support custom
workflows. If your user pool configuration doesn't include triggers, the
ClientMetadata parameter serves no purpose.</p></li>
<li><p>Validate the ClientMetadata value.</p></li>
<li><p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to
provide sensitive information.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$confirm_sign_up(
      ClientId = "string",
      SecretHash = "string",
      Username = "string",
      ConfirmationCode = "string",
      ForceAliasCreation = TRUE|FALSE,
      AnalyticsMetadata = list(
        AnalyticsEndpointId = "string"
      ),
      UserContextData = list(
        IpAddress = "string",
        EncodedData = "string"
      ),
      ClientMetadata = list(
        "string"
      )
    )
