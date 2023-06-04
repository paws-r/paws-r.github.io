<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssooidc_register_client</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a client with IAM Identity Center

### Description

Registers a client with IAM Identity Center. This allows clients to
initiate device authorization. The output should be persisted for reuse
through many authentication requests.

### Usage

    ssooidc_register_client(clientName, clientType, scopes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssooidc_register_client_:_clientName">clientName</code></td>
<td><p>[required] The friendly name of the client.</p></td>
</tr>
<tr class="even">
<td><code
id="ssooidc_register_client_:_clientType">clientType</code></td>
<td><p>[required] The type of client. The service supports only
<code>public</code> as a client type. Anything other than public will be
rejected by the service.</p></td>
</tr>
<tr class="odd">
<td><code id="ssooidc_register_client_:_scopes">scopes</code></td>
<td><p>The list of scopes that are defined by the client. Upon
authorization, this list is used to restrict permissions when granting
an access token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      clientId = "string",
      clientSecret = "string",
      clientIdIssuedAt = 123,
      clientSecretExpiresAt = 123,
      authorizationEndpoint = "string",
      tokenEndpoint = "string"
    )

### Request syntax

    svc$register_client(
      clientName = "string",
      clientType = "string",
      scopes = list(
        "string"
      )
    )
