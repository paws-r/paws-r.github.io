<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the tags for an Amazon EKS resource

### Description

List the tags for an Amazon EKS resource.

### Usage

    eks_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
resource for which to list the tags. Currently, the supported resources
are Amazon EKS clusters and managed node groups.</p></td>
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
    # This example lists all of the tags for the `beta` cluster.
    svc$list_tags_for_resource(
      resourceArn = "arn:aws:eks:us-west-2:012345678910:cluster/beta"
    )

    ## End(Not run)
