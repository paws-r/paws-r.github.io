<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN

### Description

Retrieves information about the specified IAM user, including the user's
creation date, path, unique ID, and ARN.

If you do not specify a user name, IAM determines the user name
implicitly based on the Amazon Web Services access key ID used to sign
the request to this operation.

### Usage

    iam_get_user(UserName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_get_user_:_UserName">UserName</code></td>
<td><p>The name of the user to get information about.</p>
<p>This parameter is optional. If it is not included, it defaults to the
user making the request. This parameter allows (through its <a
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
      User = list(
        Path = "string",
        UserName = "string",
        UserId = "string",
        Arn = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        PasswordLastUsed = as.POSIXct(
          "2015-01-01"
        ),
        PermissionsBoundary = list(
          PermissionsBoundaryType = "PermissionsBoundaryPolicy",
          PermissionsBoundaryArn = "string"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_user(
      UserName = "string"
    )

### Examples

    ## Not run: 
    # The following command gets information about the IAM user named Bob.
    svc$get_user(
      UserName = "Bob"
    )

    ## End(Not run)
