<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_delete_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one or more custom attributes from an Amazon ECS resource

### Description

Deletes one or more custom attributes from an Amazon ECS resource.

### Usage

    ecs_delete_attributes(cluster, attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_delete_attributes_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that contains the resource to delete attributes. If you do not specify a
cluster, the default cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_delete_attributes_:_attributes">attributes</code></td>
<td><p>[required] The attributes to delete from your resource. You can
specify up to 10 attributes for each request. For custom attributes,
specify the attribute name and target ID, but don't specify the value.
If you specify the target ID using the short form, you must also specify
the target type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      attributes = list(
        list(
          name = "string",
          value = "string",
          targetType = "container-instance",
          targetId = "string"
        )
      )
    )

### Request syntax

    svc$delete_attributes(
      cluster = "string",
      attributes = list(
        list(
          name = "string",
          value = "string",
          targetType = "container-instance",
          targetId = "string"
        )
      )
    )
