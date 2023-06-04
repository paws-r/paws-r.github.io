<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_cancel_handshake</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a handshake

### Description

Cancels a handshake. Canceling a handshake sets the handshake state to
`CANCELED`.

This operation can be called only from the account that originated the
handshake. The recipient of the handshake can't cancel it, but can use
`decline_handshake` instead. After a handshake is canceled, the
recipient can no longer respond to that handshake.

After you cancel a handshake, it continues to appear in the results of
relevant APIs for only 30 days. After that, it's deleted.

### Usage

    organizations_cancel_handshake(HandshakeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_cancel_handshake_:_HandshakeId">HandshakeId</code></td>
<td><p>[required] The unique identifier (ID) of the handshake that you
want to cancel. You can get the ID from the
<code>list_handshakes_for_organization</code> operation.</p>
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

    svc$cancel_handshake(
      HandshakeId = "string"
    )

### Examples

    ## Not run: 
    # Bill previously sent an invitation to Susan's account to join his
    # organization. He changes his mind and decides to cancel the invitation
    # before Susan accepts it. The following example shows Bill's
    # cancellation:
    # 
    svc$cancel_handshake(
      HandshakeId = "h-examplehandshakeid111"
    )

    ## End(Not run)
