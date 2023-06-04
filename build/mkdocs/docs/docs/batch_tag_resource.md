<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified tags to a resource with the specified resourceArn

### Description

Associates the specified tags to a resource with the specified
`resourceArn`. If existing tags on a resource aren't specified in the
request parameters, they aren't changed. When a resource is deleted, the
tags that are associated with that resource are deleted as well. Batch
resources that support tags are compute environments, jobs, job
definitions, job queues, and scheduling policies. ARNs for child jobs of
array and multi-node parallel (MNP) jobs aren't supported.

### Usage

    batch_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
tags are added to. Batch resources that support tags are compute
environments, jobs, job definitions, job queues, and scheduling
policies. ARNs for child jobs of array and multi-node parallel (MNP)
jobs aren't supported.</p></td>
</tr>
<tr class="even">
<td><code id="batch_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags that you apply to the resource to help you
categorize and organize your resources. Each tag consists of a key and
an optional value. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a> in <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This demonstrates calling the TagResource action.
    svc$tag_resource(
      resourceArn = "arn:aws:batch:us-east-1:123456789012:job-definition/sleep30:1",
      tags = list(
        Stage = "Alpha"
      )
    )

    ## End(Not run)
