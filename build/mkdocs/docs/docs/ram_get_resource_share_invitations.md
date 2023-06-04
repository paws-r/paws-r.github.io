<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_get_resource_share_invitations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves details about invitations that you have received for resource shares

### Description

Retrieves details about invitations that you have received for resource
shares.

### Usage

    ram_get_resource_share_invitations(resourceShareInvitationArns,
      resourceShareArns, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_get_resource_share_invitations_:_resourceShareInvitationArns">resourceShareInvitationArns</code></td>
<td><p>Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> of the resource share invitations you want
information about.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_get_resource_share_invitations_:_resourceShareArns">resourceShareArns</code></td>
<td><p>Specifies that you want details about invitations only for the
resource shares described by this list of <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a></p></td>
</tr>
<tr class="odd">
<td><code
id="ram_get_resource_share_invitations_:_nextToken">nextToken</code></td>
<td><p>Specifies that you want to receive the next page of results.
Valid only if you received a <code>NextToken</code> response in the
previous request. If you did, it indicates that more output is
available. Set this parameter to the value provided by the previous
call's <code>NextToken</code> response to request the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_get_resource_share_invitations_:_maxResults">maxResults</code></td>
<td><p>Specifies the total number of results that you want included on
each page of the response. If you do not include this parameter, it
defaults to a value that is specific to the operation. If additional
items exist beyond the number you specify, the <code>NextToken</code>
response element is returned with a value (not null). Include the
specified value as the <code>NextToken</code> request parameter in the
next call to the operation to get the next part of the results. Note
that the service might return fewer results than the maximum even when
there are more results available. You should check
<code>NextToken</code> after every operation to ensure that you receive
all of the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceShareInvitations = list(
        list(
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
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_resource_share_invitations(
      resourceShareInvitationArns = list(
        "string"
      ),
      resourceShareArns = list(
        "string"
      ),
      nextToken = "string",
      maxResults = 123
    )
