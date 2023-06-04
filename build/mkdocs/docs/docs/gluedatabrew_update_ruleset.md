<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_update_ruleset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates specified ruleset

### Description

Updates specified ruleset.

### Usage

    gluedatabrew_update_ruleset(Name, Description, Rules)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_update_ruleset_:_Name">Name</code></td>
<td><p>[required] The name of the ruleset to be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_update_ruleset_:_Description">Description</code></td>
<td><p>The description of the ruleset.</p></td>
</tr>
<tr class="odd">
<td><code id="gluedatabrew_update_ruleset_:_Rules">Rules</code></td>
<td><p>[required] A list of rules that are defined with the ruleset. A
rule includes one or more checks to be validated on a DataBrew
dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$update_ruleset(
      Name = "string",
      Description = "string",
      Rules = list(
        list(
          Name = "string",
          Disabled = TRUE|FALSE,
          CheckExpression = "string",
          SubstitutionMap = list(
            "string"
          ),
          Threshold = list(
            Value = 123.0,
            Type = "GREATER_THAN_OR_EQUAL"|"LESS_THAN_OR_EQUAL"|"GREATER_THAN"|"LESS_THAN",
            Unit = "COUNT"|"PERCENTAGE"
          ),
          ColumnSelectors = list(
            list(
              Regex = "string",
              Name = "string"
            )
          )
        )
      )
    )
