<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified tags to a resource with the specified resourceArn

### Description

Associates the specified tags to a resource with the specified
`resourceArn`. If existing tags on a resource are not specified in the
request parameters, they are not changed. When a resource is deleted,
the tags associated with that resource are also deleted.

### Usage

    forecastservice_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
resource for which to list the tags.</p></td>
</tr>
<tr class="even">
<td><code id="forecastservice_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to add to the resource. A tag is an array of
key-value pairs.</p>
<p>The following basic restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of tags per resource - 50.</p></li>
<li><p>For each resource, each tag key must be unique, and each tag key
can have only one value.</p></li>
<li><p>Maximum key length - 128 Unicode characters in UTF-8.</p></li>
<li><p>Maximum value length - 256 Unicode characters in UTF-8.</p></li>
<li><p>If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _ :
/ @.</p></li>
<li><p>Tag keys and values are case sensitive.</p></li>
<li><p>Do not use <code style="white-space: pre;">⁠aws:⁠</code>, <code
style="white-space: pre;">⁠AWS:⁠</code>, or any upper or lowercase
combination of such as a prefix for keys as it is reserved for Amazon
Web Services use. You cannot edit or delete tag keys with this prefix.
Values can have this prefix. If a tag value has <code>aws</code> as its
prefix but the key does not, then Forecast considers it to be a user tag
and will count against the limit of 50 tags. Tags with only the key
prefix of <code>aws</code> do not count against your tags per resource
limit.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

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
