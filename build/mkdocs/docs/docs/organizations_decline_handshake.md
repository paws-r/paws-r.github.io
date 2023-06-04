<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_decline_handshake</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Declines a handshake request

### Description

Declines a handshake request. This sets the handshake state to
`DECLINED` and effectively deactivates the request.

This operation can be called only from the account that received the
handshake. The originator of the handshake can use `cancel_handshake`
instead. The originator can't reactivate a declined request, but can
reinitiate the process with a new handshake request.

After you decline a handshake, it continues to appear in the results of
relevant APIs for only 30 days. After that, it's deleted.

### Usage

    organizations_decline_handshake(HandshakeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_decline_handshake_:_HandshakeId">HandshakeId</code></td>
<td><p>[required] The unique identifier (ID) of the handshake that you
want to decline. You can get the ID from the
<code>list_handshakes_for_account</code> operation.</p>
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

    svc$decline_handshake(
      HandshakeId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows Susan declining an invitation to join Bill's
    # organization. The DeclineHandshake operation returns a handshake object,
    # showing that the state is now DECLINED:
    svc$decline_handshake(
      HandshakeId = "h-examplehandshakeid111"
    )

    ## End(Not run)
