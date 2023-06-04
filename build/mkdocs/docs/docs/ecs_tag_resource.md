<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified tags to a resource with the specified resourceArn

### Description

Associates the specified tags to a resource with the specified
`resourceArn`. If existing tags on a resource aren't specified in the
request parameters, they aren't changed. When a resource is deleted, the
tags that are associated with that resource are deleted as well.

### Usage

    ecs_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to add
tags to. Currently, the supported resources are Amazon ECS capacity
providers, tasks, services, task definitions, clusters, and container
instances.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags to add to the resource. A tag is an array of
key-value pairs.</p>
<p>The following basic restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of tags per resource - 50</p></li>
<li><p>For each resource, each tag key must be unique, and each tag key
can have only one value.</p></li>
<li><p>Maximum key length - 128 Unicode characters in UTF-8</p></li>
<li><p>Maximum value length - 256 Unicode characters in UTF-8</p></li>
<li><p>If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _ :
/ @.</p></li>
<li><p>Tag keys and values are case-sensitive.</p></li>
<li><p>Do not use <code style="white-space: pre;">⁠aws:⁠</code>, <code
style="white-space: pre;">⁠AWS:⁠</code>, or any upper or lowercase
combination of such as a prefix for either keys or values as it is
reserved for Amazon Web Services use. You cannot edit or delete tag keys
or values with this prefix. Tags with this prefix do not count against
your tags per resource limit.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example tags the 'dev' cluster with key 'team' and value 'dev'.
    svc$tag_resource(
      resourceArn = "arn:aws:ecs:region:aws_account_id:cluster/dev",
      tags = list(
        list(
          key = "team",
          value = "dev"
        )
      )
    )

    ## End(Not run)
