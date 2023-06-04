<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## An API operation for adding one or more tags (key-value pairs) to a resource

### Description

An API operation for adding one or more tags (key-value pairs) to a
resource.

You can use the `tag_resource` operation with a resource that already
has tags. If you specify a new tag key for the resource, this tag is
appended to the list of tags associated with the resource. If you
specify a tag key that is already associated with the resource, the new
tag value you specify replaces the previous value for that tag.

Although the maximum number of array members is 200, user-tag maximum is
50. The remaining are reserved for Amazon Web Services use.

### Usage

    costexplorer_tag_resource(ResourceArn, ResourceTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource. For a
list of supported resources, see <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_tag_resource_:_ResourceTags">ResourceTags</code></td>
<td><p>[required] A list of tag key-value pairs to be added to the
resource.</p>
<p>Each tag consists of a key and a value, and each key must be unique
for the resource. The following restrictions apply to resource tags:</p>
<ul>
<li><p>Although the maximum number of array members is 200, you can
assign a maximum of 50 user-tags to one resource. The remaining are
reserved for Amazon Web Services use</p></li>
<li><p>The maximum length of a key is 128 characters</p></li>
<li><p>The maximum length of a value is 256 characters</p></li>
<li><p>Keys and values can only contain alphanumeric characters, spaces,
and any of the following: <code
style="white-space: pre;">⁠_.:/=+@-⁠</code></p></li>
<li><p>Keys and values are case sensitive</p></li>
<li><p>Keys and values are trimmed for any leading or trailing
whitespaces</p></li>
<li><p>Don’t use <code style="white-space: pre;">⁠aws:⁠</code> as a prefix
for your keys. This prefix is reserved for Amazon Web Services
use</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      ResourceTags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
