<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags for an Batch resource

### Description

Lists the tags for an Batch resource. Batch resources that support tags
are compute environments, jobs, job definitions, job queues, and
scheduling policies. ARNs for child jobs of array and multi-node
parallel (MNP) jobs aren't supported.

### Usage

    batch_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
resource that tags are listed for. Batch resources that support tags are
compute environments, jobs, job definitions, job queues, and scheduling
policies. ARNs for child jobs of array and multi-node parallel (MNP)
jobs aren't supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string"
    )

### Examples

    ## Not run: 
    # This demonstrates calling the ListTagsForResource action.
    svc$list_tags_for_resource(
      resourceArn = "arn:aws:batch:us-east-1:123456789012:job-definition/sleep30:1"
    )

    ## End(Not run)
