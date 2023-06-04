<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_put_outcome</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates an outcome

### Description

Creates or updates an outcome.

### Usage

    frauddetector_put_outcome(name, description, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_put_outcome_:_name">name</code></td>
<td><p>[required] The name of the outcome.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_put_outcome_:_description">description</code></td>
<td><p>The outcome description.</p></td>
</tr>
<tr class="odd">
<td><code id="frauddetector_put_outcome_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_outcome(
      name = "string",
      description = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
