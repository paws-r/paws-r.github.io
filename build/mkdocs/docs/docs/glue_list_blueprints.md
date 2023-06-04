<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_blueprints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the blueprint names in an account

### Description

Lists all the blueprint names in an account.

### Usage

    glue_list_blueprints(NextToken, MaxResults, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_list_blueprints_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation request.</p></td>
</tr>
<tr class="even">
<td><code id="glue_list_blueprints_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of a list to return.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_list_blueprints_:_Tags">Tags</code></td>
<td><p>Filters the list by an Amazon Web Services resource tag.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Blueprints = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_blueprints(
      NextToken = "string",
      MaxResults = 123,
      Tags = list(
        "string"
      )
    )
