<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add tags to the specified Amazon SNS topic

### Description

Add tags to the specified Amazon SNS topic. For an overview, see [Amazon
SNS Tags](https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html) in
the *Amazon SNS Developer Guide*.

When you use topic tags, keep the following guidelines in mind:

-   Adding more than 50 tags to a topic isn't recommended.

-   Tags don't have any semantic meaning. Amazon SNS interprets tags as
    character strings.

-   Tags are case-sensitive.

-   A new tag with a key identical to that of an existing tag overwrites
    the existing tag.

-   Tagging actions are limited to 10 TPS per Amazon Web Services
    account, per Amazon Web Services Region. If your application
    requires a higher throughput, file a technical support request.

### Usage

    sns_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the topic to which to add tags.</p></td>
</tr>
<tr class="even">
<td><code id="sns_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to be added to the specified topic. A tag
consists of a required key and an optional value.</p></td>
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
