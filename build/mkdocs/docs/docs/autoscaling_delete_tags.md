<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_delete_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified tags

### Description

Deletes the specified tags.

### Usage

    autoscaling_delete_tags(Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="autoscaling_delete_tags_:_Tags">Tags</code></td>
<td><p>[required] One or more tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_tags(
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
    # This example deletes the specified tag from the specified Auto Scaling
    # group.
    svc$delete_tags(
      Tags = list(
        list(
          Key = "Dept",
          ResourceId = "my-auto-scaling-group",
          ResourceType = "auto-scaling-group",
          Value = "Research"
        )
      )
    )

    ## End(Not run)
