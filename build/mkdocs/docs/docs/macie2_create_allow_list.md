<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_create_allow_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates and defines the settings for an allow list

### Description

Creates and defines the settings for an allow list.

### Usage

    macie2_create_allow_list(clientToken, criteria, description, name, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_create_allow_list_:_clientToken">clientToken</code></td>
<td><p>[required] A unique, case-sensitive token that you provide to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_create_allow_list_:_criteria">criteria</code></td>
<td><p>[required] The criteria that specify the text or text pattern to
ignore. The criteria can be the location and name of an S3 object that
lists specific text to ignore (s3WordsList), or a regular expression
(regex) that defines a text pattern to ignore.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_create_allow_list_:_description">description</code></td>
<td><p>A custom description of the allow list. The description can
contain as many as 512 characters.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_create_allow_list_:_name">name</code></td>
<td><p>[required] A custom name for the allow list. The name can contain
as many as 128 characters.</p></td>
</tr>
<tr class="odd">
<td><code id="macie2_create_allow_list_:_tags">tags</code></td>
<td><p>A map of key-value pairs that specifies the tags to associate
with the allow list.</p>
<p>An allow list can have a maximum of 50 tags. Each tag consists of a
tag key and an associated tag value. The maximum length of a tag key is
128 characters. The maximum length of a tag value is 256
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string",
      id = "string"
    )

### Request syntax

    svc$create_allow_list(
      clientToken = "string",
      criteria = list(
        regex = "string",
        s3WordsList = list(
          bucketName = "string",
          objectKey = "string"
        )
      ),
      description = "string",
      name = "string",
      tags = list(
        "string"
      )
    )
