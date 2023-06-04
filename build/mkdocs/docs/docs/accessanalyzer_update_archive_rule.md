<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_update_archive_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the criteria and values for the specified archive rule

### Description

Updates the criteria and values for the specified archive rule.

### Usage

    accessanalyzer_update_archive_rule(analyzerName, ruleName, filter,
      clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_update_archive_rule_:_analyzerName">analyzerName</code></td>
<td><p>[required] The name of the analyzer to update the archive rules
for.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_update_archive_rule_:_ruleName">ruleName</code></td>
<td><p>[required] The name of the rule to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_update_archive_rule_:_filter">filter</code></td>
<td><p>[required] A filter to match for the rules to update. Only rules
that match the filter are updated.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_update_archive_rule_:_clientToken">clientToken</code></td>
<td><p>A client token.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_archive_rule(
      analyzerName = "string",
      ruleName = "string",
      filter = list(
        list(
          eq = list(
            "string"
          ),
          neq = list(
            "string"
          ),
          contains = list(
            "string"
          ),
          exists = TRUE|FALSE
        )
      ),
      clientToken = "string"
    )
