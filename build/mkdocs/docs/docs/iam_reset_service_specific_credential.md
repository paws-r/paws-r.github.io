<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_reset_service_specific_credential</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets the password for a service-specific credential

### Description

Resets the password for a service-specific credential. The new password
is Amazon Web Services generated and cryptographically strong. It cannot
be configured by the user. Resetting the password immediately
invalidates the previous password associated with this user.

### Usage

    iam_reset_service_specific_credential(UserName,
      ServiceSpecificCredentialId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_reset_service_specific_credential_:_UserName">UserName</code></td>
<td><p>The name of the IAM user associated with the service-specific
credential. If this value is not specified, then the operation assumes
the user whose credentials are used to call the operation.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_reset_service_specific_credential_:_ServiceSpecificCredentialId">ServiceSpecificCredentialId</code></td>
<td><p>[required] The unique identifier of the service-specific
credential.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that can consist of any upper or lowercased letter or
digit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceSpecificCredential = list(
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        ServiceName = "string",
        ServiceUserName = "string",
        ServicePassword = "string",
        ServiceSpecificCredentialId = "string",
        UserName = "string",
        Status = "Active"|"Inactive"
      )
    )

### Request syntax

    svc$reset_service_specific_credential(
      UserName = "string",
      ServiceSpecificCredentialId = "string"
    )
