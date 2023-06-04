<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_update_rule_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a rule's metadata

### Description

Updates a rule's metadata. The description attribute can be updated.

### Usage

    frauddetector_update_rule_metadata(rule, description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_update_rule_metadata_:_rule">rule</code></td>
<td><p>[required] The rule to update.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_rule_metadata_:_description">description</code></td>
<td><p>[required] The rule description.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_rule_metadata(
      rule = list(
        detectorId = "string",
        ruleId = "string",
        ruleVersion = "string"
      ),
      description = "string"
    )
