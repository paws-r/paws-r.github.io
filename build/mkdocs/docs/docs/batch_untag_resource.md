<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes specified tags from an Batch resource

### Description

Deletes specified tags from an Batch resource.

### Usage

    batch_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource from
which to delete tags. Batch resources that support tags are compute
environments, jobs, job definitions, job queues, and scheduling
policies. ARNs for child jobs of array and multi-node parallel (MNP)
jobs aren't supported.</p></td>
</tr>
<tr class="even">
<td><code id="batch_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The keys of the tags to be removed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This demonstrates calling the UntagResource action.
    svc$untag_resource(
      resourceArn = "arn:aws:batch:us-east-1:123456789012:job-definition/sleep30:1",
      tagKeys = list(
        "Stage"
      )
    )

    ## End(Not run)
