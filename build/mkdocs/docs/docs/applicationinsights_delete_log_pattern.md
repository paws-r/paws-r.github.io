<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_delete_log_pattern</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified log pattern from a LogPatternSet

### Description

Removes the specified log pattern from a `LogPatternSet`.

### Usage

    applicationinsights_delete_log_pattern(ResourceGroupName,
      PatternSetName, PatternName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_delete_log_pattern_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_delete_log_pattern_:_PatternSetName">PatternSetName</code></td>
<td><p>[required] The name of the log pattern set.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_delete_log_pattern_:_PatternName">PatternName</code></td>
<td><p>[required] The name of the log pattern.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_log_pattern(
      ResourceGroupName = "string",
      PatternSetName = "string",
      PatternName = "string"
    )
