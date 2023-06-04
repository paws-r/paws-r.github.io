<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_create_analyzer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an analyzer for your account

### Description

Creates an analyzer for your account.

### Usage

    accessanalyzer_create_analyzer(analyzerName, type, archiveRules, tags,
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
id="accessanalyzer_create_analyzer_:_analyzerName">analyzerName</code></td>
<td><p>[required] The name of the analyzer to create.</p></td>
</tr>
<tr class="even">
<td><code id="accessanalyzer_create_analyzer_:_type">type</code></td>
<td><p>[required] The type of analyzer to create. Only ACCOUNT and
ORGANIZATION analyzers are supported. You can create only one analyzer
per account per Region. You can create up to 5 analyzers per
organization per Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_create_analyzer_:_archiveRules">archiveRules</code></td>
<td><p>Specifies the archive rules to add for the analyzer. Archive
rules automatically archive findings that meet the criteria you define
for the rule.</p></td>
</tr>
<tr class="even">
<td><code id="accessanalyzer_create_analyzer_:_tags">tags</code></td>
<td><p>The tags to apply to the analyzer.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_create_analyzer_:_clientToken">clientToken</code></td>
<td><p>A client token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string"
    )

### Request syntax

    svc$create_analyzer(
      analyzerName = "string",
      type = "ACCOUNT"|"ORGANIZATION",
      archiveRules = list(
        list(
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
          )
        )
      ),
      tags = list(
        "string"
      ),
      clientToken = "string"
    )
