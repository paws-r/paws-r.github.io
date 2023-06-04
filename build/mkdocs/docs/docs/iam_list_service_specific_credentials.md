<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_service_specific_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the service-specific credentials associated with the specified IAM user

### Description

Returns information about the service-specific credentials associated
with the specified IAM user. If none exists, the operation returns an
empty list. The service-specific credentials returned by this operation
are used only for authenticating the IAM user to a specific service. For
more information about using service-specific credentials to
authenticate to an Amazon Web Services service, see [Set up
service-specific
credentials](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html)
in the CodeCommit User Guide.

### Usage

    iam_list_service_specific_credentials(UserName, ServiceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_list_service_specific_credentials_:_UserName">UserName</code></td>
<td><p>The name of the user whose service-specific credentials you want
information about. If this value is not specified, then the operation
assumes the user whose credentials are used to call the operation.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_list_service_specific_credentials_:_ServiceName">ServiceName</code></td>
<td><p>Filters the returned results to only those for the specified
Amazon Web Services service. If not specified, then Amazon Web Services
returns service-specific credentials for all services.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceSpecificCredentials = list(
        list(
          UserName = "string",
          Status = "Active"|"Inactive",
          ServiceUserName = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          ServiceSpecificCredentialId = "string",
          ServiceName = "string"
        )
      )
    )

### Request syntax

    svc$list_service_specific_credentials(
      UserName = "string",
      ServiceName = "string"
    )
