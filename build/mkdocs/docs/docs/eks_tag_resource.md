<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified tags to a resource with the specified resourceArn

### Description

Associates the specified tags to a resource with the specified
`resourceArn`. If existing tags on a resource are not specified in the
request parameters, they are not changed. When a resource is deleted,
the tags associated with that resource are deleted as well. Tags that
you create for Amazon EKS resources do not propagate to any other
resources associated with the cluster. For example, if you tag a cluster
with this operation, that tag does not automatically propagate to the
subnets and nodes associated with the cluster.

### Usage

    eks_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
which to add tags. Currently, the supported resources are Amazon EKS
clusters and managed node groups.</p></td>
</tr>
<tr class="even">
<td><code id="eks_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags to add to the resource. A tag is an array of
key-value pairs.</p></td>
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
