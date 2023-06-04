<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_delete_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Permanently deletes an Firewall Manager policy

### Description

Permanently deletes an Firewall Manager policy.

### Usage

    fms_delete_policy(PolicyId, DeleteAllPolicyResources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_delete_policy_:_PolicyId">PolicyId</code></td>
<td><p>[required] The ID of the policy that you want to delete. You can
retrieve this ID from <code>put_policy</code> and
<code>list_policies</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_delete_policy_:_DeleteAllPolicyResources">DeleteAllPolicyResources</code></td>
<td><p>If <code>True</code>, the request performs cleanup according to
the policy type.</p>
<p>For WAF and Shield Advanced policies, the cleanup does the
following:</p>
<ul>
<li><p>Deletes rule groups created by Firewall Manager</p></li>
<li><p>Removes web ACLs from in-scope resources</p></li>
<li><p>Deletes web ACLs that contain no rules or rule groups</p></li>
</ul>
<p>For security group policies, the cleanup does the following for each
security group in the policy:</p>
<ul>
<li><p>Disassociates the security group from in-scope resources</p></li>
<li><p>Deletes the security group if it was created through Firewall
Manager and if it's no longer associated with any resources through
another policy</p></li>
</ul>
<p>After the cleanup, in-scope resources are no longer protected by web
ACLs in this policy. Protection of out-of-scope resources remains
unchanged. Scope is determined by tags that you create and accounts that
you associate with the policy. When creating the policy, if you specify
that only resources in specific accounts or with specific tags are in
scope of the policy, those accounts and resources are handled by the
policy. All others are out of scope. If you don't specify tags or
accounts, all resources are in scope.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_policy(
      PolicyId = "string",
      DeleteAllPolicyResources = TRUE|FALSE
    )
