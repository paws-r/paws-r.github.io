<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_create_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a rule for use with the specified detector

### Description

Creates a rule for use with the specified detector.

### Usage

    frauddetector_create_rule(ruleId, detectorId, description, expression,
      language, outcomes, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_create_rule_:_ruleId">ruleId</code></td>
<td><p>[required] The rule ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_rule_:_detectorId">detectorId</code></td>
<td><p>[required] The detector ID for the rule's parent
detector.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_rule_:_description">description</code></td>
<td><p>The rule description.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_rule_:_expression">expression</code></td>
<td><p>[required] The rule expression.</p></td>
</tr>
<tr class="odd">
<td><code id="frauddetector_create_rule_:_language">language</code></td>
<td><p>[required] The language of the rule.</p></td>
</tr>
<tr class="even">
<td><code id="frauddetector_create_rule_:_outcomes">outcomes</code></td>
<td><p>[required] The outcome or outcomes returned when the rule
expression matches.</p></td>
</tr>
<tr class="odd">
<td><code id="frauddetector_create_rule_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
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

    svc$create_rule(
      ruleId = "string",
      detectorId = "string",
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
