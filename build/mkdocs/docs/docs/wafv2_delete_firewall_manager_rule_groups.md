<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_delete_firewall_manager_rule_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes all rule groups that are managed by Firewall Manager for the specified web ACL

### Description

Deletes all rule groups that are managed by Firewall Manager for the
specified web ACL.

You can only use this if `ManagedByFirewallManager` is false in the
specified WebACL.

### Usage

    wafv2_delete_firewall_manager_rule_groups(WebACLArn, WebACLLockToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_delete_firewall_manager_rule_groups_:_WebACLArn">WebACLArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the web
ACL.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_delete_firewall_manager_rule_groups_:_WebACLLockToken">WebACLLockToken</code></td>
<td><p>[required] A token used for optimistic locking. WAF returns a
token to your <code>get</code> and <code>list</code> requests, to mark
the state of the entity at the time of the request. To make changes to
the entity associated with the token, you provide the token to
operations like <code>update</code> and <code>delete</code>. WAF uses
the token to ensure that no changes have been made to the entity since
you last retrieved it. If a change has been made, the update fails with
a <code>WAFOptimisticLockException</code>. If this happens, perform
another <code>get</code>, and use the new token returned by that
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextWebACLLockToken = "string"
    )

### Request syntax

    svc$delete_firewall_manager_rule_groups(
      WebACLArn = "string",
      WebACLLockToken = "string"
    )
