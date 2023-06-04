<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_create_archive_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an archive rule for the specified analyzer

### Description

Creates an archive rule for the specified analyzer. Archive rules
automatically archive new findings that meet the criteria you define
when you create the rule.

To learn about filter keys that you can use to create an archive rule,
see [IAM Access Analyzer filter
keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
in the **IAM User Guide**.

### Usage

    accessanalyzer_create_archive_rule(analyzerName, ruleName, filter,
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
id="accessanalyzer_create_archive_rule_:_analyzerName">analyzerName</code></td>
<td><p>[required] The name of the created analyzer.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_create_archive_rule_:_ruleName">ruleName</code></td>
<td><p>[required] The name of the rule to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_create_archive_rule_:_filter">filter</code></td>
<td><p>[required] The criteria for the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_create_archive_rule_:_clientToken">clientToken</code></td>
<td><p>A client token.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_archive_rule(
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
