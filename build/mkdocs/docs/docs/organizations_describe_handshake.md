<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_describe_handshake</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about a previously requested handshake

### Description

Retrieves information about a previously requested handshake. The
handshake ID comes from the response to the original
`invite_account_to_organization` operation that generated the handshake.

You can access handshakes that are `ACCEPTED`, `DECLINED`, or `CANCELED`
for only 30 days after they change to that state. They're then deleted
and no longer accessible.

This operation can be called from any account in the organization.

### Usage

    organizations_describe_handshake(HandshakeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_describe_handshake_:_HandshakeId">HandshakeId</code></td>
<td><p>[required] The unique identifier (ID) of the handshake that you
want information about. You can get the ID from the original call to
<code>invite_account_to_organization</code>, or from a call to
<code>list_handshakes_for_account</code> or
<code>list_handshakes_for_organization</code>.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for handshake ID string requires "h-" followed by from 8 to 32 lowercase
letters or digits.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Handshake = list(
        Id = "string",
        Arn = "string",
        Parties = list(
          list(
            Id = "string",
            Type = "ACCOUNT"|"ORGANIZATION"|"EMAIL"
          )
        ),
        State = "REQUESTED"|"OPEN"|"CANCELED"|"ACCEPTED"|"DECLINED"|"EXPIRED",
        RequestedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        ExpirationTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        Action = "INVITE"|"ENABLE_ALL_FEATURES"|"APPROVE_ALL_FEATURES"|"ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE",
        Resources = list(
          list(
            Value = "string",
            Type = "ACCOUNT"|"ORGANIZATION"|"ORGANIZATION_FEATURE_SET"|"EMAIL"|"MASTER_EMAIL"|"MASTER_NAME"|"NOTES"|"PARENT_HANDSHAKE",
            Resources = list()
          )
        )
      )
    )

### Request syntax

    svc$describe_handshake(
      HandshakeId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows you how to request details about a
    # handshake. The handshake ID comes either from the original call to
    # "InviteAccountToOrganization", or from a call to
    # "ListHandshakesForAccount" or "ListHandshakesForOrganization":
    svc$describe_handshake(
      HandshakeId = "h-examplehandshakeid111"
    )

    ## End(Not run)
