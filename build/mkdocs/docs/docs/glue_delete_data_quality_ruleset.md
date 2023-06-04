<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_data_quality_ruleset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a data quality ruleset

### Description

Deletes a data quality ruleset.

### Usage

    glue_delete_data_quality_ruleset(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_data_quality_ruleset_:_Name">Name</code></td>
<td><p>[required] A name for the data quality ruleset.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_data_quality_ruleset(
      Name = "string"
    )
