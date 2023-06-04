<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssooidc_start_device_authorization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates device authorization by requesting a pair of verification codes from the authorization service

### Description

Initiates device authorization by requesting a pair of verification
codes from the authorization service.

### Usage

    ssooidc_start_device_authorization(clientId, clientSecret, startUrl)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssooidc_start_device_authorization_:_clientId">clientId</code></td>
<td><p>[required] The unique identifier string for the client that is
registered with IAM Identity Center. This value should come from the
persisted result of the <code>register_client</code> API
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="ssooidc_start_device_authorization_:_clientSecret">clientSecret</code></td>
<td><p>[required] A secret string that is generated for the client. This
value should come from the persisted result of the
<code>register_client</code> API operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssooidc_start_device_authorization_:_startUrl">startUrl</code></td>
<td><p>[required] The URL for the AWS access portal. For more
information, see <a
href="https://docs.aws.amazon.com/singlesignon/latest/userguide/using-the-portal.html">Using
the AWS access portal</a> in the <em>IAM Identity Center User
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deviceCode = "string",
      userCode = "string",
      verificationUri = "string",
      verificationUriComplete = "string",
      expiresIn = 123,
      interval = 123
    )

### Request syntax

    svc$start_device_authorization(
      clientId = "string",
      clientSecret = "string",
      startUrl = "string"
    )
