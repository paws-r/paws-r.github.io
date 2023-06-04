<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_accept_invitation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts an invitation for the member account to contribute data to a behavior graph

### Description

Accepts an invitation for the member account to contribute data to a
behavior graph. This operation can only be called by an invited member
account.

The request provides the ARN of behavior graph.

The member account status in the graph must be `INVITED`.

### Usage

    detective_accept_invitation(GraphArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_accept_invitation_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph that the member account
is accepting the invitation for.</p>
<p>The member account status in the behavior graph must be
<code>INVITED</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$accept_invitation(
      GraphArn = "string"
    )
