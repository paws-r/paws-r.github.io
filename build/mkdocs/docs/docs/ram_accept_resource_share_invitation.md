<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_accept_resource_share_invitation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts an invitation to a resource share from another Amazon Web Services account

### Description

Accepts an invitation to a resource share from another Amazon Web
Services account. After you accept the invitation, the resources
included in the resource share are available to interact with in the
relevant Amazon Web Services Management Consoles and tools.

### Usage

    ram_accept_resource_share_invitation(resourceShareInvitationArn,
      clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_accept_resource_share_invitation_:_resourceShareInvitationArn">resourceShareInvitationArn</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the invitation that you want to
accept.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_accept_resource_share_invitation_:_clientToken">clientToken</code></td>
<td><p>Specifies a unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. This lets you safely retry the
request without accidentally performing the same operation a second
time. Passing the same value to a later call to an operation requires
that you also pass the same value for all other parameters. We recommend
that you use a <a
href="https://en.wikipedia.org/wiki/Universally_unique_identifier">UUID
type of value.</a>.</p>
<p>If you don't provide this value, then Amazon Web Services generates a
random one for you.</p>
<p>If you retry the operation with the same <code>ClientToken</code>,
but with different parameters, the retry fails with an
<code>IdempotentParameterMismatch</code> error.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceShareInvitation = list(
        resourceShareInvitationArn = "string",
        resourceShareName = "string",
        resourceShareArn = "string",
        senderAccountId = "string",
        receiverAccountId = "string",
        invitationTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        status = "PENDING"|"ACCEPTED"|"REJECTED"|"EXPIRED",
        resourceShareAssociations = list(
          list(
            resourceShareArn = "string",
            resourceShareName = "string",
            associatedEntity = "string",
            associationType = "PRINCIPAL"|"RESOURCE",
            status = "ASSOCIATING"|"ASSOCIATED"|"FAILED"|"DISASSOCIATING"|"DISASSOCIATED",
            statusMessage = "string",
            creationTime = as.POSIXct(
              "2015-01-01"
            ),
            lastUpdatedTime = as.POSIXct(
              "2015-01-01"
            ),
            external = TRUE|FALSE
          )
        ),
        receiverArn = "string"
      ),
      clientToken = "string"
    )

### Request syntax

    svc$accept_resource_share_invitation(
      resourceShareInvitationArn = "string",
      clientToken = "string"
    )
