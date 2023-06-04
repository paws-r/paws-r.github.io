<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_register_organization_delegated_admin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers an organization’s member account as the CloudTrail delegated administrator

### Description

Registers an organization’s member account as the CloudTrail delegated
administrator.

### Usage

    cloudtrail_register_organization_delegated_admin(MemberAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_register_organization_delegated_admin_:_MemberAccountId">MemberAccountId</code></td>
<td><p>[required] An organization member account ID that you want to
designate as a delegated administrator.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_organization_delegated_admin(
      MemberAccountId = "string"
    )
