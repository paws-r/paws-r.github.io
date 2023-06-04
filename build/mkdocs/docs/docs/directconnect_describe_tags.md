<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the tags associated with the specified Direct Connect resources

### Description

Describes the tags associated with the specified Direct Connect
resources.

### Usage

    directconnect_describe_tags(resourceArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_describe_tags_:_resourceArns">resourceArns</code></td>
<td><p>[required] The Amazon Resource Names (ARNs) of the
resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceTags = list(
        list(
          resourceArn = "string",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_tags(
      resourceArns = list(
        "string"
      )
    )
