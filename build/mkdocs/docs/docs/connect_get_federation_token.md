<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_get_federation_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a token for federation

### Description

Retrieves a token for federation.

This API doesn't support root users. If you try to invoke
GetFederationToken with root credentials, an error message similar to
the following one appears:

`⁠Provided identity: Principal: .... User: .... cannot be used for federation with Amazon Connect⁠`

### Usage

    connect_get_federation_token(InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_get_federation_token_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Credentials = list(
        AccessToken = "string",
        AccessTokenExpiration = as.POSIXct(
          "2015-01-01"
        ),
        RefreshToken = "string",
        RefreshTokenExpiration = as.POSIXct(
          "2015-01-01"
        )
      ),
      SignInUrl = "string",
      UserArn = "string",
      UserId = "string"
    )

### Request syntax

    svc$get_federation_token(
      InstanceId = "string"
    )
