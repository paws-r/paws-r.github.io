<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_get_signing_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This method takes a user pool ID, and returns the signing certificate

### Description

This method takes a user pool ID, and returns the signing certificate.
The issued certificate is valid for 10 years from the date of issue.

Amazon Cognito issues and assigns a new signing certificate annually.
This process returns a new value in the response to
`get_signing_certificate`, but doesn't invalidate the original
certificate.

### Usage

    cognitoidentityprovider_get_signing_certificate(UserPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_get_signing_certificate_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Certificate = "string"
    )

### Request syntax

    svc$get_signing_certificate(
      UserPoolId = "string"
    )
