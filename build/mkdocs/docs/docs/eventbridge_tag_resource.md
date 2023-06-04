<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns one or more tags (key-value pairs) to the specified EventBridge resource

### Description

Assigns one or more tags (key-value pairs) to the specified EventBridge
resource. Tags can help you organize and categorize your resources. You
can also use them to scope user permissions by granting a user
permission to access or change only resources with certain tag values.
In EventBridge, rules and event buses can be tagged.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can use the `tag_resource` action with a resource that already has
tags. If you specify a new tag key, this tag is appended to the list of
tags associated with the resource. If you specify a tag key that is
already associated with the resource, the new tag value that you specify
replaces the previous value for that tag.

You can associate as many as 50 tags with a resource.

### Usage

    eventbridge_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of the EventBridge resource that you're adding
tags to.</p></td>
</tr>
<tr class="even">
<td><code id="eventbridge_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The list of key-value pairs to associate with the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
