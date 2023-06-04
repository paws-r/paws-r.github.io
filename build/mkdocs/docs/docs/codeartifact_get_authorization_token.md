<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_get_authorization_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a temporary authorization token for accessing repositories in the domain

### Description

Generates a temporary authorization token for accessing repositories in
the domain. This API requires the `codeartifact:GetAuthorizationToken`
and `sts:GetServiceBearerToken` permissions. For more information about
authorization tokens, see [CodeArtifact authentication and
tokens](https://docs.aws.amazon.com/codeartifact/latest/ug/tokens-authentication.html).

CodeArtifact authorization tokens are valid for a period of 12 hours
when created with the `login` command. You can call `login` periodically
to refresh the token. When you create an authorization token with the
`get_authorization_token` API, you can set a custom authorization
period, up to a maximum of 12 hours, with the `durationSeconds`
parameter.

The authorization period begins after `login` or
`get_authorization_token` is called. If `login` or
`get_authorization_token` is called while assuming a role, the token
lifetime is independent of the maximum session duration of the role. For
example, if you call `⁠sts assume-role⁠` and specify a session duration of
15 minutes, then generate a CodeArtifact authorization token, the token
will be valid for the full authorization period even though this is
longer than the 15-minute session duration.

See [Using IAM
Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html)
for more information on controlling session duration.

### Usage

    codeartifact_get_authorization_token(domain, domainOwner,
      durationSeconds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_get_authorization_token_:_domain">domain</code></td>
<td><p>[required] The name of the domain that is in scope for the
generated authorization token.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_get_authorization_token_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeartifact_get_authorization_token_:_durationSeconds">durationSeconds</code></td>
<td><p>The time, in seconds, that the generated authorization token is
valid. Valid values are <code>0</code> and any number between
<code>900</code> (15 minutes) and <code>43200</code> (12 hours). A value
of <code>0</code> will set the expiration of the authorization token to
the same expiration of the user's role's temporary credentials.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      authorizationToken = "string",
      expiration = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_authorization_token(
      domain = "string",
      domainOwner = "string",
      durationSeconds = 123
    )
