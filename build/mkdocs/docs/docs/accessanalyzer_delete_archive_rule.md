<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_delete_archive_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified archive rule

### Description

Deletes the specified archive rule.

### Usage

    accessanalyzer_delete_archive_rule(analyzerName, ruleName, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_delete_archive_rule_:_analyzerName">analyzerName</code></td>
<td><p>[required] The name of the analyzer that associated with the
archive rule to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_delete_archive_rule_:_ruleName">ruleName</code></td>
<td><p>[required] The name of the rule to delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_delete_archive_rule_:_clientToken">clientToken</code></td>
<td><p>A client token.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_archive_rule(
      analyzerName = "string",
      ruleName = "string",
      clientToken = "string"
    )
