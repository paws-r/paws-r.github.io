<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_update_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the data access role used for vending access to the given (registered) resource in Lake Formation

### Description

Updates the data access role used for vending access to the given
(registered) resource in Lake Formation.

### Usage

    lakeformation_update_resource(RoleArn, ResourceArn, WithFederation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_update_resource_:_RoleArn">RoleArn</code></td>
<td><p>[required] The new role to use for the given resource registered
in Lake Formation.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_update_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The resource ARN.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_update_resource_:_WithFederation">WithFederation</code></td>
<td><p>Whether or not the resource is a federated resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_resource(
      RoleArn = "string",
      ResourceArn = "string",
      WithFederation = TRUE|FALSE
    )
