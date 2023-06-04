<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_verify_user_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Verifies the specified user attributes in the user pool

### Description

Verifies the specified user attributes in the user pool.

If your user pool requires verification before Amazon Cognito updates
the attribute value, VerifyUserAttribute updates the affected attribute
to its pending value. For more information, see
[UserAttributeUpdateSettingsType](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UserAttributeUpdateSettingsType.html).

### Usage

    cognitoidentityprovider_verify_user_attribute(AccessToken,
      AttributeName, Code)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_verify_user_attribute_:_AccessToken">AccessToken</code></td>
<td><p>[required] A valid access token that Amazon Cognito issued to the
user whose user attributes you want to verify.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_verify_user_attribute_:_AttributeName">AttributeName</code></td>
<td><p>[required] The attribute name in the request to verify user
attributes.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_verify_user_attribute_:_Code">Code</code></td>
<td><p>[required] The verification code in the request to verify user
attributes.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$verify_user_attribute(
      AccessToken = "string",
      AttributeName = "string",
      Code = "string"
    )
