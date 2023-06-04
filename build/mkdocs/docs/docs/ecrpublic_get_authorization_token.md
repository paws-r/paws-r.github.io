<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_get_authorization_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves an authorization token

### Description

Retrieves an authorization token. An authorization token represents your
IAM authentication credentials. You can use it to access any Amazon ECR
registry that your IAM principal has access to. The authorization token
is valid for 12 hours. This API requires the
`ecr-public:GetAuthorizationToken` and `sts:GetServiceBearerToken`
permissions.

### Usage

    ecrpublic_get_authorization_token()

### Value

A list with the following syntax:

    list(
      authorizationData = list(
        authorizationToken = "string",
        expiresAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_authorization_token()
