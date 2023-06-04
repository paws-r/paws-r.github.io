<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_update_rule_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a rule version resulting in a new rule version

### Description

Updates a rule version resulting in a new rule version. Updates a rule
version resulting in a new rule version (version 1, 2, 3 ...).

### Usage

    frauddetector_update_rule_version(rule, description, expression,
      language, outcomes, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_update_rule_version_:_rule">rule</code></td>
<td><p>[required] The rule to update.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_rule_version_:_description">description</code></td>
<td><p>The description.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_rule_version_:_expression">expression</code></td>
<td><p>[required] The rule expression.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_rule_version_:_language">language</code></td>
<td><p>[required] The language.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_rule_version_:_outcomes">outcomes</code></td>
<td><p>[required] The outcomes.</p></td>
</tr>
<tr class="even">
<td><code id="frauddetector_update_rule_version_:_tags">tags</code></td>
<td><p>The tags to assign to the rule version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      rule = list(
        detectorId = "string",
        ruleId = "string",
        ruleVersion = "string"
      )
    )

### Request syntax

    svc$update_rule_version(
      rule = list(
        detectorId = "string",
        ruleId = "string",
        ruleVersion = "string"
      ),
      description = "string",
      expression = "string",
      language = "DETECTORPL",
      outcomes = list(
        "string"
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
