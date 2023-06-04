<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_service_specific_credential</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified service-specific credential

### Description

Deletes the specified service-specific credential.

### Usage

    iam_delete_service_specific_credential(UserName,
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
id="iam_delete_service_specific_credential_:_UserName">UserName</code></td>
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
id="iam_delete_service_specific_credential_:_ServiceSpecificCredentialId">ServiceSpecificCredentialId</code></td>
<td><p>[required] The unique identifier of the service-specific
credential. You can get this value by calling
<code>list_service_specific_credentials</code>.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that can consist of any upper or lowercased letter or
digit.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_service_specific_credential(
      UserName = "string",
      ServiceSpecificCredentialId = "string"
    )
