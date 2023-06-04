<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_get_archive_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about an archive rule

### Description

Retrieves information about an archive rule.

To learn about filter keys that you can use to create an archive rule,
see [IAM Access Analyzer filter
keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
in the **IAM User Guide**.

### Usage

    accessanalyzer_get_archive_rule(analyzerName, ruleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_get_archive_rule_:_analyzerName">analyzerName</code></td>
<td><p>[required] The name of the analyzer to retrieve rules
from.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_get_archive_rule_:_ruleName">ruleName</code></td>
<td><p>[required] The name of the rule to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      archiveRule = list(
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
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_archive_rule(
      analyzerName = "string",
      ruleName = "string"
    )
