<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the specified role, including the role's path, GUID, ARN, and the role's trust policy that grants permission to assume the role

### Description

Retrieves information about the specified role, including the role's
path, GUID, ARN, and the role's trust policy that grants permission to
assume the role. For more information about roles, see [Working with
roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html).

Policies returned by this operation are URL-encoded compliant with [RFC
3986](https://datatracker.ietf.org/doc/html/rfc3986). You can use a URL
decoding method to convert the policy back to plain JSON text. For
example, if you use Java, you can use the `decode` method of the
`java.net.URLDecoder` utility class in the Java SDK. Other languages and
SDKs provide similar functionality.

### Usage

    iam_get_role(RoleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_get_role_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the IAM role to get information about.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Role = list(
        Path = "string",
        RoleName = "string",
        RoleId = "string",
        Arn = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        AssumeRolePolicyDocument = "string",
        Description = "string",
        MaxSessionDuration = 123,
        PermissionsBoundary = list(
          PermissionsBoundaryType = "PermissionsBoundaryPolicy",
          PermissionsBoundaryArn = "string"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        RoleLastUsed = list(
          LastUsedDate = as.POSIXct(
            "2015-01-01"
          ),
          Region = "string"
        )
      )
    )

### Request syntax

    svc$get_role(
      RoleName = "string"
    )

### Examples

    ## Not run: 
    # The following command gets information about the role named Test-Role.
    svc$get_role(
      RoleName = "Test-Role"
    )

    ## End(Not run)
