<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns one or more tags (key-value pairs) to the specified Amazon QuickSight resource

### Description

Assigns one or more tags (key-value pairs) to the specified Amazon
QuickSight resource.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions, by granting a user permission to
access or change only resources with certain tag values. You can use the
`tag_resource` operation with a resource that already has tags. If you
specify a new tag key for the resource, this tag is appended to the list
of tags associated with the resource. If you specify a tag key that is
already associated with the resource, the new tag value that you specify
replaces the previous value for that tag.

You can associate as many as 50 tags with a resource. Amazon QuickSight
supports tagging on data set, data source, dashboard, template, and
topic.

Tagging for Amazon QuickSight works in a similar way to tagging for
other Amazon Web Services services, except for the following:

-   You can't use tags to track costs for Amazon QuickSight. This isn't
    possible because you can't tag the resources that Amazon QuickSight
    costs are based on, for example Amazon QuickSight storage capacity
    (SPICE), number of users, type of users, and usage metrics.

-   Amazon QuickSight doesn't currently support the tag editor for
    Resource Groups.

### Usage

    quicksight_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to tag.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] Contains a map of the key-value pairs for the resource
tag or tags assigned to the resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
