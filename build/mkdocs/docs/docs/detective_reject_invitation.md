<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_reject_invitation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Rejects an invitation to contribute the account data to a behavior graph

### Description

Rejects an invitation to contribute the account data to a behavior
graph. This operation must be called by an invited member account that
has the `INVITED` status.

`reject_invitation` cannot be called by an organization account in the
organization behavior graph. In the organization behavior graph,
organization accounts do not receive an invitation.

### Usage

    detective_reject_invitation(GraphArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_reject_invitation_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph to reject the invitation
to.</p>
<p>The member account's current member status in the behavior graph must
be <code>INVITED</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reject_invitation(
      GraphArn = "string"
    )
