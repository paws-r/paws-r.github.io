<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_confirm_sign_up</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Confirms user registration as an admin without using a confirmation code

### Description

Confirms user registration as an admin without using a confirmation
code. Works on any user.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_confirm_sign_up(UserPoolId, Username,
      ClientMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_confirm_sign_up_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for which you want to confirm user
registration.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_confirm_sign_up_:_Username">Username</code></td>
<td><p>[required] The user name for which you want to confirm user
registration.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_confirm_sign_up_:_ClientMetadata">ClientMetadata</code></td>
<td><p>A map of custom key-value pairs that you can provide as input for
any custom workflows that this action triggers.</p>
<p>If your user pool configuration includes triggers, the
AdminConfirmSignUp API action invokes the Lambda function that is
specified for the <em>post confirmation</em> trigger. When Amazon
Cognito invokes this function, it passes a JSON payload, which the
function receives as input. In this payload, the
<code>clientMetadata</code> attribute provides the data that you
assigned to the ClientMetadata parameter in your AdminConfirmSignUp
request. In your function code in Lambda, you can process the
ClientMetadata value to enhance your workflow for your specific
needs.</p>
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

    svc$admin_confirm_sign_up(
      UserPoolId = "string",
      Username = "string",
      ClientMetadata = list(
        "string"
      )
    )
