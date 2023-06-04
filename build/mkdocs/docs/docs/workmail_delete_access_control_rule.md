<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_access_control_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an access control rule for the specified WorkMail organization

### Description

Deletes an access control rule for the specified WorkMail organization.

Deleting already deleted and non-existing rules does not produce an
error. In those cases, the service sends back an HTTP 200 response with
an empty HTTP body.

### Usage

    workmail_delete_access_control_rule(OrganizationId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_access_control_rule_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_delete_access_control_rule_:_Name">Name</code></td>
<td><p>[required] The name of the access control rule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_access_control_rule(
      OrganizationId = "string",
      Name = "string"
    )
