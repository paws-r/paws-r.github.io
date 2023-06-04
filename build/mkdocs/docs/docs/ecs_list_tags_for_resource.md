<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the tags for an Amazon ECS resource

### Description

List the tags for an Amazon ECS resource.

### Usage

    ecs_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
resource to list the tags for. Currently, the supported resources are
Amazon ECS tasks, services, task definitions, clusters, and container
instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string"
    )

### Examples

    ## Not run: 
    # This example lists the tags for the 'dev' cluster.
    svc$list_tags_for_resource(
      resourceArn = "arn:aws:ecs:region:aws_account_id:cluster/dev"
    )

    ## End(Not run)
