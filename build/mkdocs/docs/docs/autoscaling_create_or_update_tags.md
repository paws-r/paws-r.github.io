<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_create_or_update_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates tags for the specified Auto Scaling group

### Description

Creates or updates tags for the specified Auto Scaling group.

When you specify a tag with a key that already exists, the operation
overwrites the previous tag definition, and you do not get an error
message.

For more information, see [Tag Auto Scaling groups and
instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_create_or_update_tags(Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="autoscaling_create_or_update_tags_:_Tags">Tags</code></td>
<td><p>[required] One or more tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_or_update_tags(
      Tags = list(
        list(
          ResourceId = "string",
          ResourceType = "string",
          Key = "string",
          Value = "string",
          PropagateAtLaunch = TRUE|FALSE
        )
      )
    )

### Examples

    ## Not run: 
    # This example adds two tags to the specified Auto Scaling group.
    svc$create_or_update_tags(
      Tags = list(
        list(
          Key = "Role",
          PropagateAtLaunch = TRUE,
          ResourceId = "my-auto-scaling-group",
          ResourceType = "auto-scaling-group",
          Value = "WebServer"
        ),
        list(
          Key = "Dept",
          PropagateAtLaunch = TRUE,
          ResourceId = "my-auto-scaling-group",
          ResourceType = "auto-scaling-group",
          Value = "Research"
        )
      )
    )

    ## End(Not run)
