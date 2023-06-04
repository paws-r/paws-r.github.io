<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_put_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create or update an attribute on an Amazon ECS resource

### Description

Create or update an attribute on an Amazon ECS resource. If the
attribute doesn't exist, it's created. If the attribute exists, its
value is replaced with the specified value. To delete an attribute, use
`delete_attributes`. For more information, see
[Attributes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_put_attributes(cluster, attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_put_attributes_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that contains the resource to apply attributes. If you do not specify a
cluster, the default cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_put_attributes_:_attributes">attributes</code></td>
<td><p>[required] The attributes to apply to your resource. You can
specify up to 10 custom attributes for each resource. You can specify up
to 10 attributes in a single call.</p></td>
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

    svc$put_attributes(
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
