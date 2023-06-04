<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sso_logout</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the locally stored SSO tokens from the client-side cache and sends an API call to the IAM Identity Center service to invalidate the corresponding server-side IAM Identity Center sign in session

### Description

Removes the locally stored SSO tokens from the client-side cache and
sends an API call to the IAM Identity Center service to invalidate the
corresponding server-side IAM Identity Center sign in session.

If a user uses IAM Identity Center to access the AWS CLI, the user’s IAM
Identity Center sign in session is used to obtain an IAM session, as
specified in the corresponding IAM Identity Center permission set. More
specifically, IAM Identity Center assumes an IAM role in the target
account on behalf of the user, and the corresponding temporary AWS
credentials are returned to the client.

After user logout, any existing IAM role sessions that were created by
using IAM Identity Center permission sets continue based on the duration
configured in the permission set. For more information, see [User
authentications](https://docs.aws.amazon.com/singlesignon/latest/userguide/authconcept.html)
in the *IAM Identity Center User Guide*.

### Usage

    sso_logout(accessToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sso_logout_:_accessToken">accessToken</code></td>
<td><p>[required] The token issued by the <code>CreateToken</code> API
call. For more information, see <a
href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a>
in the <em>IAM Identity Center OIDC API Reference Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$logout(
      accessToken = "string"
    )
