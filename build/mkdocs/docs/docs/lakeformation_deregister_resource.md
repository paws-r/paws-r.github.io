<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_deregister_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters the resource as managed by the Data Catalog

### Description

Deregisters the resource as managed by the Data Catalog.

When you deregister a path, Lake Formation removes the path from the
inline policy attached to your service-linked role.

### Usage

    lakeformation_deregister_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_deregister_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to deregister.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_resource(
      ResourceArn = "string"
    )
