<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_tag</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to a resource group with the specified ARN

### Description

Adds tags to a resource group with the specified ARN. Existing tags on a
resource group are not changed if they are not specified in the request
parameters.

Do not store personally identifiable information (PII) or other
confidential or sensitive information in tags. We use tags to provide
you with billing and administration services. Tags are not intended to
be used for private or sensitive data.

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:Tag`

### Usage

    resourcegroups_tag(Arn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resourcegroups_tag_:_Arn">Arn</code></td>
<td><p>[required] The ARN of the resource group to which to add
tags.</p></td>
</tr>
<tr class="even">
<td><code id="resourcegroups_tag_:_Tags">Tags</code></td>
<td><p>[required] The tags to add to the specified resource group. A tag
is a string-to-string map of key-value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$tag(
      Arn = "string",
      Tags = list(
        "string"
      )
    )
