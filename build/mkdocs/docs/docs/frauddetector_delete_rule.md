<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the rule

### Description

Deletes the rule. You cannot delete a rule if it is used by an `ACTIVE`
or `INACTIVE` detector version.

When you delete a rule, Amazon Fraud Detector permanently deletes that
rule and the data is no longer stored in Amazon Fraud Detector.

### Usage

    frauddetector_delete_rule(rule)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_delete_rule_:_rule">rule</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_rule(
      rule = list(
        detectorId = "string",
        ruleId = "string",
        ruleVersion = "string"
      )
    )
