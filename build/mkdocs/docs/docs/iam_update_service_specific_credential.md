<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_service_specific_credential</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the status of a service-specific credential to Active or Inactive

### Description

Sets the status of a service-specific credential to `Active` or
`Inactive`. Service-specific credentials that are inactive cannot be
used for authentication to the service. This operation can be used to
disable a user's service-specific credential as part of a credential
rotation work flow.

### Usage

    iam_update_service_specific_credential(UserName,
      ServiceSpecificCredentialId, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_update_service_specific_credential_:_UserName">UserName</code></td>
<td><p>The name of the IAM user associated with the service-specific
credential. If you do not specify this value, then the operation assumes
the user whose credentials are used to call the operation.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_update_service_specific_credential_:_ServiceSpecificCredentialId">ServiceSpecificCredentialId</code></td>
<td><p>[required] The unique identifier of the service-specific
credential.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that can consist of any upper or lowercased letter or
digit.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_update_service_specific_credential_:_Status">Status</code></td>
<td><p>[required] The status to be assigned to the service-specific
credential.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_service_specific_credential(
      UserName = "string",
      ServiceSpecificCredentialId = "string",
      Status = "Active"|"Inactive"
    )
