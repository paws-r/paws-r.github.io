<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_update_allow_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the settings for an allow list

### Description

Updates the settings for an allow list.

### Usage

    macie2_update_allow_list(criteria, description, id, name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_update_allow_list_:_criteria">criteria</code></td>
<td><p>[required] The criteria that specify the text or text pattern to
ignore. The criteria can be the location and name of an S3 object that
lists specific text to ignore (s3WordsList), or a regular expression
that defines a text pattern to ignore (regex).</p>
<p>You can change a list's underlying criteria, such as the name of the
S3 object or the regular expression to use. However, you can't change
the type from s3WordsList to regex or the other way around.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_update_allow_list_:_description">description</code></td>
<td><p>A custom description of the allow list. The description can
contain as many as 512 characters.</p></td>
</tr>
<tr class="odd">
<td><code id="macie2_update_allow_list_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_update_allow_list_:_name">name</code></td>
<td><p>[required] A custom name for the allow list. The name can contain
as many as 128 characters.</p></td>
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

    svc$update_allow_list(
      criteria = list(
        regex = "string",
        s3WordsList = list(
          bucketName = "string",
          objectKey = "string"
        )
      ),
      description = "string",
      id = "string",
      name = "string"
    )
