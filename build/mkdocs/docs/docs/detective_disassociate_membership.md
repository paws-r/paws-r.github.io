<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_disassociate_membership</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the member account from the specified behavior graph

### Description

Removes the member account from the specified behavior graph. This
operation can only be called by an invited member account that has the
`ENABLED` status.

`disassociate_membership` cannot be called by an organization account in
the organization behavior graph. For the organization behavior graph,
the Detective administrator account determines which organization
accounts to enable or disable as member accounts.

### Usage

    detective_disassociate_membership(GraphArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_disassociate_membership_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph to remove the member
account from.</p>
<p>The member account's member status in the behavior graph must be
<code>ENABLED</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_membership(
      GraphArn = "string"
    )
